package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbwi implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f11434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f11435b;

    public zzbwi(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f11434a = zzgxlVar;
        this.f11435b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzbwh zzb() {
        return new zzbwh((Clock) this.f11434a.zzb(), (zzbwf) this.f11435b.zzb());
    }
}
