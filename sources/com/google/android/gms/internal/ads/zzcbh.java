package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.util.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcbh extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzcbf {
    private static final float[] P = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private int A;
    private SurfaceTexture B;
    private SurfaceTexture C;
    private int D;
    private int E;
    private int F;
    private final FloatBuffer G;
    private final CountDownLatch H;
    private final Object I;
    private EGL10 J;
    private EGLDisplay K;
    private EGLContext L;
    private EGLSurface M;
    private volatile boolean N;
    private volatile boolean O;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcbg f11714o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float[] f11715p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final float[] f11716q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final float[] f11717r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final float[] f11718s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final float[] f11719t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final float[] f11720u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final float[] f11721v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f11722w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f11723x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f11724y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f11725z;

    public zzcbh(Context context) {
        super("SphericalVideoProcessor");
        float[] fArr = P;
        int length = fArr.length;
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.G = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(fArr).position(0);
        this.f11715p = new float[9];
        this.f11716q = new float[9];
        this.f11717r = new float[9];
        this.f11718s = new float[9];
        this.f11719t = new float[9];
        this.f11720u = new float[9];
        this.f11721v = new float[9];
        this.f11722w = Float.NaN;
        zzcbg zzcbgVar = new zzcbg(context);
        this.f11714o = zzcbgVar;
        zzcbgVar.a(this);
        this.H = new CountDownLatch(1);
        this.I = new Object();
    }

    private static final void g(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            Log.e("SphericalVideoRenderer", str + ": glError " + iGlGetError);
        }
    }

    private static final void h(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    private static final void i(float[] fArr, float f10) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d10 = f10;
        fArr[4] = (float) Math.cos(d10);
        fArr[5] = (float) (-Math.sin(d10));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d10);
        fArr[8] = (float) Math.cos(d10);
    }

    private static final void j(float[] fArr, float f10) {
        double d10 = f10;
        fArr[0] = (float) Math.cos(d10);
        fArr[1] = (float) (-Math.sin(d10));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d10);
        fArr[4] = (float) Math.cos(d10);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static final int k(int i10, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i10);
        g("createShader");
        if (iGlCreateShader != 0) {
            GLES20.glShaderSource(iGlCreateShader, str);
            g("shaderSource");
            GLES20.glCompileShader(iGlCreateShader);
            g("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            g("getShaderiv");
            if (iArr[0] == 0) {
                Log.e("SphericalVideoRenderer", "Could not compile shader " + i10 + CertificateUtil.DELIMITER);
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(iGlCreateShader));
                GLES20.glDeleteShader(iGlCreateShader);
                g("deleteShader");
                return 0;
            }
        }
        return iGlCreateShader;
    }

    public final SurfaceTexture a() {
        if (this.C == null) {
            return null;
        }
        try {
            this.H.await();
        } catch (InterruptedException unused) {
        }
        return this.B;
    }

    public final void b(int i10, int i11) {
        synchronized (this.I) {
            this.A = i10;
            this.f11725z = i11;
            this.N = true;
            this.I.notifyAll();
        }
    }

    public final void c(SurfaceTexture surfaceTexture, int i10, int i11) {
        this.A = i10;
        this.f11725z = i11;
        this.C = surfaceTexture;
    }

    public final void d() {
        synchronized (this.I) {
            this.O = true;
            this.C = null;
            this.I.notifyAll();
        }
    }

    public final void e(float f10, float f11) {
        int i10 = this.A;
        int i11 = this.f11725z;
        float f12 = f10 * 1.7453293f;
        float f13 = f11 * 1.7453293f;
        float f14 = i10 > i11 ? i10 : i11;
        this.f11723x -= f12 / f14;
        float f15 = this.f11724y - (f13 / f14);
        this.f11724y = f15;
        if (f15 < -1.5707964f) {
            this.f11724y = -1.5707964f;
            f15 = -1.5707964f;
        }
        if (f15 > 1.5707964f) {
            this.f11724y = 1.5707964f;
        }
    }

    @VisibleForTesting
    final boolean f() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.M;
        boolean zEglDestroyContext = false;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            zEglDestroyContext = this.J.eglDestroySurface(this.K, this.M) | this.J.eglMakeCurrent(this.K, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            this.M = null;
        }
        EGLContext eGLContext = this.L;
        if (eGLContext != null) {
            zEglDestroyContext |= this.J.eglDestroyContext(this.K, eGLContext);
            this.L = null;
        }
        EGLDisplay eGLDisplay = this.K;
        if (eGLDisplay == null) {
            return zEglDestroyContext;
        }
        boolean zEglTerminate = this.J.eglTerminate(eGLDisplay) | zEglDestroyContext;
        this.K = null;
        return zEglTerminate;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.F++;
        synchronized (this.I) {
            this.I.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 992
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcbh.run():void");
    }

    @Override // com.google.android.gms.internal.ads.zzcbf
    public final void zza() {
        synchronized (this.I) {
            this.I.notifyAll();
        }
    }
}
