package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcky implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13428b;

    public zzcky(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f13427a = zzgxlVar;
        this.f13428b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* synthetic */ Object zzb() {
        zzbmu zzbmuVar = new zzbmu();
        String str = (String) this.f13428b.zzb();
        return ((Boolean) zzbcm.f10575a.e()).booleanValue() ? new zzbmt(zzbmuVar, str) : new zzbzf(str);
    }
}
