package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedg implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16320b;

    public zzedg(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16319a = zzgxlVar;
        this.f16320b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzedf zzb() {
        return new zzedf((Context) this.f16319a.zzb(), (zzddw) this.f16320b.zzb());
    }
}
