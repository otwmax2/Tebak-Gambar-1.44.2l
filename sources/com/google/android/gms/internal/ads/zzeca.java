package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeca implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16220c;

    public zzeca(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f16218a = zzgxlVar;
        this.f16219b = zzgxlVar2;
        this.f16220c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzebz((Context) this.f16218a.zzb(), (zzcph) this.f16219b.zzb(), (Executor) this.f16220c.zzb());
    }
}
