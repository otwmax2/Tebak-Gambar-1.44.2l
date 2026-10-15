package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcse implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13876b;

    public zzcse(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f13875a = zzgxlVar;
        this.f13876b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcsd((Clock) this.f13875a.zzb(), (zzbyc) this.f13876b.zzb());
    }
}
