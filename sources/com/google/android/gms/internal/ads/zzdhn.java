package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdhn implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14765b;

    public zzdhn(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f14764a = zzgxlVar;
        this.f14765b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdhm(((zzdfm) this.f14764a).a(), (Clock) this.f14765b.zzb());
    }
}
