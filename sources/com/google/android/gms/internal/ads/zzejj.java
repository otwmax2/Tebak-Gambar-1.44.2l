package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzejj implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16778b;

    public zzejj(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16777a = zzgxlVar;
        this.f16778b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzejh((Clock) this.f16777a.zzb(), ((zzcuf) this.f16778b).a());
    }
}
