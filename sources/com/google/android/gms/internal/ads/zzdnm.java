package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdnm implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f15235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f15236e;

    public zzdnm(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5) {
        this.f15232a = zzgxlVar;
        this.f15233b = zzgxlVar2;
        this.f15234c = zzgxlVar3;
        this.f15235d = zzgxlVar4;
        this.f15236e = zzgxlVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f15232a).a();
        final String strZzb = ((zzdtx) this.f15233b).zzb();
        zzbzg zzbzgVarA = ((zzcgu) this.f15234c).a();
        final zzawo zzawoVar = (zzawo) this.f15235d.zzb();
        final String str = (String) this.f15236e.zzb();
        zzawe zzaweVar = new zzawe(new zzawk(contextA));
        zzazd zzazdVarI = zzaze.I();
        zzazdVarI.o(zzbzgVarA.f11606p);
        zzazdVarI.q(zzbzgVarA.f11607q);
        zzazdVarI.p(true != zzbzgVarA.f11608r ? 2 : 0);
        final zzaze zzazeVar = (zzaze) zzazdVarI.k();
        zzaweVar.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzdnl
            @Override // com.google.android.gms.internal.ads.zzawd
            public final void a(zzaxt zzaxtVar) {
                zzawo zzawoVar2 = zzawoVar;
                String str2 = strZzb;
                zzaze zzazeVar2 = zzazeVar;
                String str3 = str;
                zzawp zzawpVar = (zzawp) zzaxtVar.o().i();
                zzawpVar.o(zzawoVar2);
                zzaxtVar.s(zzawpVar);
                zzaxl zzaxlVar = (zzaxl) zzaxtVar.p().i();
                zzaxlVar.o(str2);
                zzaxlVar.p(zzazeVar2);
                zzaxtVar.v(zzaxlVar);
                zzaxtVar.w(str3);
            }
        });
        return zzaweVar;
    }
}
