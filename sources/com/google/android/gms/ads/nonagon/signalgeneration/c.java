package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class c extends InterstitialAdLoadCallback {
    c(zzac zzacVar) {
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void a(LoadAdError loadAdError) {
        com.google.android.gms.ads.internal.util.zze.k("Failed to load ad with error code: " + loadAdError.a());
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* synthetic */ void b(InterstitialAd interstitialAd) {
        com.google.android.gms.ads.internal.util.zze.k("Ad is loaded.");
    }
}
