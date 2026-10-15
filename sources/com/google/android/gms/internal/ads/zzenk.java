package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzenk implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f17008d;

    public zzenk(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f17005a = zzgxlVar;
        this.f17006b = zzgxlVar2;
        this.f17007c = zzgxlVar3;
        this.f17008d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzeni(zzfuuVar, ((zzcuf) this.f17006b).a(), (PackageInfo) this.f17007c.zzb(), ((zzcgh) this.f17008d).zzb());
    }
}
