package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzebo implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16189b;

    public zzebo(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16188a = zzgxlVar;
        this.f16189b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzebn zzb() {
        return new zzebn((Context) this.f16188a.zzb(), (zzcny) this.f16189b.zzb());
    }
}
