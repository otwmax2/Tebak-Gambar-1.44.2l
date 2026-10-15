package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcju implements zzexw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f13079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcju f13080b = this;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f13082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f13083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f13084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f13085g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f13086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f13087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgxl f13088j;

    /* synthetic */ zzcju(zzchy zzchyVar, Context context, String str, zzcjt zzcjtVar) {
        this.f13079a = zzchyVar;
        zzgwy zzgwyVarA = zzgwz.a(context);
        this.f13081c = zzgwyVarA;
        zzevw zzevwVar = new zzevw(zzgwyVarA, zzchyVar.F0, zzchyVar.G0);
        this.f13082d = zzevwVar;
        zzgxl zzgxlVarB = zzgwx.b(new zzexg(zzchyVar.F0));
        this.f13083e = zzgxlVarB;
        zzgxl zzgxlVarB2 = zzgwx.b(zzeyu.a());
        this.f13084f = zzgxlVarB2;
        zzgxl zzgxlVarB3 = zzgwx.b(new zzexq(zzgwyVarA, zzchyVar.f12382q, zzchyVar.V, zzevwVar, zzgxlVarB, zzeyz.a(), zzgxlVarB2));
        this.f13085g = zzgxlVarB3;
        this.f13086h = zzgwx.b(new zzeya(zzgxlVarB3, zzgxlVarB, zzgxlVarB2));
        zzgwy zzgwyVarB = zzgwz.b(str);
        this.f13087i = zzgwyVarB;
        this.f13088j = zzgwx.b(new zzexu(zzgwyVarB, zzgxlVarB3, zzgwyVarA, zzgxlVarB, zzgxlVarB2, zzchyVar.f12368j, zzchyVar.W));
    }

    @Override // com.google.android.gms.internal.ads.zzexw
    public final zzext zza() {
        return (zzext) this.f13088j.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzexw
    public final zzexz zzb() {
        return (zzexz) this.f13086h.zzb();
    }
}
