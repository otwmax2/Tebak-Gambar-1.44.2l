package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcjy implements zzdly {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f13153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzevx f13154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzeva f13155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzdab f13156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzctz f13157e;

    /* synthetic */ zzcjy(zzchy zzchyVar, zzcjx zzcjxVar) {
        this.f13153a = zzchyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzctv
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final zzdlz f() {
        zzgxg.c(this.f13156d, zzdab.class);
        zzgxg.c(this.f13157e, zzctz.class);
        return new zzcka(this.f13153a, new zzcrv(), new zzfab(), new zzctg(), new zzdpv(), this.f13156d, this.f13157e, new zzeeo(), null, this.f13154b, this.f13155c, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdly
    public final /* synthetic */ zzdly d(zzctz zzctzVar) {
        this.f13157e = zzctzVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdly
    public final /* synthetic */ zzdly g(zzdab zzdabVar) {
        this.f13156d = zzdabVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzctv
    public final /* synthetic */ zzctv l(zzeva zzevaVar) {
        this.f13155c = zzevaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzctv
    public final /* synthetic */ zzctv n(zzevx zzevxVar) {
        this.f13154b = zzevxVar;
        return this;
    }
}
