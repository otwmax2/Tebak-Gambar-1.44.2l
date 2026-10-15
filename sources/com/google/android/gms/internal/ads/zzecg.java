package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzecg implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16232b;

    public zzecg(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16231a = zzgxlVar;
        this.f16232b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzecf zzb() {
        return new zzecf((Context) this.f16231a.zzb(), (zzcph) this.f16232b.zzb());
    }
}
