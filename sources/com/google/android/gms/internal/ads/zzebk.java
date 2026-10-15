package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzebk implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16184c;

    public zzebk(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f16182a = zzgxlVar;
        this.f16183b = zzgxlVar2;
        this.f16184c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context context = (Context) this.f16182a.zzb();
        zzcny zzcnyVar = (zzcny) this.f16183b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzebj(context, zzcnyVar, zzfuuVar);
    }
}
