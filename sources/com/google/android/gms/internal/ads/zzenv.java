package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzenv implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17024b;

    public zzenv(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f17023a = zzgxlVar;
        this.f17024b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzenu(((zzdtr) this.f17023a).zzb(), (PackageInfo) this.f17024b.zzb());
    }
}
