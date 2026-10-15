package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdsv extends RewardedInterstitialAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f15611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f15612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzdsz f15613c;

    zzdsv(zzdsz zzdszVar, String str, String str2) {
        this.f15613c = zzdszVar;
        this.f15611a = str;
        this.f15612b = str2;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void a(LoadAdError loadAdError) {
        this.f15613c.bb(zzdsz.ab(loadAdError), this.f15612b);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void b(RewardedInterstitialAd rewardedInterstitialAd) {
        this.f15613c.Wa(this.f15611a, rewardedInterstitialAd, this.f15612b);
    }
}
