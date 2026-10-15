package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcjq implements zzewi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f13067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcjq f13068b = this;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f13070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f13071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f13072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f13073g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f13074h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f13075i;

    /* synthetic */ zzcjq(zzchy zzchyVar, Context context, String str, com.google.android.gms.ads.internal.client.zzq zzqVar, zzcjp zzcjpVar) {
        this.f13067a = zzchyVar;
        zzgwy zzgwyVarA = zzgwz.a(context);
        this.f13069c = zzgwyVarA;
        zzgwy zzgwyVarA2 = zzgwz.a(zzqVar);
        this.f13070d = zzgwyVarA2;
        zzgwy zzgwyVarA3 = zzgwz.a(str);
        this.f13071e = zzgwyVarA3;
        zzgxl zzgxlVarB = zzgwx.b(new zzeic(zzchyVar.f12380p));
        this.f13072f = zzgxlVarB;
        zzgxl zzgxlVarB2 = zzgwx.b(new zzexg(zzchyVar.F0));
        this.f13073g = zzgxlVarB2;
        zzgxl zzgxlVarB3 = zzgwx.b(new zzewg(zzgwyVarA, zzchyVar.f12382q, zzchyVar.V, zzgxlVarB, zzgxlVarB2, zzeyz.a()));
        this.f13074h = zzgxlVarB3;
        this.f13075i = zzgwx.b(new zzeik(zzgwyVarA, zzgwyVarA2, zzgwyVarA3, zzgxlVarB3, zzgxlVarB, zzgxlVarB2, zzchyVar.f12368j, zzchyVar.W));
    }

    @Override // com.google.android.gms.internal.ads.zzewi
    public final zzeij zza() {
        return (zzeij) this.f13075i.zzb();
    }
}
