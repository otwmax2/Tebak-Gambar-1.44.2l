package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzxv extends Surface {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static int f21066r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f21067s;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f21068o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzxt f21069p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f21070q;

    /* synthetic */ zzxv(zzxt zzxtVar, SurfaceTexture surfaceTexture, boolean z10, zzxu zzxuVar) {
        super(surfaceTexture);
        this.f21069p = zzxtVar;
        this.f21068o = z10;
    }

    public static zzxv h(Context context, boolean z10) {
        boolean z11 = true;
        if (z10 && !t(context)) {
            z11 = false;
        }
        zzdl.f(z11);
        return new zzxt().a(z10 ? f21066r : 0);
    }

    public static synchronized boolean t(Context context) {
        String strEglQueryString;
        if (!f21067s) {
            int i10 = zzew.f17494a;
            int i11 = 2;
            if (i10 >= 24 && ((i10 >= 26 || !("samsung".equals(zzew.f17496c) || "XT1650".equals(zzew.f17497d))) && ((i10 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_EXT_protected_content")))) {
                String strEglQueryString2 = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                if (strEglQueryString2 != null && strEglQueryString2.contains("EGL_KHR_surfaceless_context")) {
                    i11 = 1;
                }
            } else {
                i11 = 0;
            }
            f21066r = i11;
            f21067s = true;
        }
        return f21066r != 0;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f21069p) {
            if (!this.f21070q) {
                this.f21069p.b();
                this.f21070q = true;
            }
        }
    }
}
