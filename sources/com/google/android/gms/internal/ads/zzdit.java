package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdit implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f14850c;

    public zzdit(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f14848a = zzgxlVar;
        this.f14849b = zzgxlVar2;
        this.f14850c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        com.google.android.gms.ads.internal.util.zzbo zzboVar = (com.google.android.gms.ads.internal.util.zzbo) this.f14848a.zzb();
        Clock clock = (Clock) this.f14849b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzdis(zzboVar, clock, zzfuuVar);
    }
}
