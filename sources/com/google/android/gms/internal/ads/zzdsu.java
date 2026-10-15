package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdsu extends RewardedAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f15608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f15609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzdsz f15610c;

    zzdsu(zzdsz zzdszVar, String str, String str2) {
        this.f15610c = zzdszVar;
        this.f15608a = str;
        this.f15609b = str2;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void a(LoadAdError loadAdError) {
        this.f15610c.bb(zzdsz.ab(loadAdError), this.f15609b);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void b(RewardedAd rewardedAd) {
        this.f15610c.Wa(this.f15608a, rewardedAd, this.f15609b);
    }
}
