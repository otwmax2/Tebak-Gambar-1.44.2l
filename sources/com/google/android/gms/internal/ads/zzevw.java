package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzevw implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17491c;

    public zzevw(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f17489a = zzgxlVar;
        this.f17490b = zzgxlVar2;
        this.f17491c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzevt zzb() {
        Context context = (Context) this.f17489a.zzb();
        zzfaf zzfafVar = (zzfaf) this.f17490b.zzb();
        zzfax zzfaxVar = (zzfax) this.f17491c.zzb();
        zzbyd zzbydVarF = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.T5)).booleanValue() ? com.google.android.gms.ads.internal.zzt.q().h().f() : com.google.android.gms.ads.internal.zzt.q().h().g();
        boolean z10 = false;
        if (zzbydVarF != null && zzbydVarF.h()) {
            z10 = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.V5)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S5)).booleanValue() || z10) {
                zzfaw zzfawVarA = zzfaxVar.a(zzfan.Rewarded, context, zzfafVar, new zzeux(new zzeuu()));
                zzevj zzevjVar = new zzevj(new zzevi());
                zzfaj zzfajVar = zzfawVarA.f17838a;
                zzfuu zzfuuVar = zzbzn.f11614a;
                return new zzeuz(zzevjVar, new zzevf(zzfajVar, zzfuuVar), zzfawVarA.f17839b, zzfawVarA.f17838a.zza().f17827v, zzfuuVar);
            }
        }
        return new zzevi();
    }
}
