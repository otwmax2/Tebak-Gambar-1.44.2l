package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdov implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15299c;

    public zzdov(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f15297a = zzgxlVar;
        this.f15298b = zzgxlVar2;
        this.f15299c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdot zzdotVar = (zzdot) this.f15297a.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue() ? new zzdbu((zzdyl) this.f15299c.zzb(), zzfuuVar) : new zzdbu(zzdotVar, zzfuuVar);
    }
}
