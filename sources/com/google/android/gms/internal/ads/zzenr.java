package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzenr implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17016c;

    public zzenr(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f17014a = zzgxlVar;
        this.f17015b = zzgxlVar2;
        this.f17016c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzenp(zzfuuVar, ((zzcgj) this.f17015b).a(), (Set) this.f17016c.zzb());
    }
}
