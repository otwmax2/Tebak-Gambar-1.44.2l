package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzckc implements com.google.android.gms.ads.nonagon.signalgeneration.zzg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f13279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzctz f13280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.google.android.gms.ads.nonagon.signalgeneration.zzag f13281c;

    /* synthetic */ zzckc(zzchy zzchyVar, zzckb zzckbVar) {
        this.f13279a = zzchyVar;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzg
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzh a() {
        zzgxg.c(this.f13280b, zzctz.class);
        zzgxg.c(this.f13281c, com.google.android.gms.ads.nonagon.signalgeneration.zzag.class);
        return new zzcke(this.f13279a, this.f13281c, new zzcrv(), new zzdpv(), this.f13280b, null, null, null);
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzg
    public final /* synthetic */ com.google.android.gms.ads.nonagon.signalgeneration.zzg b(zzctz zzctzVar) {
        this.f13280b = zzctzVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzg
    public final /* synthetic */ com.google.android.gms.ads.nonagon.signalgeneration.zzg c(com.google.android.gms.ads.nonagon.signalgeneration.zzag zzagVar) {
        this.f13281c = zzagVar;
        return this;
    }
}
