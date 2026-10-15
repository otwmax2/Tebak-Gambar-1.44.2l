package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdvf implements zzdvh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f15746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f15747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcxh f15748c;

    public zzdvf(Map map, zzfuu zzfuuVar, zzcxh zzcxhVar) {
        this.f15746a = map;
        this.f15747b = zzfuuVar;
        this.f15748c = zzcxhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdvh
    public final zzfut a(final zzbtn zzbtnVar) {
        this.f15748c.t0(zzbtnVar);
        zzfut zzfutVarG = zzfuj.g(new zzdtf(3));
        for (String str : ((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B7)).split(",")) {
            final zzgxl zzgxlVar = (zzgxl) this.f15746a.get(str.trim());
            if (zzgxlVar != null) {
                zzfutVarG = zzfuj.f(zzfutVarG, zzdtf.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdvd
                    @Override // com.google.android.gms.internal.ads.zzftq
                    public final zzfut a(Object obj) {
                        zzgxl zzgxlVar2 = zzgxlVar;
                        return ((zzdvh) zzgxlVar2.zzb()).a(zzbtnVar);
                    }
                }, this.f15747b);
            }
        }
        zzfuj.q(zzfutVarG, new zzdve(this), zzbzn.f11619f);
        return zzfutVarG;
    }
}
