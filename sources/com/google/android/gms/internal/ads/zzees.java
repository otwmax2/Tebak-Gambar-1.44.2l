package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzees implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16469c;

    public zzees(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f16467a = zzgxlVar;
        this.f16468b = zzgxlVar2;
        this.f16469c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeer((Context) this.f16467a.zzb(), (Executor) this.f16468b.zzb(), (zzdlz) this.f16469c.zzb());
    }
}
