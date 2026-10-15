package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdhj implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f14746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f14747d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f14748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f14749f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f14750g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f14751h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f14752i;

    public zzdhj(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7, zzgxl zzgxlVar8, zzgxl zzgxlVar9) {
        this.f14744a = zzgxlVar;
        this.f14745b = zzgxlVar2;
        this.f14746c = zzgxlVar3;
        this.f14747d = zzgxlVar4;
        this.f14748e = zzgxlVar5;
        this.f14749f = zzgxlVar6;
        this.f14750g = zzgxlVar7;
        this.f14751h = zzgxlVar8;
        this.f14752i = zzgxlVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzdhi zzb() {
        com.google.android.gms.ads.internal.util.zzg zzgVarZzb = ((zzcgh) this.f14744a).zzb();
        zzeyx zzeyxVarA = ((zzcuf) this.f14745b).a();
        zzdgn zzdgnVar = (zzdgn) this.f14746c.zzb();
        zzdgi zzdgiVarA = ((zzdhb) this.f14747d).a();
        zzdhu zzdhuVar = (zzdhu) this.f14748e.zzb();
        zzdic zzdicVar = (zzdic) this.f14749f.zzb();
        Executor executor = (Executor) this.f14750g.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzdhi(zzgVarZzb, zzeyxVarA, zzdgnVar, zzdgiVarA, zzdhuVar, zzdicVar, executor, zzfuuVar, (zzdgf) this.f14752i.zzb());
    }
}
