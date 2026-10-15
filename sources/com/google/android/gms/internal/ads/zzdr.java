package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Handler;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdr implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int[] f15421u = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Handler f15422o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int[] f15423p = new int[1];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private EGLDisplay f15424q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private EGLContext f15425r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private EGLSurface f15426s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private SurfaceTexture f15427t;

    public zzdr(Handler handler, zzdq zzdqVar) {
        this.f15422o = handler;
    }

    public final SurfaceTexture a() {
        SurfaceTexture surfaceTexture = this.f15427t;
        Objects.requireNonNull(surfaceTexture);
        return surfaceTexture;
    }

    public final void b(int i10) throws zzds {
        EGLSurface eGLSurfaceEglCreatePbufferSurface;
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        zzdt.a(eGLDisplayEglGetDisplay != null, "eglGetDisplay failed");
        int[] iArr = new int[2];
        zzdt.a(EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1), "eglInitialize failed");
        this.f15424q = eGLDisplayEglGetDisplay;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr2 = new int[1];
        boolean zEglChooseConfig = EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, f15421u, 0, eGLConfigArr, 0, 1, iArr2, 0);
        zzdt.a(zEglChooseConfig && iArr2[0] > 0 && eGLConfigArr[0] != null, zzew.i("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(zEglChooseConfig), Integer.valueOf(iArr2[0]), eGLConfigArr[0]));
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.f15424q, eGLConfig, EGL14.EGL_NO_CONTEXT, i10 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        zzdt.a(eGLContextEglCreateContext != null, "eglCreateContext failed");
        this.f15425r = eGLContextEglCreateContext;
        EGLDisplay eGLDisplay = this.f15424q;
        if (i10 == 1) {
            eGLSurfaceEglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i10 == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            zzdt.a(eGLSurfaceEglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
        }
        zzdt.a(EGL14.eglMakeCurrent(eGLDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext), "eglMakeCurrent failed");
        this.f15426s = eGLSurfaceEglCreatePbufferSurface;
        GLES20.glGenTextures(1, this.f15423p, 0);
        StringBuilder sb = new StringBuilder();
        boolean z10 = false;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            if (z10) {
                sb.append('\n');
            }
            sb.append("glError: ");
            sb.append(GLU.gluErrorString(iGlGetError));
            z10 = true;
        }
        if (z10) {
            throw new zzds(sb.toString());
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f15423p[0]);
        this.f15427t = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    public final void c() {
        this.f15422o.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f15427t;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f15423p, 0);
            }
            EGLDisplay eGLDisplay = this.f15424q;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f15424q;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f15426s;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f15424q, this.f15426s);
            }
            EGLContext eGLContext = this.f15425r;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f15424q, eGLContext);
            }
            int i10 = zzew.f17494a;
            EGL14.eglReleaseThread();
            EGLDisplay eGLDisplay3 = this.f15424q;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f15424q);
            }
            this.f15424q = null;
            this.f15425r = null;
            this.f15426s = null;
            this.f15427t = null;
        } catch (Throwable th) {
            EGLDisplay eGLDisplay4 = this.f15424q;
            if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay5 = this.f15424q;
                EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface4 = this.f15426s;
            if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f15424q, this.f15426s);
            }
            EGLContext eGLContext2 = this.f15425r;
            if (eGLContext2 != null) {
                EGL14.eglDestroyContext(this.f15424q, eGLContext2);
            }
            int i11 = zzew.f17494a;
            EGL14.eglReleaseThread();
            EGLDisplay eGLDisplay6 = this.f15424q;
            if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f15424q);
            }
            this.f15424q = null;
            this.f15425r = null;
            this.f15426s = null;
            this.f15427t = null;
            throw th;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f15422o.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f15427t;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }
}
