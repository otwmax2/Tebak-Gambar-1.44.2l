package com.google.ads.mediation.vungle;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.ads.mediation.vungle.b;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.vungle.mediation.VungleExtrasBuilder;
import com.vungle.mediation.VungleManager;
import com.vungle.warren.AdConfig;
import com.vungle.warren.BuildConfig;
import com.vungle.warren.LoadAdCallback;
import com.vungle.warren.PlayAdCallback;
import com.vungle.warren.Vungle;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VungleMediationAdapter extends Adapter implements MediationRewardedAd, LoadAdCallback, PlayAdCallback {
    public static final int ERROR_AD_ALREADY_LOADED = 104;
    public static final int ERROR_BANNER_SIZE_MISMATCH = 102;
    public static final int ERROR_CANNOT_PLAY_AD = 107;
    public static final String ERROR_DOMAIN = "com.google.ads.mediation.vungle";
    public static final int ERROR_INITIALIZATION_FAILURE = 105;
    public static final int ERROR_INVALID_SERVER_PARAMETERS = 101;
    public static final int ERROR_REQUIRES_ACTIVITY_CONTEXT = 103;
    public static final int ERROR_VUNGLE_BANNER_NULL = 106;
    public static final String KEY_APP_ID = "appid";
    private static final String TAG = "VungleMediationAdapter";
    public static final String VUNGLE_SDK_ERROR_DOMAIN = "com.vungle.warren";
    private static final HashMap<String, WeakReference<VungleMediationAdapter>> mPlacementsInUse = new HashMap<>();
    private AdConfig mAdConfig;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mMediationAdLoadCallback;
    private MediationRewardedAdCallback mMediationRewardedAdCallback;
    private String mPlacement;
    private String mUserID;

    class a implements b.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ InitializationCompleteCallback f5504a;

        a(InitializationCompleteCallback initializationCompleteCallback) {
            this.f5504a = initializationCompleteCallback;
        }

        @Override // com.google.ads.mediation.vungle.b.d
        public void onInitializeError(AdError adError) {
            Log.w(VungleMediationAdapter.TAG, adError.c());
            this.f5504a.a(adError.c());
        }

        @Override // com.google.ads.mediation.vungle.b.d
        public void onInitializeSuccess() {
            this.f5504a.b();
        }
    }

    class b implements b.d {
        b() {
        }

        @Override // com.google.ads.mediation.vungle.b.d
        public void onInitializeError(AdError adError) {
            Log.w(VungleMediationAdapter.TAG, adError.c());
            VungleMediationAdapter.this.mMediationAdLoadCallback.a(adError);
            VungleMediationAdapter.mPlacementsInUse.remove(VungleMediationAdapter.this.mPlacement);
        }

        @Override // com.google.ads.mediation.vungle.b.d
        public void onInitializeSuccess() {
            Vungle.setIncentivizedFields(VungleMediationAdapter.this.mUserID, null, null, null, null);
            VungleMediationAdapter.mPlacementsInUse.put(VungleMediationAdapter.this.mPlacement, new WeakReference(VungleMediationAdapter.this));
            if (!Vungle.canPlayAd(VungleMediationAdapter.this.mPlacement)) {
                Vungle.loadAd(VungleMediationAdapter.this.mPlacement, VungleMediationAdapter.this);
            } else {
                VungleMediationAdapter vungleMediationAdapter = VungleMediationAdapter.this;
                vungleMediationAdapter.mMediationRewardedAdCallback = (MediationRewardedAdCallback) vungleMediationAdapter.mMediationAdLoadCallback.onSuccess(VungleMediationAdapter.this);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VungleMediationAdapter.this.mMediationAdLoadCallback != null) {
                VungleMediationAdapter vungleMediationAdapter = VungleMediationAdapter.this;
                vungleMediationAdapter.mMediationRewardedAdCallback = (MediationRewardedAdCallback) vungleMediationAdapter.mMediationAdLoadCallback.onSuccess(VungleMediationAdapter.this);
            }
            VungleMediationAdapter.mPlacementsInUse.put(VungleMediationAdapter.this.mPlacement, new WeakReference(VungleMediationAdapter.this));
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VungleMediationAdapter.this.mMediationRewardedAdCallback != null) {
                VungleMediationAdapter.this.mMediationRewardedAdCallback.c();
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ String f5509o;

        e(String str) {
            this.f5509o = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VungleMediationAdapter.this.mMediationRewardedAdCallback != null) {
                VungleMediationAdapter.this.mMediationRewardedAdCallback.f();
            }
            VungleMediationAdapter.mPlacementsInUse.remove(this.f5509o);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VungleMediationAdapter.this.mMediationRewardedAdCallback != null) {
                VungleMediationAdapter.this.mMediationRewardedAdCallback.h();
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VungleMediationAdapter.this.mMediationRewardedAdCallback != null) {
                VungleMediationAdapter.this.mMediationRewardedAdCallback.b();
                VungleMediationAdapter.this.mMediationRewardedAdCallback.a(new i("vungle", 1));
            }
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ AdError f5513o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ String f5514p;

        h(AdError adError, String str) {
            this.f5513o = adError;
            this.f5514p = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VungleMediationAdapter.this.mMediationAdLoadCallback != null) {
                VungleMediationAdapter.this.mMediationAdLoadCallback.a(this.f5513o);
            }
            if (VungleMediationAdapter.this.mMediationRewardedAdCallback != null) {
                VungleMediationAdapter.this.mMediationRewardedAdCallback.d(new AdError(101, "Failed to show ad from Vungle.", VungleMediationAdapter.ERROR_DOMAIN));
            }
            VungleMediationAdapter.mPlacementsInUse.remove(this.f5514p);
        }
    }

    private static class i implements RewardItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5517b;

        i(String str, int i10) {
            this.f5516a = str;
            this.f5517b = i10;
        }

        @Override // com.google.android.gms.ads.rewarded.RewardItem
        public String o() {
            return this.f5516a;
        }

        @Override // com.google.android.gms.ads.rewarded.RewardItem
        public int p() {
            return this.f5517b;
        }
    }

    public static AdError getAdError(VungleException vungleException) {
        return new AdError(vungleException.getExceptionCode(), vungleException.getLocalizedMessage(), "com.vungle.warren");
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void creativeId(String str) {
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        String[] strArrSplit = BuildConfig.VERSION_NAME.split("\\.");
        if (strArrSplit.length >= 3) {
            return new VersionInfo(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]));
        }
        Log.w(TAG, String.format("Unexpected SDK version format: %s. Returning 0.0.0 for SDK version.", BuildConfig.VERSION_NAME));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        String[] strArrSplit = "6.10.2.0".split("\\.");
        if (strArrSplit.length >= 4) {
            return new VersionInfo(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), (Integer.parseInt(strArrSplit[2]) * 100) + Integer.parseInt(strArrSplit[3]));
        }
        Log.w(TAG, String.format("Unexpected adapter version format: %s. Returning 0.0.0 for adapter version.", "6.10.2.0"));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        if (Vungle.isInitialized()) {
            initializationCompleteCallback.b();
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator<MediationConfiguration> it = list.iterator();
        while (it.hasNext()) {
            String string = it.next().a().getString(KEY_APP_ID);
            if (!TextUtils.isEmpty(string)) {
                hashSet.add(string);
            }
        }
        int size = hashSet.size();
        if (size > 0) {
            String str = (String) hashSet.iterator().next();
            if (size > 1) {
                Log.w(TAG, String.format("Multiple '%s' entries found: %s. Using '%s' to initialize the Vungle SDK.", KEY_APP_ID, hashSet.toString(), str));
            }
            com.google.ads.mediation.vungle.b.b().c(str, context.getApplicationContext(), new a(initializationCompleteCallback));
            return;
        }
        if (initializationCompleteCallback != null) {
            AdError adError = new AdError(101, "Missing or Invalid App ID.", ERROR_DOMAIN);
            Log.w(TAG, adError.c());
            initializationCompleteCallback.a(adError.c());
        }
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        this.mMediationAdLoadCallback = mediationAdLoadCallback;
        Bundle bundleB = mediationRewardedAdConfiguration.b();
        Bundle bundleC = mediationRewardedAdConfiguration.c();
        if (bundleB != null) {
            this.mUserID = bundleB.getString(VungleExtrasBuilder.EXTRA_USER_ID);
        }
        String strFindPlacement = VungleManager.getInstance().findPlacement(bundleB, bundleC);
        this.mPlacement = strFindPlacement;
        if (TextUtils.isEmpty(strFindPlacement)) {
            AdError adError = new AdError(101, "Failed to load ad from Vungle. Missing or invalid Placement ID.", ERROR_DOMAIN);
            Log.w(TAG, adError.c());
            mediationAdLoadCallback.a(adError);
            return;
        }
        HashMap<String, WeakReference<VungleMediationAdapter>> map = mPlacementsInUse;
        if (map.containsKey(this.mPlacement) && map.get(this.mPlacement).get() != null) {
            AdError adError2 = new AdError(104, "Only a maximum of one ad can be loaded per placement.", ERROR_DOMAIN);
            Log.w(TAG, adError2.c());
            mediationAdLoadCallback.a(adError2);
            return;
        }
        String string = bundleC.getString(KEY_APP_ID);
        if (!TextUtils.isEmpty(string)) {
            this.mAdConfig = VungleExtrasBuilder.adConfigWithNetworkExtras(bundleB, false);
            com.google.ads.mediation.vungle.b.b().c(string, mediationRewardedAdConfiguration.a(), new b());
        } else {
            AdError adError3 = new AdError(101, "Failed to load ad from Vungle. Missing or Invalid App ID.", ERROR_DOMAIN);
            Log.w(TAG, adError3.c());
            mediationAdLoadCallback.a(adError3);
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdClick(String str) {
        this.mHandler.post(new f());
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(String str) {
        this.mHandler.post(new e(str));
    }

    @Override // com.vungle.warren.PlayAdCallback
    @Deprecated
    public void onAdEnd(String str, boolean z10, boolean z11) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdLeftApplication(String str) {
    }

    @Override // com.vungle.warren.LoadAdCallback
    public void onAdLoad(String str) {
        this.mHandler.post(new c());
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdRewarded(String str) {
        this.mHandler.post(new g());
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdStart(String str) {
        this.mHandler.post(new d());
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdViewed(String str) {
        this.mMediationRewardedAdCallback.e();
        this.mMediationRewardedAdCallback.g();
    }

    @Override // com.vungle.warren.LoadAdCallback, com.vungle.warren.PlayAdCallback
    public void onError(String str, VungleException vungleException) {
        AdError adError = getAdError(vungleException);
        Log.w(TAG, adError.c());
        this.mHandler.post(new h(adError, str));
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        Vungle.playAd(this.mPlacement, this.mAdConfig, this);
    }
}
