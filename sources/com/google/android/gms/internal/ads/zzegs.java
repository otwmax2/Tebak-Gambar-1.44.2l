package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegs implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16623b;

    public zzegs(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16622a = zzgxlVar;
        this.f16623b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzegr zzb() {
        return new zzegr((Context) this.f16622a.zzb(), (zzddw) this.f16623b.zzb());
    }
}
