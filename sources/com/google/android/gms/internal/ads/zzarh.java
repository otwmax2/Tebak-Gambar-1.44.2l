package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarh {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f9810e = {"android:establish_vpn_service", "android:establish_vpn_manager"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f9811a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f9812b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f9813c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9814d = false;

    zzarh(Context context, Executor executor, String[] strArr) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        try {
            ((AppOpsManager) context.getSystemService("appops")).startWatchingActive(strArr, executor, new zzarg(this));
        } catch (IllegalArgumentException | NoSuchMethodError unused) {
        }
    }

    public static zzarh d(Context context, Executor executor) {
        return new zzarh(context, executor, f9810e);
    }

    public final long b() {
        long j10 = this.f9813c;
        this.f9813c = -1L;
        return j10;
    }

    public final long c() {
        if (this.f9814d) {
            return this.f9812b - this.f9811a;
        }
        return -1L;
    }

    public final void h() {
        if (this.f9814d) {
            this.f9812b = System.currentTimeMillis();
        }
    }
}
