package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzejh implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Clock f16773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyx f16774b;

    zzejh(Clock clock, zzeyx zzeyxVar) {
        this.f16773a = clock;
        this.f16774b = zzeyxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.h(new zzeji(this.f16774b, this.f16773a.a()));
    }
}
