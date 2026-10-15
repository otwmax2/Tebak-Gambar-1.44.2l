package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcis implements zzeur {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f12774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzq f12775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f12776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzchy f12777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzcis f12778e = this;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f12779f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f12780g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f12781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f12782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgxl f12783j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzgxl f12784k;

    /* synthetic */ zzcis(zzchy zzchyVar, Context context, String str, com.google.android.gms.ads.internal.client.zzq zzqVar, zzcir zzcirVar) {
        this.f12777d = zzchyVar;
        this.f12774a = context;
        this.f12775b = zzqVar;
        this.f12776c = str;
        zzgwy zzgwyVarA = zzgwz.a(context);
        this.f12779f = zzgwyVarA;
        zzgwy zzgwyVarA2 = zzgwz.a(zzqVar);
        this.f12780g = zzgwyVarA2;
        zzgxl zzgxlVarB = zzgwx.b(new zzeic(zzchyVar.f12380p));
        this.f12781h = zzgxlVarB;
        zzgxl zzgxlVarB2 = zzgwx.b(zzeih.a());
        this.f12782i = zzgxlVarB2;
        zzgxl zzgxlVarB3 = zzgwx.b(zzczm.a());
        this.f12783j = zzgxlVarB3;
        this.f12784k = zzgwx.b(new zzeup(zzgwyVarA, zzchyVar.f12382q, zzgwyVarA2, zzchyVar.V, zzgxlVarB, zzgxlVarB2, zzeyz.a(), zzgxlVarB3));
    }

    @Override // com.google.android.gms.internal.ads.zzeur
    public final zzehh zza() {
        Context context = this.f12774a;
        com.google.android.gms.ads.internal.client.zzq zzqVar = this.f12775b;
        String str = this.f12776c;
        zzeuo zzeuoVar = (zzeuo) this.f12784k.zzb();
        zzeib zzeibVar = (zzeib) this.f12781h.zzb();
        zzbzg zzbzgVarD = this.f12777d.f12352b.d();
        zzgxg.b(zzbzgVarD);
        return new zzehh(context, zzqVar, str, zzeuoVar, zzeibVar, zzbzgVarD);
    }
}
