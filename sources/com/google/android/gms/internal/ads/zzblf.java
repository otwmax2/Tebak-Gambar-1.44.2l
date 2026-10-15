package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzblf implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzblq f10873o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzbkm f10874p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzblr f10875q;

    zzblf(zzblr zzblrVar, zzblq zzblqVar, zzbkm zzbkmVar) {
        this.f10875q = zzblrVar;
        this.f10873o = zzblqVar;
        this.f10874p = zzbkmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10875q.f10896a) {
            if (this.f10873o.a() != -1 && this.f10873o.a() != 1) {
                this.f10873o.c();
                zzfuu zzfuuVar = zzbzn.f11618e;
                final zzbkm zzbkmVar = this.f10874p;
                zzfuuVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzble
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbkmVar.a();
                    }
                });
                com.google.android.gms.ads.internal.util.zze.k("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
