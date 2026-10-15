package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface MediationInterstitialListener {
    void d(MediationInterstitialAdapter mediationInterstitialAdapter);

    @Deprecated
    void e(MediationInterstitialAdapter mediationInterstitialAdapter, int i10);

    void l(MediationInterstitialAdapter mediationInterstitialAdapter);

    void o(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError);

    void p(MediationInterstitialAdapter mediationInterstitialAdapter);

    void r(MediationInterstitialAdapter mediationInterstitialAdapter);

    void v(MediationInterstitialAdapter mediationInterstitialAdapter);
}
