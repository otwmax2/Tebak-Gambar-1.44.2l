package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbps implements com.google.android.gms.ads.internal.overlay.zzo {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbpu f11103o;

    zzbps(zzbpu zzbpuVar) {
        this.f11103o = zzbpuVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(int i10) {
        zzbza.b("AdMobCustomTabsAdapter overlay is closed.");
        zzbpu zzbpuVar = this.f11103o;
        zzbpuVar.f11107b.r(zzbpuVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
        zzbza.b("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
        zzbza.b("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
        zzbza.b("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        zzbza.b("Opening AdMobCustomTabsAdapter overlay.");
        zzbpu zzbpuVar = this.f11103o;
        zzbpuVar.f11107b.v(zzbpuVar);
    }
}
