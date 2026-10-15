package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdtx implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15665a;

    public zzdtx(zzgxl zzgxlVar) {
        this.f15665a = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String zzb() {
        String packageName = ((zzcgj) this.f15665a).a().getPackageName();
        zzgxg.b(packageName);
        return packageName;
    }
}
