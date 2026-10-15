package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcoj implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13640b;

    public zzcoj(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f13639a = zzgxlVar;
        this.f13640b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzcxd zzb() {
        return new zzcxd((ScheduledExecutorService) this.f13639a.zzb(), (Clock) this.f13640b.zzb());
    }
}
