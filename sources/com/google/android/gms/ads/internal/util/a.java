package com.google.android.gms.ads.internal.util;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzb f6035o;

    a(zzb zzbVar) {
        this.f6035o = zzbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6035o.f6106b = Thread.currentThread();
        this.f6035o.a();
    }
}
