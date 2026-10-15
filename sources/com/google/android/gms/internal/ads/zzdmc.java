package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdmc implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15132a;

    public zzdmc(zzgxl zzgxlVar) {
        this.f15132a = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzawo zzawoVar = ((zzcuf) this.f15132a).a().f17742o.f17695a == 3 ? zzawo.REWARDED_INTERSTITIAL : zzawo.REWARD_BASED_VIDEO_AD;
        zzgxg.b(zzawoVar);
        return zzawoVar;
    }
}
