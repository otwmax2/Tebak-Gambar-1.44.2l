package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdpw implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15367c;

    public zzdpw(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15365a = zzdpvVar;
        this.f15366b = zzgxlVar;
        this.f15367c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15366b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setA = zzdpv.a(zzdqfVar, zzfuuVar);
        zzgxg.b(setA);
        return setA;
    }
}
