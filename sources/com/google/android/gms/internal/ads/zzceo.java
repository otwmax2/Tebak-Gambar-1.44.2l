package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzceo implements com.google.android.gms.ads.internal.overlay.zzo {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcei f12013o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.overlay.zzo f12014p;

    public zzceo(zzcei zzceiVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar) {
        this.f12013o = zzceiVar;
        this.f12014p = zzoVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(int i10) {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f12014p;
        if (zzoVar != null) {
            zzoVar.G(i10);
        }
        this.f12013o.m0();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f12014p;
        if (zzoVar != null) {
            zzoVar.P0();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f12014p;
        if (zzoVar != null) {
            zzoVar.b();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f12014p;
        if (zzoVar != null) {
            zzoVar.zzb();
        }
        this.f12013o.F0();
    }
}
