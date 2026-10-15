package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdvg implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15751c;

    public zzdvg(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f15749a = zzgxlVar;
        this.f15750b = zzgxlVar2;
        this.f15751c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzdvf zzb() {
        Map mapC = ((zzgxf) this.f15749a).c();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzdvf(mapC, zzfuuVar, ((zzcxi) this.f15751c).zzb());
    }
}
