package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzevv implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17488c;

    public zzevv(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f17486a = zzgxlVar;
        this.f17487b = zzgxlVar2;
        this.f17488c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzevt zzb() {
        Context context = (Context) this.f17486a.zzb();
        zzfaf zzfafVar = (zzfaf) this.f17487b.zzb();
        zzfax zzfaxVar = (zzfax) this.f17488c.zzb();
        zzbyd zzbydVarF = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.T5)).booleanValue() ? com.google.android.gms.ads.internal.zzt.q().h().f() : com.google.android.gms.ads.internal.zzt.q().h().g();
        boolean z10 = false;
        if (zzbydVarF != null && zzbydVarF.h()) {
            z10 = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10264j6)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S5)).booleanValue() || z10) {
                zzfaw zzfawVarA = zzfaxVar.a(zzfan.AppOpen, context, zzfafVar, new zzeux(new zzeuu()));
                zzevj zzevjVar = new zzevj(new zzevi());
                zzfaj zzfajVar = zzfawVarA.f17838a;
                zzfuu zzfuuVar = zzbzn.f11614a;
                return new zzeuz(zzevjVar, new zzevf(zzfajVar, zzfuuVar), zzfawVarA.f17839b, zzfawVarA.f17838a.zza().f17827v, zzfuuVar);
            }
        }
        return new zzevi();
    }
}
