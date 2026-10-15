package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdif implements zzcvi {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdgi f14802o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdgn f14803p;

    public zzdif(zzdgi zzdgiVar, zzdgn zzdgnVar) {
        this.f14802o = zzdgiVar;
        this.f14803p = zzdgnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        zzdgi zzdgiVar = this.f14802o;
        if (zzdgiVar.e0() == null) {
            return;
        }
        zzcei zzceiVarA0 = zzdgiVar.a0();
        zzcei zzceiVarB0 = zzdgiVar.b0();
        if (zzceiVarA0 == null) {
            zzceiVarA0 = zzceiVarB0 == null ? null : zzceiVarB0;
        }
        if (!this.f14803p.d() || zzceiVarA0 == null) {
            return;
        }
        zzceiVarA0.v0("onSdkImpression", new o.a());
    }
}
