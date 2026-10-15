package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcsr implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13906c;

    public zzcsr(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f13904a = zzgxlVar;
        this.f13905b = zzgxlVar2;
        this.f13906c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdor zzdorVar = (zzdor) this.f13904a.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue() ? new zzdbu((zzdyj) this.f13906c.zzb(), zzfuuVar) : new zzdbu(zzdorVar, zzfuuVar);
    }
}
