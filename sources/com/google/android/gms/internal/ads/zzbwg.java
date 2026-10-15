package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbwg implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f11429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f11430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f11431c;

    public zzbwg(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f11429a = zzgxlVar;
        this.f11430b = zzgxlVar2;
        this.f11431c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzbwf((Clock) this.f11429a.zzb(), (com.google.android.gms.ads.internal.util.zzg) this.f11430b.zzb(), (zzbxf) this.f11431c.zzb());
    }
}
