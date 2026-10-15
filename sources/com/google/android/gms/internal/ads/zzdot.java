package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdot implements zzcxj, zzcwc, zzcur {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdpd f15293o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdpn f15294p;

    public zzdot(zzdpd zzdpdVar, zzdpn zzdpnVar) {
        this.f15293o = zzdpdVar;
        this.f15294p = zzdpnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void k() {
        this.f15293o.a().put("action", "loaded");
        this.f15294p.e(this.f15293o.a());
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void l0(zzeyo zzeyoVar) {
        this.f15293o.b(zzeyoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void t0(zzbtn zzbtnVar) {
        this.f15293o.c(zzbtnVar.f11272o);
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.f15293o.a().put("action", "ftl");
        this.f15293o.a().put("ftl", String.valueOf(zzeVar.f5841o));
        this.f15293o.a().put("ed", zzeVar.f5843q);
        this.f15294p.e(this.f15293o.a());
    }
}
