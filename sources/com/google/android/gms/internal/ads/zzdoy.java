package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdoy implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15308c;

    public zzdoy(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f15306a = zzgxlVar;
        this.f15307b = zzgxlVar2;
        this.f15308c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdpl zzdplVar = (zzdpl) this.f15306a.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue() ? new zzdbu((zzdys) this.f15308c.zzb(), zzfuuVar) : new zzdbu(zzdplVar, zzfuuVar);
    }
}
