package com.vungle.mediation;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.Keep;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.ads.mediation.vungle.a;
import com.google.ads.mediation.vungle.b;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MediationUtils;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.vungle.mediation.AdapterParametersParser;
import com.vungle.warren.AdConfig;
import com.vungle.warren.LoadAdCallback;
import com.vungle.warren.PlayAdCallback;
import com.vungle.warren.Vungle;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class VungleInterstitialAdapter implements MediationInterstitialAdapter, MediationBannerAdapter {
    private static final String TAG = "VungleInterstitialAdapter";
    private AdConfig mAdConfig;
    private MediationBannerListener mMediationBannerListener;
    private MediationInterstitialListener mMediationInterstitialListener;
    private String mPlacementForPlay;
    private VungleManager mVungleManager;
    private VungleBannerAdapter vungleBannerAdapter;

    private boolean hasBannerSizeAd(Context context, AdSize adSize, AdConfig adConfig) {
        ArrayList arrayList = new ArrayList();
        AdConfig.AdSize adSize2 = AdConfig.AdSize.BANNER_SHORT;
        arrayList.add(new AdSize(adSize2.getWidth(), adSize2.getHeight()));
        AdConfig.AdSize adSize3 = AdConfig.AdSize.BANNER;
        arrayList.add(new AdSize(adSize3.getWidth(), adSize3.getHeight()));
        AdConfig.AdSize adSize4 = AdConfig.AdSize.BANNER_LEADERBOARD;
        arrayList.add(new AdSize(adSize4.getWidth(), adSize4.getHeight()));
        AdConfig.AdSize adSize5 = AdConfig.AdSize.VUNGLE_MREC;
        arrayList.add(new AdSize(adSize5.getWidth(), adSize5.getHeight()));
        AdSize adSizeA = MediationUtils.a(context, adSize, arrayList);
        if (adSizeA == null) {
            Log.i(TAG, "Not found closest ad size: " + adSize);
            return false;
        }
        Log.i(TAG, "Found closest ad size: " + adSizeA.toString() + " for requested ad size: " + adSize);
        if (adSizeA.d() == adSize2.getWidth() && adSizeA.b() == adSize2.getHeight()) {
            adConfig.setAdSize(adSize2);
            return true;
        }
        if (adSizeA.d() == adSize3.getWidth() && adSizeA.b() == adSize3.getHeight()) {
            adConfig.setAdSize(adSize3);
            return true;
        }
        if (adSizeA.d() == adSize4.getWidth() && adSizeA.b() == adSize4.getHeight()) {
            adConfig.setAdSize(adSize4);
            return true;
        }
        if (adSizeA.d() != adSize5.getWidth() || adSizeA.b() != adSize5.getHeight()) {
            return true;
        }
        adConfig.setAdSize(adSize5);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd() {
        if (Vungle.canPlayAd(this.mPlacementForPlay)) {
            MediationInterstitialListener mediationInterstitialListener = this.mMediationInterstitialListener;
            if (mediationInterstitialListener != null) {
                mediationInterstitialListener.p(this);
                return;
            }
            return;
        }
        if (this.mVungleManager.c(this.mPlacementForPlay)) {
            Vungle.loadAd(this.mPlacementForPlay, new LoadAdCallback() { // from class: com.vungle.mediation.VungleInterstitialAdapter.2
                @Override // com.vungle.warren.LoadAdCallback
                public void onAdLoad(String str) {
                    if (VungleInterstitialAdapter.this.mMediationInterstitialListener != null) {
                        VungleInterstitialAdapter.this.mMediationInterstitialListener.p(VungleInterstitialAdapter.this);
                    }
                }

                @Override // com.vungle.warren.LoadAdCallback, com.vungle.warren.PlayAdCallback
                public void onError(String str, VungleException vungleException) {
                    AdError adError = VungleMediationAdapter.getAdError(vungleException);
                    Log.w("TAG", adError.c());
                    if (VungleInterstitialAdapter.this.mMediationInterstitialListener != null) {
                        VungleInterstitialAdapter.this.mMediationInterstitialListener.o(VungleInterstitialAdapter.this, adError);
                    }
                }
            });
        } else if (this.mMediationInterstitialListener != null) {
            AdError adError = new AdError(101, "Failed to load ad from Vungle. Missing or Invalid Placement ID.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(TAG, adError.c());
            this.mMediationInterstitialListener.o(this, adError);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        Log.d(TAG, "getBannerView # instance: " + hashCode());
        return this.vungleBannerAdapter.getAdLayout();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onDestroy() {
        Log.d(TAG, "onDestroy: " + hashCode());
        VungleBannerAdapter vungleBannerAdapter = this.vungleBannerAdapter;
        if (vungleBannerAdapter != null) {
            vungleBannerAdapter.l();
            this.vungleBannerAdapter = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onPause() {
        Log.d(TAG, "onPause");
        VungleBannerAdapter vungleBannerAdapter = this.vungleBannerAdapter;
        if (vungleBannerAdapter != null) {
            vungleBannerAdapter.q(false);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onResume() {
        Log.d(TAG, "onResume");
        VungleBannerAdapter vungleBannerAdapter = this.vungleBannerAdapter;
        if (vungleBannerAdapter != null) {
            vungleBannerAdapter.q(true);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.mMediationBannerListener = mediationBannerListener;
        String string = bundle.getString(VungleMediationAdapter.KEY_APP_ID);
        AdapterParametersParser.Config config = AdapterParametersParser.parse(string, bundle2);
        if (TextUtils.isEmpty(string)) {
            if (mediationBannerListener != null) {
                AdError adError = new AdError(101, "Failed to load ad from Vungle. Missing or invalid app ID.", VungleMediationAdapter.ERROR_DOMAIN);
                Log.w(TAG, adError.c());
                this.mMediationInterstitialListener.o(this, adError);
                mediationBannerListener.f(this, adError);
                return;
            }
            return;
        }
        VungleManager vungleManager = VungleManager.getInstance();
        this.mVungleManager = vungleManager;
        String strFindPlacement = vungleManager.findPlacement(bundle2, bundle);
        String str = TAG;
        Log.d(str, "requestBannerAd for Placement: " + strFindPlacement + " ### Adapter instance: " + hashCode());
        if (TextUtils.isEmpty(strFindPlacement)) {
            AdError adError2 = new AdError(101, "Failed to load ad from Vungle. Missing or Invalid placement ID.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(str, adError2.c());
            this.mMediationBannerListener.f(this, adError2);
            return;
        }
        AdConfig adConfigAdConfigWithNetworkExtras = VungleExtrasBuilder.adConfigWithNetworkExtras(bundle2, true);
        if (!hasBannerSizeAd(context, adSize, adConfigAdConfigWithNetworkExtras)) {
            AdError adError3 = new AdError(102, "Failed to load ad from Vungle. Invalid banner size.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(str, adError3.c());
            this.mMediationBannerListener.f(this, adError3);
            return;
        }
        String requestUniqueId = config.getRequestUniqueId();
        if (!this.mVungleManager.a(strFindPlacement, requestUniqueId)) {
            AdError adError4 = new AdError(104, "Vungle adapter does not support multiple banner instances for same placement.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(str, adError4.c());
            this.mMediationBannerListener.f(this, adError4);
            return;
        }
        this.vungleBannerAdapter = new VungleBannerAdapter(strFindPlacement, requestUniqueId, adConfigAdConfigWithNetworkExtras, this);
        Log.d(str, "New banner adapter: " + this.vungleBannerAdapter + "; size: " + adConfigAdConfigWithNetworkExtras.getAdSize());
        this.mVungleManager.d(strFindPlacement, new a(strFindPlacement, this.vungleBannerAdapter));
        StringBuilder sb = new StringBuilder();
        sb.append("Requesting banner with ad size: ");
        sb.append(adConfigAdConfigWithNetworkExtras.getAdSize());
        Log.d(str, sb.toString());
        this.vungleBannerAdapter.p(context, config.getAppId(), adSize, this.mMediationBannerListener);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        String string = bundle.getString(VungleMediationAdapter.KEY_APP_ID);
        if (TextUtils.isEmpty(string)) {
            if (mediationInterstitialListener != null) {
                AdError adError = new AdError(101, "Missing or invalid App ID.", VungleMediationAdapter.ERROR_DOMAIN);
                Log.w(TAG, adError.c());
                mediationInterstitialListener.o(this, adError);
                return;
            }
            return;
        }
        this.mMediationInterstitialListener = mediationInterstitialListener;
        VungleManager vungleManager = VungleManager.getInstance();
        this.mVungleManager = vungleManager;
        String strFindPlacement = vungleManager.findPlacement(bundle2, bundle);
        this.mPlacementForPlay = strFindPlacement;
        if (TextUtils.isEmpty(strFindPlacement)) {
            AdError adError2 = new AdError(101, "Failed to load ad from Vungle. Missing or Invalid Placement ID.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(TAG, adError2.c());
            this.mMediationInterstitialListener.o(this, adError2);
        } else {
            AdapterParametersParser.Config config = AdapterParametersParser.parse(string, bundle2);
            this.mAdConfig = VungleExtrasBuilder.adConfigWithNetworkExtras(bundle2, false);
            b.b().c(config.getAppId(), context.getApplicationContext(), new b.d() { // from class: com.vungle.mediation.VungleInterstitialAdapter.1
                @Override // com.google.ads.mediation.vungle.b.d
                public void onInitializeError(AdError adError3) {
                    if (VungleInterstitialAdapter.this.mMediationInterstitialListener != null) {
                        VungleInterstitialAdapter.this.mMediationInterstitialListener.o(VungleInterstitialAdapter.this, adError3);
                        Log.w(VungleInterstitialAdapter.TAG, adError3.c());
                    }
                }

                @Override // com.google.ads.mediation.vungle.b.d
                public void onInitializeSuccess() {
                    VungleInterstitialAdapter.this.loadAd();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        Vungle.playAd(this.mPlacementForPlay, this.mAdConfig, new PlayAdCallback() { // from class: com.vungle.mediation.VungleInterstitialAdapter.3
            @Override // com.vungle.warren.PlayAdCallback
            public void creativeId(String str) {
            }

            @Override // com.vungle.warren.PlayAdCallback
            public void onAdClick(String str) {
                if (VungleInterstitialAdapter.this.mMediationInterstitialListener != null) {
                    VungleInterstitialAdapter.this.mMediationInterstitialListener.l(VungleInterstitialAdapter.this);
                }
            }

            @Override // com.vungle.warren.PlayAdCallback
            public void onAdEnd(String str) {
                if (VungleInterstitialAdapter.this.mMediationInterstitialListener != null) {
                    VungleInterstitialAdapter.this.mMediationInterstitialListener.r(VungleInterstitialAdapter.this);
                }
            }

            @Override // com.vungle.warren.PlayAdCallback
            public void onAdEnd(String str, boolean z10, boolean z11) {
            }

            @Override // com.vungle.warren.PlayAdCallback
            public void onAdLeftApplication(String str) {
                if (VungleInterstitialAdapter.this.mMediationInterstitialListener != null) {
                    VungleInterstitialAdapter.this.mMediationInterstitialListener.d(VungleInterstitialAdapter.this);
                }
            }

            @Override // com.vungle.warren.PlayAdCallback
            public void onAdRewarded(String str) {
            }

            @Override // com.vungle.warren.PlayAdCallback
            public void onAdStart(String str) {
                if (VungleInterstitialAdapter.this.mMediationInterstitialListener != null) {
                    VungleInterstitialAdapter.this.mMediationInterstitialListener.v(VungleInterstitialAdapter.this);
                }
            }

            @Override // com.vungle.warren.PlayAdCallback
            public void onAdViewed(String str) {
            }

            @Override // com.vungle.warren.PlayAdCallback
            public void onError(String str, VungleException vungleException) {
                Log.w("TAG", VungleMediationAdapter.getAdError(vungleException).c());
                if (VungleInterstitialAdapter.this.mMediationInterstitialListener != null) {
                    VungleInterstitialAdapter.this.mMediationInterstitialListener.r(VungleInterstitialAdapter.this);
                }
            }
        });
    }
}
