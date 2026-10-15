package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzddp implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdcz f14410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14411b;

    public zzddp(zzdcz zzdczVar, zzgxl zzgxlVar) {
        this.f14410a = zzdczVar;
        this.f14411b = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return this.f14410a.d((Executor) this.f14411b.zzb());
    }
}
