package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdpx implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15370c;

    public zzdpx(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15368a = zzdpvVar;
        this.f15369b = zzgxlVar;
        this.f15370c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15369b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setB = zzdpv.b(zzdqfVar, zzfuuVar);
        zzgxg.b(setB);
        return setB;
    }
}
