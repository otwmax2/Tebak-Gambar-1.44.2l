package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeew implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16474b;

    public zzeew(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16473a = zzgxlVar;
        this.f16474b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzeev zzb() {
        return new zzeev((Context) this.f16473a.zzb(), (zzdlz) this.f16474b.zzb());
    }
}
