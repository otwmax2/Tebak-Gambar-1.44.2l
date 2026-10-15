package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemb implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16945b;

    public zzemb(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16944a = zzgxlVar;
        this.f16945b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f16944a).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzema(contextA, zzfuuVar);
    }
}
