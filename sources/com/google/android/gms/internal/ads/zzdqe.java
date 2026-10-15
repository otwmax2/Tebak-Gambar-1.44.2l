package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqe implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15391c;

    public zzdqe(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15389a = zzdpvVar;
        this.f15390b = zzgxlVar;
        this.f15391c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15390b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setI = zzdpv.i(zzdqfVar, zzfuuVar);
        zzgxg.b(setI);
        return setI;
    }
}
