package com.vungle.warren;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.core.content.b;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.security.CertificateUtil;
import com.google.gson.f;
import com.google.gson.g;
import com.google.gson.o;
import com.vungle.warren.AdConfig;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.VungleSettings;
import com.vungle.warren.downloader.DownloadRequest;
import com.vungle.warren.downloader.Downloader;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.log.LogManager;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.Placement;
import com.vungle.warren.network.Call;
import com.vungle.warren.network.Callback;
import com.vungle.warren.network.Response;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.FutureResult;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.AnalyticsJob;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.view.VungleNativeView;
import com.vungle.warren.utility.ActivityManager;
import com.vungle.warren.utility.Executors;
import com.vungle.warren.utility.TimeoutProvider;
import com.vungle.warren.utility.platform.Platform;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import u0.a;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class Vungle {
    private static volatile boolean isInitialized;
    private volatile String appID;
    private volatile String consentVersion;
    private Context context;
    static final Vungle _instance = new Vungle();
    private static final String TAG = Vungle.class.getCanonicalName();
    private static AtomicBoolean isInitializing = new AtomicBoolean(false);
    private static AtomicBoolean isDepInit = new AtomicBoolean(false);
    private static CacheManager.Listener cacheListener = new CacheManager.Listener() { // from class: com.vungle.warren.Vungle.16
        @Override // com.vungle.warren.persistence.CacheManager.Listener
        public void onCacheChanged() {
            Vungle vungle = Vungle._instance;
            if (vungle.context == null) {
                return;
            }
            Vungle.stopPlaying();
            ServiceLocator serviceLocatorF = ServiceLocator.f(vungle.context);
            CacheManager cacheManager = (CacheManager) serviceLocatorF.h(CacheManager.class);
            Downloader downloader = (Downloader) serviceLocatorF.h(Downloader.class);
            if (cacheManager.getCache() != null) {
                List<DownloadRequest> allRequests = downloader.getAllRequests();
                String path = cacheManager.getCache().getPath();
                for (DownloadRequest downloadRequest : allRequests) {
                    if (!downloadRequest.path.startsWith(path)) {
                        downloader.cancel(downloadRequest);
                    }
                }
            }
            downloader.init();
        }
    };
    private final AtomicReference<Consent> consent = new AtomicReference<>();
    private final AtomicReference<Consent> ccpaStatus = new AtomicReference<>();
    private Map<String, Boolean> playOperations = new ConcurrentHashMap();
    private f gson = new g().b();
    private AtomicInteger hbpOrdinalViewCount = new AtomicInteger(0);

    /* JADX INFO: renamed from: com.vungle.warren.Vungle$9, reason: invalid class name */
    class AnonymousClass9 implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ String f27917o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ String f27918p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ AdLoader f27919q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ PlayAdCallback f27920r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ Repository f27921s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ AdConfig f27922t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ VungleApiClient f27923u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final /* synthetic */ Executors f27924v;

        AnonymousClass9(String str, String str2, AdLoader adLoader, PlayAdCallback playAdCallback, Repository repository, AdConfig adConfig, VungleApiClient vungleApiClient, Executors executors) {
            this.f27917o = str;
            this.f27918p = str2;
            this.f27919q = adLoader;
            this.f27920r = playAdCallback;
            this.f27921s = repository;
            this.f27922t = adConfig;
            this.f27923u = vungleApiClient;
            this.f27924v = executors;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            final AdRequest adRequest = new AdRequest(this.f27917o, AdMarkup.fromString(this.f27918p));
            Boolean bool = Boolean.TRUE;
            Vungle vungle = Vungle._instance;
            if (bool.equals(vungle.playOperations.get(this.f27917o)) || this.f27919q.isLoading(adRequest)) {
                Vungle.onPlayError(this.f27917o, this.f27920r, new VungleException(8));
                return;
            }
            final Placement placement = (Placement) this.f27921s.load(this.f27917o, Placement.class).get();
            if (placement == null) {
                Vungle.onPlayError(this.f27917o, this.f27920r, new VungleException(13));
                return;
            }
            if (AdConfig.AdSize.isBannerAdSize(placement.getAdSize())) {
                Log.e(Vungle.TAG, "Incorrect API for Banners and MREC");
                Vungle.onPlayError(this.f27917o, this.f27920r, new VungleException(28));
                return;
            }
            final Advertisement advertisement = this.f27921s.findPotentiallyExpiredAd(this.f27917o, adRequest.getEventId()).get();
            try {
                boolean z11 = advertisement != null && advertisement.getExpireTime() < System.currentTimeMillis() / 1000;
                if (!Vungle.canPlayAd(advertisement) || z11) {
                    if (advertisement != null && (advertisement.getState() == 1 || z11)) {
                        this.f27921s.saveAndApplyState(advertisement, this.f27917o, 4);
                        this.f27919q.loadEndlessIfNeeded(placement, placement.getAdSize(), 0L);
                    }
                    if (z11) {
                        Vungle.onPlayError(adRequest.getPlacementId(), this.f27920r, new VungleException(37));
                        return;
                    }
                    z10 = true;
                } else {
                    advertisement.configure(this.f27922t);
                    this.f27921s.save(advertisement);
                    z10 = false;
                }
                if (vungle.context != null) {
                    if (this.f27923u.j()) {
                        final boolean z12 = z10;
                        this.f27923u.u(placement.getId(), placement.isAutoCached(), z10 ? com.vungle.mediation.BuildConfig.FLAVOR : advertisement.getAdToken()).enqueue(new Callback<o>() { // from class: com.vungle.warren.Vungle.9.1
                            @Override // com.vungle.warren.network.Callback
                            public void onFailure(Call<o> call, Throwable th) {
                                AnonymousClass9.this.f27924v.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.Vungle.9.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        if (!z12) {
                                            Vungle.renderAd(adRequest, AnonymousClass9.this.f27920r, placement, advertisement);
                                        } else {
                                            AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                                            Vungle.onPlayError(anonymousClass9.f27917o, anonymousClass9.f27920r, new VungleException(1));
                                        }
                                    }
                                });
                            }

                            @Override // com.vungle.warren.network.Callback
                            public void onResponse(Call<o> call, final Response<o> response) {
                                AnonymousClass9.this.f27924v.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.Vungle.9.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        o oVar;
                                        Advertisement advertisement2 = null;
                                        if (response.isSuccessful() && (oVar = (o) response.body()) != null && oVar.E("ad")) {
                                            try {
                                                Advertisement advertisement3 = new Advertisement(oVar.C("ad"));
                                                try {
                                                    advertisement3.configure(AnonymousClass9.this.f27922t);
                                                    AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                                                    anonymousClass9.f27921s.saveAndApplyState(advertisement3, anonymousClass9.f27917o, 0);
                                                    advertisement2 = advertisement3;
                                                } catch (IllegalArgumentException unused) {
                                                    advertisement2 = advertisement3;
                                                    VungleLogger.debug("Vungle#playAd", "streaming ads IllegalArgumentException");
                                                    Log.v(Vungle.TAG, "Will Play Ad did not respond with a replacement. Move on.");
                                                } catch (Exception e10) {
                                                    e = e10;
                                                    advertisement2 = advertisement3;
                                                    VungleLogger.error("Vungle#playAd", "streaming ads Exception :" + e.getLocalizedMessage());
                                                    Log.e(Vungle.TAG, "Error using will_play_ad!", e);
                                                }
                                            } catch (IllegalArgumentException unused2) {
                                            } catch (Exception e11) {
                                                e = e11;
                                            }
                                        }
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        if (!z12) {
                                            Vungle.renderAd(adRequest, AnonymousClass9.this.f27920r, placement, advertisement);
                                        } else if (advertisement2 != null) {
                                            Vungle.renderAd(adRequest, AnonymousClass9.this.f27920r, placement, advertisement2);
                                        } else {
                                            AnonymousClass9 anonymousClass92 = AnonymousClass9.this;
                                            Vungle.onPlayError(anonymousClass92.f27917o, anonymousClass92.f27920r, new VungleException(1));
                                        }
                                    }
                                });
                            }
                        });
                    } else if (z10) {
                        Vungle.onPlayError(this.f27917o, this.f27920r, new VungleException(1));
                    } else {
                        Vungle.renderAd(adRequest, this.f27920r, placement, advertisement);
                    }
                }
            } catch (DatabaseHelper.DBException unused) {
                Vungle.onPlayError(this.f27917o, this.f27920r, new VungleException(26));
            }
        }
    }

    @Keep
    public enum Consent {
        OPTED_IN,
        OPTED_OUT
    }

    private Vungle() {
    }

    static Context appContext() {
        Vungle vungle = _instance;
        if (vungle != null) {
            return vungle.context;
        }
        return null;
    }

    public static boolean canPlayAd(String str) {
        return canPlayAd(str, null);
    }

    private static void clearAdvertisements() {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized");
        } else {
            final ServiceLocator serviceLocatorF = ServiceLocator.f(_instance.context);
            ((Executors) serviceLocatorF.h(Executors.class)).getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.Vungle.12
                @Override // java.lang.Runnable
                public void run() {
                    ((Downloader) serviceLocatorF.h(Downloader.class)).cancelAll();
                    ((AdLoader) serviceLocatorF.h(AdLoader.class)).clear();
                    final Repository repository = (Repository) serviceLocatorF.h(Repository.class);
                    ((Executors) serviceLocatorF.h(Executors.class)).getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.Vungle.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            List list = (List) repository.loadAll(Advertisement.class).get();
                            if (list != null) {
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    try {
                                        repository.deleteAdvertisement(((Advertisement) it.next()).getId());
                                    } catch (DatabaseHelper.DBException unused) {
                                    }
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    private static void clearCache() {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized");
        } else {
            final ServiceLocator serviceLocatorF = ServiceLocator.f(_instance.context);
            ((Executors) serviceLocatorF.h(Executors.class)).getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.Vungle.11
                @Override // java.lang.Runnable
                public void run() {
                    ((Downloader) serviceLocatorF.h(Downloader.class)).cancelAll();
                    ((AdLoader) serviceLocatorF.h(AdLoader.class)).clear();
                    ((Repository) serviceLocatorF.h(Repository.class)).clearAllData();
                    Vungle vungle = Vungle._instance;
                    vungle.playOperations.clear();
                    vungle.ccpaStatus.set(null);
                    vungle.configure(((RuntimeValues) serviceLocatorF.h(RuntimeValues.class)).f27847b.get(), true);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:182:0x04a5  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void configure(com.vungle.warren.InitCallback r32, boolean r33) {
        /*
            Method dump skipped, instruction units count: 1248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.Vungle.configure(com.vungle.warren.InitCallback, boolean):void");
    }

    protected static void deInit() {
        Vungle vungle = _instance;
        Context context = vungle.context;
        if (context != null) {
            ServiceLocator serviceLocatorF = ServiceLocator.f(context);
            if (serviceLocatorF.j(CacheManager.class)) {
                ((CacheManager) serviceLocatorF.h(CacheManager.class)).removeListener(cacheListener);
            }
            if (serviceLocatorF.j(Downloader.class)) {
                ((Downloader) serviceLocatorF.h(Downloader.class)).cancelAll();
            }
            if (serviceLocatorF.j(AdLoader.class)) {
                ((AdLoader) serviceLocatorF.h(AdLoader.class)).clear();
            }
            vungle.playOperations.clear();
        }
        ServiceLocator.e();
        isInitialized = false;
        isDepInit.set(false);
        isInitializing.set(false);
    }

    static Context getAppContext() {
        return _instance.context;
    }

    public static String getAvailableBidTokens(Context context) {
        return getAvailableBidTokensBySize(context, 0);
    }

    public static String getAvailableBidTokensBySize(final Context context, final int i10) {
        if (context == null) {
            Log.e(TAG, "Context is null");
            return null;
        }
        if (i10 <= 0) {
            i10 = 2147483646;
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(context);
        return (String) new FutureResult(((Executors) serviceLocatorF.h(Executors.class)).getApiExecutor().submit(new Callable<String>() { // from class: com.vungle.warren.Vungle.15
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                Vungle vungle = Vungle._instance;
                vungle.hbpOrdinalViewCount.incrementAndGet();
                List<String> list = ((Repository) ServiceLocator.f(context).h(Repository.class)).getAvailableBidTokens(Vungle.getAvailableSizeForHBT(i10, "2", vungle.hbpOrdinalViewCount.toString()), ",".getBytes().length).get();
                return "2" + CertificateUtil.DELIMITER + new String(Base64.encode((((list == null || list.isEmpty()) ? com.vungle.mediation.BuildConfig.FLAVOR : TextUtils.join(",", list)) + CertificateUtil.DELIMITER + vungle.hbpOrdinalViewCount.toString()).getBytes(), 2), Charset.defaultCharset());
            }
        })).get(((TimeoutProvider) serviceLocatorF.h(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
    }

    static int getAvailableSizeForHBT(int i10, String str, String str2) {
        double dFloor = Math.floor(((i10 - str.getBytes().length) - CertificateUtil.DELIMITER.getBytes().length) / 4) * 3.0d;
        double length = CertificateUtil.DELIMITER.getBytes().length;
        Double.isNaN(length);
        double d10 = dFloor - length;
        double length2 = str2.getBytes().length;
        Double.isNaN(length2);
        double d11 = (int) (d10 - length2);
        Double.isNaN(d11);
        return (int) Math.max(Math.round(d11 / 4.0d) * 4, 0L);
    }

    public static Consent getCCPAStatus() {
        return _instance.ccpaStatus.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Consent getConsent(Cookie cookie) {
        if (cookie == null) {
            return null;
        }
        return Cookie.CONSENT_STATUS_OPTED_IN.equals(cookie.getString("consent_status")) ? Consent.OPTED_IN : Consent.OPTED_OUT;
    }

    public static String getConsentMessageVersion() {
        return _instance.consentVersion;
    }

    public static Consent getConsentStatus() {
        if (!isInitialized() || !isDepInit.get()) {
            return _instance.consent.get();
        }
        Vungle vungle = _instance;
        ServiceLocator serviceLocatorF = ServiceLocator.f(vungle.context);
        Cookie cookie = (Cookie) ((Repository) serviceLocatorF.h(Repository.class)).load(Cookie.CONSENT_COOKIE, Cookie.class).get(((TimeoutProvider) serviceLocatorF.h(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
        if (cookie == null) {
            return null;
        }
        String string = cookie.getString("consent_status");
        string.hashCode();
        switch (string) {
            case "opted_in":
                AtomicReference<Consent> atomicReference = vungle.consent;
                Consent consent = Consent.OPTED_IN;
                atomicReference.set(consent);
                break;
            case "opted_out_by_timeout":
            case "opted_out":
                AtomicReference<Consent> atomicReference2 = vungle.consent;
                Consent consent2 = Consent.OPTED_OUT;
                atomicReference2.set(consent2);
                break;
        }
        return null;
    }

    @Deprecated
    public static VungleNativeAd getNativeAd(String str, AdConfig adConfig, PlayAdCallback playAdCallback) {
        return getNativeAd(str, null, adConfig, playAdCallback);
    }

    static VungleNativeView getNativeAdInternal(String str, AdMarkup adMarkup, AdConfig adConfig, PlayAdCallback playAdCallback) {
        Vungle vungle = _instance;
        if (vungle.context == null) {
            Log.e(TAG, "Vungle is not initialized, returned VungleNativeAd = null");
            onPlayError(str, playAdCallback, new VungleException(9));
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            onPlayError(str, playAdCallback, new VungleException(13));
            return null;
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(vungle.context);
        AdLoader adLoader = (AdLoader) serviceLocatorF.h(AdLoader.class);
        AdRequest adRequest = new AdRequest(str, adMarkup);
        boolean zIsLoading = adLoader.isLoading(adRequest);
        if (Boolean.TRUE.equals(vungle.playOperations.get(str)) || zIsLoading) {
            Log.e(TAG, "Playing or Loading operation ongoing. Playing " + vungle.playOperations.get(adRequest.getPlacementId()) + " Loading: " + zIsLoading);
            onPlayError(str, playAdCallback, new VungleException(8));
            return null;
        }
        try {
            return new VungleNativeView(vungle.context.getApplicationContext(), adRequest, adConfig, (PresentationFactory) serviceLocatorF.h(PresentationFactory.class), new AdEventListener(adRequest, vungle.playOperations, playAdCallback, (Repository) serviceLocatorF.h(Repository.class), adLoader, (JobRunner) serviceLocatorF.h(JobRunner.class), (VisionController) serviceLocatorF.h(VisionController.class), null, null));
        } catch (Exception e10) {
            VungleLogger.error("Vungle#playAd", "Native ad fail: " + e10.getLocalizedMessage());
            if (playAdCallback != null) {
                playAdCallback.onError(str, new VungleException(10));
            }
            return null;
        }
    }

    static Collection<Advertisement> getValidAdvertisementModels(String str) {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized return empty placements list");
            return Collections.emptyList();
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(_instance.context);
        List<Advertisement> list = ((Repository) serviceLocatorF.h(Repository.class)).findValidAdvertisementsForPlacement(str, null).get(((TimeoutProvider) serviceLocatorF.h(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
        return list == null ? Collections.emptyList() : list;
    }

    static Collection<Placement> getValidPlacementModels() {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized return empty placements list");
            return Collections.emptyList();
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(_instance.context);
        Collection<Placement> collection = ((Repository) serviceLocatorF.h(Repository.class)).loadValidPlacements().get(((TimeoutProvider) serviceLocatorF.h(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
        return collection == null ? Collections.emptyList() : collection;
    }

    public static Collection<String> getValidPlacements() {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized return empty placements list");
            return Collections.emptyList();
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(_instance.context);
        Collection<String> collection = ((Repository) serviceLocatorF.h(Repository.class)).getValidPlacementIds().get(((TimeoutProvider) serviceLocatorF.h(TimeoutProvider.class)).getTimeout(), TimeUnit.MILLISECONDS);
        return collection == null ? Collections.emptyList() : collection;
    }

    @Deprecated
    public static void init(Collection<String> collection, String str, Context context, InitCallback initCallback) throws IllegalArgumentException {
        init(str, context, initCallback, new VungleSettings.Builder().build());
    }

    public static boolean isInitialized() {
        return isInitialized && _instance.context != null;
    }

    public static void loadAd(String str, LoadAdCallback loadAdCallback) {
        loadAd(str, new AdConfig(), loadAdCallback);
    }

    static void loadAdInternal(String str, AdMarkup adMarkup, AdConfig adConfig, LoadAdCallback loadAdCallback) {
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized");
            onLoadError(str, loadAdCallback, new VungleException(9));
            return;
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(_instance.context);
        LoadAdCallbackWrapper loadAdCallbackWrapper = new LoadAdCallbackWrapper(((Executors) serviceLocatorF.h(Executors.class)).getUIExecutor(), loadAdCallback);
        AdLoader adLoader = (AdLoader) serviceLocatorF.h(AdLoader.class);
        AdRequest adRequest = new AdRequest(str, adMarkup);
        if (adConfig == null) {
            adConfig = new AdConfig();
        }
        adLoader.load(adRequest, adConfig, loadAdCallbackWrapper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onInitError(InitCallback initCallback, VungleException vungleException) {
        if (initCallback != null) {
            initCallback.onError(vungleException);
        }
        if (vungleException != null) {
            VungleLogger.error("Vungle#init", (vungleException.getLocalizedMessage() == null || !vungleException.getLocalizedMessage().isEmpty()) ? Integer.toString(vungleException.getExceptionCode()) : vungleException.getLocalizedMessage());
        }
    }

    private static void onLoadError(String str, LoadAdCallback loadAdCallback, VungleException vungleException) {
        if (loadAdCallback != null) {
            loadAdCallback.onError(str, vungleException);
        }
        if (vungleException != null) {
            VungleLogger.error("Vungle#loadAd", (vungleException.getLocalizedMessage() == null || !vungleException.getLocalizedMessage().isEmpty()) ? Integer.toString(vungleException.getExceptionCode()) : vungleException.getLocalizedMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onPlayError(String str, PlayAdCallback playAdCallback, VungleException vungleException) {
        if (playAdCallback != null) {
            playAdCallback.onError(str, vungleException);
        }
        if (vungleException != null) {
            VungleLogger.error("Vungle#playAd", (vungleException.getLocalizedMessage() == null || !vungleException.getLocalizedMessage().isEmpty()) ? Integer.toString(vungleException.getExceptionCode()) : vungleException.getLocalizedMessage());
        }
    }

    public static void playAd(String str, AdConfig adConfig, PlayAdCallback playAdCallback) {
        playAd(str, null, adConfig, playAdCallback);
    }

    static void reConfigure() {
        Vungle vungle = _instance;
        Context context = vungle.context;
        if (context == null) {
            return;
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(context);
        Executors executors = (Executors) serviceLocatorF.h(Executors.class);
        final RuntimeValues runtimeValues = (RuntimeValues) serviceLocatorF.h(RuntimeValues.class);
        if (isInitialized()) {
            executors.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.Vungle.2
                @Override // java.lang.Runnable
                public void run() {
                    Vungle._instance.configure(runtimeValues.f27847b.get(), true);
                }
            });
        } else {
            init(vungle.appID, vungle.context, runtimeValues.f27847b.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void renderAd(AdRequest adRequest, PlayAdCallback playAdCallback, Placement placement, Advertisement advertisement) {
        if (!isInitialized()) {
            Log.e(TAG, "Sdk is not initialized");
            return;
        }
        Vungle vungle = _instance;
        ServiceLocator serviceLocatorF = ServiceLocator.f(vungle.context);
        AdActivity.setEventListener(new AdEventListener(adRequest, vungle.playOperations, playAdCallback, (Repository) serviceLocatorF.h(Repository.class), (AdLoader) serviceLocatorF.h(AdLoader.class), (JobRunner) serviceLocatorF.h(JobRunner.class), (VisionController) serviceLocatorF.h(VisionController.class), placement, advertisement) { // from class: com.vungle.warren.Vungle.10
            @Override // com.vungle.warren.AdEventListener
            protected void c() {
                super.c();
                AdActivity.setEventListener(null);
            }
        });
        ActivityManager.startWhenForeground(vungle.context, AdActivity.createIntent(vungle.context, adRequest), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveGDPRConsent(final Repository repository, final Consent consent, final String str) {
        repository.load(Cookie.CONSENT_COOKIE, Cookie.class, new Repository.LoadCallback<Cookie>() { // from class: com.vungle.warren.Vungle.13
            @Override // com.vungle.warren.persistence.Repository.LoadCallback
            public void onLoaded(Cookie cookie) {
                if (cookie == null) {
                    cookie = new Cookie(Cookie.CONSENT_COOKIE);
                }
                cookie.putValue("consent_status", consent == Consent.OPTED_IN ? Cookie.CONSENT_STATUS_OPTED_IN : Cookie.CONSENT_STATUS_OPTED_OUT);
                cookie.putValue("timestamp", Long.valueOf(System.currentTimeMillis() / 1000));
                cookie.putValue("consent_source", "publisher");
                String str2 = str;
                if (str2 == null) {
                    str2 = com.vungle.mediation.BuildConfig.FLAVOR;
                }
                cookie.putValue("consent_message_version", str2);
                repository.save(cookie, null, false);
            }
        });
    }

    public static void setHeaderBiddingCallback(HeaderBiddingCallback headerBiddingCallback) {
        Context context = _instance.context;
        if (context == null) {
            return;
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(context);
        ((RuntimeValues) serviceLocatorF.h(RuntimeValues.class)).f27846a.set(new HeaderBiddingCallbackWrapper(((Executors) serviceLocatorF.h(Executors.class)).getUIExecutor(), headerBiddingCallback));
    }

    public static void setIncentivizedFields(final String str, final String str2, final String str3, final String str4, final String str5) {
        Context context = _instance.context;
        if (context == null) {
            Log.e(TAG, "Vungle is not initialized, context is null");
        } else {
            final ServiceLocator serviceLocatorF = ServiceLocator.f(context);
            ((Executors) serviceLocatorF.h(Executors.class)).getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.Vungle.7
                @Override // java.lang.Runnable
                public void run() {
                    if (!Vungle.isInitialized()) {
                        Log.e(Vungle.TAG, "Vungle is not initialized");
                        return;
                    }
                    Repository repository = (Repository) serviceLocatorF.h(Repository.class);
                    Cookie cookie = (Cookie) repository.load(Cookie.INCENTIVIZED_TEXT_COOKIE, Cookie.class).get();
                    if (cookie == null) {
                        cookie = new Cookie(Cookie.INCENTIVIZED_TEXT_COOKIE);
                    }
                    boolean zIsEmpty = TextUtils.isEmpty(str2);
                    String str6 = com.vungle.mediation.BuildConfig.FLAVOR;
                    String str7 = zIsEmpty ? com.vungle.mediation.BuildConfig.FLAVOR : str2;
                    String str8 = TextUtils.isEmpty(str3) ? com.vungle.mediation.BuildConfig.FLAVOR : str3;
                    String str9 = TextUtils.isEmpty(str4) ? com.vungle.mediation.BuildConfig.FLAVOR : str4;
                    String str10 = TextUtils.isEmpty(str5) ? com.vungle.mediation.BuildConfig.FLAVOR : str5;
                    if (!TextUtils.isEmpty(str)) {
                        str6 = str;
                    }
                    cookie.putValue("title", str7);
                    cookie.putValue(SDKConstants.PARAM_A2U_BODY, str8);
                    cookie.putValue("continue", str9);
                    cookie.putValue(JavascriptBridge.MraidHandler.CLOSE_ACTION, str10);
                    cookie.putValue(SDKConstants.PARAM_USER_ID, str6);
                    try {
                        repository.save(cookie);
                    } catch (DatabaseHelper.DBException e10) {
                        Log.e(Vungle.TAG, "Cannot save incentivized cookie", e10);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void stopPlaying() {
        Vungle vungle = _instance;
        if (vungle.context == null) {
            return;
        }
        Intent intent = new Intent(AdContract.AdvertisementBus.ACTION);
        intent.putExtra(AdContract.AdvertisementBus.COMMAND, AdContract.AdvertisementBus.STOP_ALL);
        a.b(vungle.context).d(intent);
    }

    public static void updateCCPAStatus(Consent consent) {
        if (consent == null) {
            Log.e(TAG, "Unable to update CCPA status, Invalid input parameter.");
            return;
        }
        Vungle vungle = _instance;
        vungle.ccpaStatus.set(consent);
        if (isInitialized() && isDepInit.get()) {
            updateCCPAStatus((Repository) ServiceLocator.f(vungle.context).h(Repository.class), consent);
        } else {
            Log.e(TAG, "Vungle is not initialized");
        }
    }

    public static void updateConsentStatus(Consent consent, String str) {
        if (consent == null) {
            Log.e(TAG, "Cannot set consent with a null consent, please check your code");
            return;
        }
        Vungle vungle = _instance;
        vungle.consent.set(consent);
        vungle.consentVersion = str;
        if (isInitialized() && isDepInit.get()) {
            saveGDPRConsent((Repository) ServiceLocator.f(vungle.context).h(Repository.class), vungle.consent.get(), vungle.consentVersion);
        } else {
            Log.e(TAG, "Vungle is not initialized");
        }
    }

    public static boolean canPlayAd(final String str, final String str2) {
        final Context context = _instance.context;
        if (context == null) {
            Log.e(TAG, "Context is null");
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            Log.e(TAG, "AdMarkup/PlacementId is null");
            return false;
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(context);
        Executors executors = (Executors) serviceLocatorF.h(Executors.class);
        TimeoutProvider timeoutProvider = (TimeoutProvider) serviceLocatorF.h(TimeoutProvider.class);
        return Boolean.TRUE.equals(new FutureResult(executors.getApiExecutor().submit(new Callable<Boolean>() { // from class: com.vungle.warren.Vungle.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() {
                if (!Vungle.isInitialized()) {
                    Log.e(Vungle.TAG, "Vungle is not initialized");
                    return Boolean.FALSE;
                }
                Repository repository = (Repository) ServiceLocator.f(context).h(Repository.class);
                AdRequest adRequest = new AdRequest(str, AdMarkup.fromString(str2));
                Placement placement = (Placement) repository.load(str, Placement.class).get();
                if (placement == null || !placement.isValid()) {
                    return Boolean.FALSE;
                }
                if (placement.isMultipleHBPEnabled() && adRequest.getEventId() == null) {
                    return Boolean.FALSE;
                }
                Advertisement advertisement = repository.findValidAdvertisementForPlacement(str, adRequest.getEventId()).get();
                return advertisement == null ? Boolean.FALSE : (placement.getPlacementAdType() == 1 || !(AdConfig.AdSize.isDefaultAdSize(placement.getAdSize()) || placement.getAdSize().equals(advertisement.getAdConfig().getAdSize()))) ? Boolean.FALSE : Boolean.valueOf(Vungle.canPlayAd(advertisement));
            }
        })).get(timeoutProvider.getTimeout(), TimeUnit.MILLISECONDS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Consent getCCPAStatus(Cookie cookie) {
        if (cookie == null) {
            return null;
        }
        return Cookie.CONSENT_STATUS_OPTED_OUT.equals(cookie.getString(Cookie.CCPA_CONSENT_STATUS)) ? Consent.OPTED_OUT : Consent.OPTED_IN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getConsentMessageVersion(Cookie cookie) {
        if (cookie == null) {
            return null;
        }
        return cookie.getString("consent_message_version");
    }

    public static VungleNativeAd getNativeAd(String str, String str2, AdConfig adConfig, PlayAdCallback playAdCallback) {
        if (adConfig == null) {
            adConfig = new AdConfig();
        }
        if (AdConfig.AdSize.isDefaultAdSize(adConfig.getAdSize())) {
            return getNativeAdInternal(str, AdMarkup.fromString(str2), adConfig, playAdCallback);
        }
        if (playAdCallback == null) {
            return null;
        }
        Log.e(TAG, "Please use Banners.getBanner(... ) to retrieve Banner Ad");
        playAdCallback.onError(str, new VungleException(29));
        return null;
    }

    public static void init(String str, Context context, InitCallback initCallback) throws IllegalArgumentException {
        init(str, context, initCallback, new VungleSettings.Builder().build());
    }

    public static void loadAd(String str, AdConfig adConfig, LoadAdCallback loadAdCallback) {
        loadAd(str, null, adConfig, loadAdCallback);
    }

    public static void playAd(String str, String str2, AdConfig adConfig, PlayAdCallback playAdCallback) {
        VungleLogger.debug("Vungle#playAd", "playAd call invoked");
        if (!isInitialized()) {
            Log.e(TAG, "Locator is not initialized");
            if (playAdCallback != null) {
                onPlayError(str, playAdCallback, new VungleException(9));
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            onPlayError(str, playAdCallback, new VungleException(13));
            return;
        }
        ServiceLocator serviceLocatorF = ServiceLocator.f(_instance.context);
        Executors executors = (Executors) serviceLocatorF.h(Executors.class);
        Repository repository = (Repository) serviceLocatorF.h(Repository.class);
        AdLoader adLoader = (AdLoader) serviceLocatorF.h(AdLoader.class);
        VungleApiClient vungleApiClient = (VungleApiClient) serviceLocatorF.h(VungleApiClient.class);
        executors.getBackgroundExecutor().execute(new AnonymousClass9(str, str2, adLoader, new PlayAdCallbackWrapper(executors.getUIExecutor(), playAdCallback), repository, adConfig, vungleApiClient, executors));
    }

    public static void init(final String str, final Context context, InitCallback initCallback, VungleSettings vungleSettings) throws IllegalArgumentException {
        VungleLogger.debug("Vungle#init", "init request");
        if (initCallback == null) {
            throw new IllegalArgumentException("A valid InitCallback required to ensure API calls are being made after initialize is successful");
        }
        if (context == null) {
            initCallback.onError(new VungleException(6));
            return;
        }
        final ServiceLocator serviceLocatorF = ServiceLocator.f(context);
        if (!((Platform) serviceLocatorF.h(Platform.class)).isAtLeastMinimumSDK()) {
            Log.e(TAG, "SDK is supported only for API versions 21 and above");
            initCallback.onError(new VungleException(35));
            return;
        }
        final RuntimeValues runtimeValues = (RuntimeValues) ServiceLocator.f(context).h(RuntimeValues.class);
        runtimeValues.f27848c.set(vungleSettings);
        Executors executors = (Executors) serviceLocatorF.h(Executors.class);
        if (!(initCallback instanceof InitCallbackWrapper)) {
            initCallback = new InitCallbackWrapper(executors.getUIExecutor(), initCallback);
        }
        if (str != null && !str.isEmpty()) {
            if (!(context instanceof Application)) {
                initCallback.onError(new VungleException(7));
                return;
            }
            if (isInitialized()) {
                Log.d(TAG, "init already complete");
                initCallback.onSuccess();
                VungleLogger.debug("Vungle#init", "init already complete");
                return;
            } else if (isInitializing.getAndSet(true)) {
                Log.d(TAG, "init ongoing");
                onInitError(initCallback, new VungleException(8));
                return;
            } else if (b.a(context, "android.permission.ACCESS_NETWORK_STATE") == 0 && b.a(context, "android.permission.INTERNET") == 0) {
                runtimeValues.f27847b.set(initCallback);
                executors.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.warren.Vungle.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Vungle vungle = Vungle._instance;
                        vungle.appID = str;
                        InitCallback initCallback2 = runtimeValues.f27847b.get();
                        if (!Vungle.isDepInit.getAndSet(true)) {
                            VungleLogger.c((LogManager) serviceLocatorF.h(LogManager.class), VungleLogger.LoggerLevel.DEBUG, 100);
                            CacheManager cacheManager = (CacheManager) serviceLocatorF.h(CacheManager.class);
                            VungleSettings vungleSettings2 = runtimeValues.f27848c.get();
                            if (vungleSettings2 != null && cacheManager.getBytesAvailable() < vungleSettings2.getMinimumSpaceForInit()) {
                                Vungle.onInitError(initCallback2, new VungleException(16));
                                Vungle.deInit();
                                return;
                            }
                            cacheManager.addListener(Vungle.cacheListener);
                            vungle.context = context;
                            Repository repository = (Repository) serviceLocatorF.h(Repository.class);
                            try {
                                repository.init();
                                VungleApiClient vungleApiClient = (VungleApiClient) serviceLocatorF.h(VungleApiClient.class);
                                vungleApiClient.init();
                                if (vungleSettings2 != null) {
                                    vungleApiClient.setDefaultIdFallbackDisabled(vungleSettings2.getAndroidIdOptOut());
                                }
                                ((AdLoader) serviceLocatorF.h(AdLoader.class)).init((JobRunner) serviceLocatorF.h(JobRunner.class));
                                if (vungle.consent.get() != null) {
                                    Vungle.saveGDPRConsent(repository, (Consent) vungle.consent.get(), vungle.consentVersion);
                                } else {
                                    Cookie cookie = (Cookie) repository.load(Cookie.CONSENT_COOKIE, Cookie.class).get();
                                    if (cookie == null) {
                                        vungle.consent.set(null);
                                        vungle.consentVersion = null;
                                    } else {
                                        vungle.consent.set(Vungle.getConsent(cookie));
                                        vungle.consentVersion = Vungle.getConsentMessageVersion(cookie);
                                    }
                                }
                                if (vungle.ccpaStatus.get() != null) {
                                    Vungle.updateCCPAStatus(repository, (Consent) vungle.ccpaStatus.get());
                                } else {
                                    vungle.ccpaStatus.set(Vungle.getCCPAStatus((Cookie) repository.load(Cookie.CCPA_COOKIE, Cookie.class).get()));
                                }
                            } catch (DatabaseHelper.DBException unused) {
                                Vungle.onInitError(initCallback2, new VungleException(26));
                                Vungle.deInit();
                                return;
                            }
                        }
                        Repository repository2 = (Repository) serviceLocatorF.h(Repository.class);
                        Cookie cookie2 = (Cookie) repository2.load("appId", Cookie.class).get();
                        if (cookie2 == null) {
                            cookie2 = new Cookie("appId");
                        }
                        cookie2.putValue("appId", str);
                        try {
                            repository2.save(cookie2);
                            vungle.configure(initCallback2, false);
                            ((JobRunner) serviceLocatorF.h(JobRunner.class)).execute(AnalyticsJob.makeJob(2, null, null, 1));
                        } catch (DatabaseHelper.DBException unused2) {
                            if (initCallback2 != null) {
                                Vungle.onInitError(initCallback2, new VungleException(26));
                            }
                            Vungle.isInitializing.set(false);
                        }
                    }
                });
                return;
            } else {
                Log.e(TAG, "Network permissions not granted");
                onInitError(initCallback, new VungleException(34));
                isInitializing.set(false);
                return;
            }
        }
        initCallback.onError(new VungleException(6));
    }

    public static void loadAd(String str, String str2, AdConfig adConfig, LoadAdCallback loadAdCallback) {
        VungleLogger.debug("Vungle#loadAd", "loadAd API call invoked");
        if (!isInitialized()) {
            Log.e(TAG, "Vungle is not initialized");
            onLoadError(str, loadAdCallback, new VungleException(9));
        } else if (adConfig != null && !AdConfig.AdSize.isDefaultAdSize(adConfig.getAdSize())) {
            onLoadError(str, loadAdCallback, new VungleException(29));
        } else {
            loadAdInternal(str, AdMarkup.fromString(str2), adConfig, loadAdCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateCCPAStatus(final Repository repository, final Consent consent) {
        repository.load(Cookie.CCPA_COOKIE, Cookie.class, new Repository.LoadCallback<Cookie>() { // from class: com.vungle.warren.Vungle.14
            @Override // com.vungle.warren.persistence.Repository.LoadCallback
            public void onLoaded(Cookie cookie) {
                if (cookie == null) {
                    cookie = new Cookie(Cookie.CCPA_COOKIE);
                }
                cookie.putValue(Cookie.CCPA_CONSENT_STATUS, consent == Consent.OPTED_OUT ? Cookie.CONSENT_STATUS_OPTED_OUT : Cookie.CONSENT_STATUS_OPTED_IN);
                repository.save(cookie, null, false);
            }
        });
    }

    static boolean canPlayAd(Advertisement advertisement) {
        Context context = _instance.context;
        if (context == null) {
            return false;
        }
        return ((AdLoader) ServiceLocator.f(context).h(AdLoader.class)).canPlayAd(advertisement);
    }
}
