package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbyi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11537a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f11539c = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile long f11538b = 0;

    private zzbyi() {
    }

    /* synthetic */ zzbyi(zzbyh zzbyhVar) {
    }

    public final void a() {
        long jA = com.google.android.gms.ads.internal.zzt.b().a();
        synchronized (this.f11537a) {
            if (this.f11539c == 3) {
                if (this.f11538b + ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10439z5)).longValue() <= jA) {
                    this.f11539c = 1;
                }
            }
        }
        long jA2 = com.google.android.gms.ads.internal.zzt.b().a();
        synchronized (this.f11537a) {
            if (this.f11539c != 2) {
                return;
            }
            this.f11539c = 3;
            if (this.f11539c == 3) {
                this.f11538b = jA2;
            }
        }
    }
}
