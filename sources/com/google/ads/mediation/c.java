package com.google.ads.mediation;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class c extends InterstitialAdLoadCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final AbstractAdViewAdapter f5498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final MediationInterstitialListener f5499b;

    public c(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f5498a = abstractAdViewAdapter;
        this.f5499b = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void a(LoadAdError loadAdError) {
        this.f5499b.o(this.f5498a, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void b(InterstitialAd interstitialAd) {
        InterstitialAd interstitialAd2 = interstitialAd;
        AbstractAdViewAdapter abstractAdViewAdapter = this.f5498a;
        abstractAdViewAdapter.mInterstitialAd = interstitialAd2;
        interstitialAd2.d(new d(abstractAdViewAdapter, this.f5499b));
        this.f5499b.p(this.f5498a);
    }
}
