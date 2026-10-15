package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcjg implements zzdqr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f12883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbim f12884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzchy f12885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzcjg f12886d = this;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f12887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f12888f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f12889g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f12890h;

    /* synthetic */ zzcjg(zzchy zzchyVar, Context context, zzbim zzbimVar, zzcjf zzcjfVar) {
        this.f12885c = zzchyVar;
        this.f12883a = context;
        this.f12884b = zzbimVar;
        zzgwy zzgwyVarA = zzgwz.a(this);
        this.f12887e = zzgwyVarA;
        zzgwy zzgwyVarA2 = zzgwz.a(zzbimVar);
        this.f12888f = zzgwyVarA2;
        zzdqn zzdqnVar = new zzdqn(zzgwyVarA2);
        this.f12889g = zzdqnVar;
        this.f12890h = zzgwx.b(new zzdqp(zzgwyVarA, zzdqnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdqr
    public final zzdqo d() {
        return (zzdqo) this.f12890h.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdqr
    public final zzdqi zzb() {
        return new zzcja(this.f12885c, this.f12886d, null);
    }
}
