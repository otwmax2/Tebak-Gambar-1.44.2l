package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzddt implements com.google.android.gms.ads.internal.overlay.zzo {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcwu f14414o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdbs f14415p;

    public zzddt(zzcwu zzcwuVar, zzdbs zzdbsVar) {
        this.f14414o = zzcwuVar;
        this.f14415p = zzdbsVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(int i10) {
        this.f14414o.G(i10);
        this.f14415p.zza();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
        this.f14414o.P0();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
        this.f14414o.Q4();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
        this.f14414o.X0();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
        this.f14414o.b();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        this.f14414o.zzb();
        this.f14415p.zzb();
    }
}
