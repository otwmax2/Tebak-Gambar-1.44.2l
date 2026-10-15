package com.vungle.warren;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.vungle.warren.AdConfig;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import com.vungle.warren.persistence.FutureResult;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.utility.Executors;
import com.vungle.warren.utility.TimeoutProvider;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class Banners {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f27760a = "Banners";

    private static void c(String str, LoadAdCallback loadAdCallback, @VungleException.ExceptionCode int i10) {
        VungleException vungleException = new VungleException(i10);
        if (loadAdCallback != null) {
            loadAdCallback.onError(str, vungleException);
        }
        VungleLogger.error("Banners#onLoadError", "Banner load error: " + vungleException.getLocalizedMessage());
    }

    public static boolean canPlayAd(String str, AdConfig.AdSize adSize) {
        return canPlayAd(str, null, adSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(String str, PlayAdCallback playAdCallback, @VungleException.ExceptionCode int i10) {
        VungleException vungleException = new VungleException(i10);
        if (playAdCallback != null) {
            playAdCallback.onError(str, vungleException);
        }
        VungleLogger.error("Banners#onPlaybackError", "Banner play error: " + vungleException.getLocalizedMessage());
    }

    @Deprecated
    public static VungleBanner getBanner(String str, AdConfig.AdSize adSize, PlayAdCallback playAdCallback) {
        return getBanner(str, new BannerAdConfig(adSize), playAdCallback);
    }

    public static void loadBanner(String str, BannerAdConfig bannerAdConfig, LoadAdCallback loadAdCallback) {
        loadBanner(str, null, bannerAdConfig, loadAdCallback);
    }

    public static boolean canPlayAd(final String str, final String str2, final AdConfig.AdSize adSize) {
        if (!AdConfig.AdSize.isBannerAdSize(adSize)) {
            Log.e(f27760a, "Invalid Ad Size. Cannot check loaded status of non banner size placements.");
            return false;
        }
        final Context contextAppContext = Vungle.appContext();
        if (contextAppContext == null) {
            Log.e(f27760a, "Context is null");
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            Log.e(f27760a, "PlacementId is null");
            return false;
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(contextAppContext);
        Executors executors = (Executors) serviceLocatorF.h(Executors.class);
        TimeoutProvider timeoutProvider = (TimeoutProvider) serviceLocatorF.h(TimeoutProvider.class);
        return Boolean.TRUE.equals(new FutureResult(executors.getApiExecutor().submit(new Callable<Boolean>() { // from class: com.vungle.warren.Banners.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() {
                AdConfig.AdSize adSize2;
                if (!Vungle.isInitialized()) {
                    Log.e(Banners.f27760a, "Vungle is not initialized");
                    return Boolean.FALSE;
                }
                Repository repository = (Repository) ServiceLocator.f(contextAppContext).h(Repository.class);
                AdRequest adRequest = new AdRequest(str, AdMarkup.fromString(str2));
                Placement placement = (Placement) repository.load(str, Placement.class).get();
                if (placement == null) {
                    return Boolean.FALSE;
                }
                if (placement.isMultipleHBPEnabled() && adRequest.getEventId() == null) {
                    return Boolean.FALSE;
                }
                Advertisement advertisement = repository.findValidAdvertisementForPlacement(str, adRequest.getEventId()).get();
                if (advertisement == null) {
                    return Boolean.FALSE;
                }
                AdConfig.AdSize adSize3 = placement.getAdSize();
                AdConfig.AdSize adSize4 = advertisement.getAdConfig().getAdSize();
                return (((placement.isMultipleHBPEnabled() && AdConfig.AdSize.isNonMrecBannerAdSize(adSize3) && AdConfig.AdSize.isNonMrecBannerAdSize(adSize4)) ? true : adSize == AdConfig.AdSize.VUNGLE_MREC && AdConfig.AdSize.isDefaultAdSize(adSize3) && AdConfig.AdSize.isDefaultAdSize(adSize4) && placement.getPlacementAdType() == 3) || ((adSize2 = adSize) == adSize3 && adSize2 == adSize4)) ? Boolean.valueOf(Vungle.canPlayAd(advertisement)) : Boolean.FALSE;
            }
        })).get(timeoutProvider.getTimeout(), TimeUnit.MILLISECONDS));
    }

    public static VungleBanner getBanner(String str, BannerAdConfig bannerAdConfig, PlayAdCallback playAdCallback) {
        return getBanner(str, null, bannerAdConfig, playAdCallback);
    }

    @Deprecated
    public static void loadBanner(String str, AdConfig.AdSize adSize, LoadAdCallback loadAdCallback) {
        if (adSize == null) {
            c(str, loadAdCallback, 28);
        } else {
            loadBanner(str, new BannerAdConfig(adSize), loadAdCallback);
        }
    }

    public static VungleBanner getBanner(final String str, final String str2, BannerAdConfig bannerAdConfig, PlayAdCallback playAdCallback) {
        VungleLogger.debug("VungleBanner#getBanner", "getBanner call invoked");
        Context contextAppContext = Vungle.appContext();
        if (contextAppContext == null) {
            Log.e(f27760a, "Vungle is not initialized, returned VungleNativeAd = null");
            d(str, playAdCallback, 9);
            return null;
        }
        final AdConfig.AdSize adSize = bannerAdConfig.getAdSize();
        final ServiceLocator serviceLocatorF = ServiceLocator.f(contextAppContext);
        Executors executors = (Executors) serviceLocatorF.h(Executors.class);
        TimeoutProvider timeoutProvider = (TimeoutProvider) serviceLocatorF.h(TimeoutProvider.class);
        VungleSettings vungleSettings = ((RuntimeValues) ServiceLocator.f(contextAppContext).h(RuntimeValues.class)).f27848c.get();
        final PlayAdCallbackWrapper playAdCallbackWrapper = new PlayAdCallbackWrapper(executors.getUIExecutor(), playAdCallback);
        Pair pair = (Pair) new FutureResult(executors.getBackgroundExecutor().submit(new Callable<Pair<Boolean, Placement>>() { // from class: com.vungle.warren.Banners.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Pair<Boolean, Placement> call() throws Exception {
                if (!Vungle.isInitialized()) {
                    Log.e(Banners.f27760a, "Vungle is not initialized.");
                    Banners.d(str, playAdCallbackWrapper, 9);
                    return new Pair<>(Boolean.FALSE, null);
                }
                if (TextUtils.isEmpty(str)) {
                    Banners.d(str, playAdCallbackWrapper, 13);
                    return new Pair<>(Boolean.FALSE, null);
                }
                Placement placement = (Placement) ((Repository) serviceLocatorF.h(Repository.class)).load(str, Placement.class).get();
                if (placement == null) {
                    Banners.d(str, playAdCallbackWrapper, 13);
                    return new Pair<>(Boolean.FALSE, null);
                }
                if (!AdConfig.AdSize.isBannerAdSize(adSize)) {
                    Banners.d(str, playAdCallbackWrapper, 30);
                    return new Pair<>(Boolean.FALSE, placement);
                }
                if (Banners.canPlayAd(str, str2, adSize)) {
                    return new Pair<>(Boolean.TRUE, placement);
                }
                Banners.d(str, playAdCallbackWrapper, 10);
                return new Pair<>(Boolean.FALSE, placement);
            }
        })).get(timeoutProvider.getTimeout(), TimeUnit.MILLISECONDS);
        if (pair == null) {
            d(str, playAdCallback, 13);
            return null;
        }
        if (((Boolean) pair.first).booleanValue()) {
            return new VungleBanner(contextAppContext, str, AdMarkup.fromString(str2), (vungleSettings == null || !vungleSettings.getBannerRefreshDisabled()) ? adSize != AdConfig.AdSize.VUNGLE_MREC ? ((Placement) pair.second).getAdRefreshDuration() : 0 : 0, bannerAdConfig, playAdCallback);
        }
        return null;
    }

    public static void loadBanner(String str, String str2, BannerAdConfig bannerAdConfig, LoadAdCallback loadAdCallback) {
        VungleLogger.debug("Banners#loadBanner", "loadBanner API call invoked");
        if (Vungle.appContext() != null && Vungle.isInitialized()) {
            AdConfig adConfig = new AdConfig(bannerAdConfig);
            if (!AdConfig.AdSize.isBannerAdSize(adConfig.getAdSize())) {
                c(str, loadAdCallback, 30);
                return;
            } else {
                Vungle.loadAdInternal(str, AdMarkup.fromString(str2), adConfig, loadAdCallback);
                return;
            }
        }
        c(str, loadAdCallback, 9);
    }
}
