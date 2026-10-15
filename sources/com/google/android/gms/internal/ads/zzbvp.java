package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbvp extends zzbvc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RewardedInterstitialAdLoadCallback f11375o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbvq f11376p;

    public zzbvp(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, zzbvq zzbvqVar) {
        this.f11375o = rewardedInterstitialAdLoadCallback;
        this.f11376p = zzbvqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f11375o;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.a(zzeVar.W3());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void F(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void e() {
        zzbvq zzbvqVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f11375o;
        if (rewardedInterstitialAdLoadCallback == null || (zzbvqVar = this.f11376p) == null) {
            return;
        }
        rewardedInterstitialAdLoadCallback.b(zzbvqVar);
    }
}
