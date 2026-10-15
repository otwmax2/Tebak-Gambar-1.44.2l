package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeag implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16073b;

    public zzeag(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16072a = zzgxlVar;
        this.f16073b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f16072a).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzeaf(contextA, zzfuuVar);
    }
}
