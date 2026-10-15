package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzelu implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16930b;

    public zzelu(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16929a = zzgxlVar;
        this.f16930b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzelk(((zzepv) this.f16929a).zzb(), ((Long) zzbca.f10500a.e()).longValue(), (Clock) this.f16930b.zzb());
    }
}
