package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqb implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15382c;

    public zzdqb(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15380a = zzdpvVar;
        this.f15381b = zzgxlVar;
        this.f15382c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15381b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setF = zzdpv.f(zzdqfVar, zzfuuVar);
        zzgxg.b(setF);
        return setF;
    }
}
