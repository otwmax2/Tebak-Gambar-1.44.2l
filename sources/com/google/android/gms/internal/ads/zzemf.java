package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemf implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16951b;

    public zzemf(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16950a = zzgxlVar;
        this.f16951b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context context = (Context) this.f16950a.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzemd(context, zzfuuVar);
    }
}
