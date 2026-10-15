package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcsn implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcsm f13897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13899c;

    public zzcsn(zzcsm zzcsmVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f13897a = zzcsmVar;
        this.f13898b = zzgxlVar;
        this.f13899c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new com.google.android.gms.ads.internal.zzb((Context) this.f13898b.zzb(), (zzbwb) this.f13899c.zzb(), null);
    }
}
