package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaqy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f9767a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f9768b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f9769c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f9770d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f9771e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f9772f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f9773g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f9774h = -1;

    private static DisplayMetrics l(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            defaultDisplay.getRealMetrics(displayMetrics);
        } catch (NoSuchMethodError unused) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return displayMetrics;
    }

    private static boolean m(View view) {
        try {
            if (view.getClass().getName().contains("DebugGestureViewWrapper")) {
                view = ((ViewGroup) view).getChildAt(0);
            }
            Object objInvoke = view.getClass().getMethod("getAdConfiguration", new Class[0]).invoke(view, new Object[0]);
            String str = (String) objInvoke.getClass().getMethod("adTypeToString", Integer.TYPE).invoke(null, Integer.valueOf(((Integer) objInvoke.getClass().getField("adType").get(objInvoke)).intValue()));
            if (!str.contains("INTERSTITIAL") && !str.contains("APP_OPEN")) {
                if (!str.contains("REWARDED")) {
                    return false;
                }
            }
            return true;
        } catch (ReflectiveOperationException | SecurityException unused) {
            return false;
        }
    }

    public final long a() {
        return this.f9773g;
    }

    public final long b() {
        return this.f9771e;
    }

    public final long c() {
        return this.f9767a;
    }

    public final long d() {
        return this.f9769c;
    }

    public final long e() {
        return this.f9774h;
    }

    public final long f() {
        return this.f9772f;
    }

    public final long g() {
        return this.f9768b;
    }

    public final long h() {
        return this.f9770d;
    }

    public final void i() {
        this.f9774h = this.f9773g;
        this.f9773g = SystemClock.uptimeMillis();
    }

    public final void j() {
        this.f9768b = this.f9767a;
        this.f9767a = SystemClock.uptimeMillis();
    }

    public final void k(Context context, View view) {
        this.f9770d = this.f9769c;
        this.f9769c = SystemClock.uptimeMillis();
        long j10 = this.f9771e;
        if (j10 != -1) {
            this.f9772f = j10;
        }
        DisplayMetrics displayMetricsL = l(context);
        int i10 = displayMetricsL.widthPixels * displayMetricsL.heightPixels;
        if (view != null) {
            int iMin = Math.min(view.getWidth(), displayMetricsL.widthPixels) * Math.min(view.getHeight(), displayMetricsL.heightPixels);
            if (iMin + iMin >= i10 || (iMin == 0 && m(view))) {
                this.f9771e = this.f9769c;
                return;
            }
        }
        this.f9771e = -1L;
    }
}
