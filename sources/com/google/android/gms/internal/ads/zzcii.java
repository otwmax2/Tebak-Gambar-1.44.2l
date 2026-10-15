package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcii implements zzetd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f12570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcii f12571b = this;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f12572c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f12573d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f12574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f12575f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f12576g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f12577h;

    /* synthetic */ zzcii(zzchy zzchyVar, Context context, String str, zzcih zzcihVar) {
        this.f12570a = zzchyVar;
        zzgwy zzgwyVarA = zzgwz.a(context);
        this.f12572c = zzgwyVarA;
        zzgwy zzgwyVarA2 = zzgwz.a(str);
        this.f12573d = zzgwyVarA2;
        zzevv zzevvVar = new zzevv(zzgwyVarA, zzchyVar.F0, zzchyVar.G0);
        this.f12574e = zzevvVar;
        zzgxl zzgxlVarB = zzgwx.b(new zzeub(zzchyVar.F0));
        this.f12575f = zzgxlVarB;
        zzgxl zzgxlVarB2 = zzgwx.b(new zzeud(zzgwyVarA, zzchyVar.f12382q, zzchyVar.V, zzevvVar, zzgxlVarB, zzeyz.a(), zzchyVar.f12368j));
        this.f12576g = zzgxlVarB2;
        this.f12577h = zzgwx.b(new zzeuj(zzchyVar.V, zzgwyVarA, zzgwyVarA2, zzgxlVarB2, zzgxlVarB, zzchyVar.f12368j));
    }

    @Override // com.google.android.gms.internal.ads.zzetd
    public final zzeui zza() {
        return (zzeui) this.f12577h.zzb();
    }
}
