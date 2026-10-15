package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzelt implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16928b;

    public zzelt(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16927a = zzgxlVar;
        this.f16928b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzelk(((zzelf) this.f16927a).zzb(), 10000L, (Clock) this.f16928b.zzb());
    }
}
