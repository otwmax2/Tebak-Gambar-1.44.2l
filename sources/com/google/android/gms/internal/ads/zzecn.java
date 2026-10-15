package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzecn implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeco f16252a;

    zzecn(zzeco zzecoVar) {
        this.f16252a = zzecoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        com.google.android.gms.ads.internal.client.zze zzeVarA = this.f16252a.f16253a.d().a(th);
        this.f16252a.f16256d.v(zzeVarA);
        zzezr.b(zzeVarA.f5841o, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* synthetic */ void c(Object obj) {
        ((zzcok) obj).b();
    }
}
