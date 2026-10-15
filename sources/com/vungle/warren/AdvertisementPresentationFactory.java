package com.vungle.warren;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.vungle.warren.AdConfig;
import com.vungle.warren.PresentationFactory;
import com.vungle.warren.analytics.JobDelegateAnalytics;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.Placement;
import com.vungle.warren.omsdk.OMTracker;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.OrientationDelegate;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.WebAdContract;
import com.vungle.warren.ui.presenter.LocalAdPresenter;
import com.vungle.warren.ui.presenter.MRAIDAdPresenter;
import com.vungle.warren.ui.state.OptionsState;
import com.vungle.warren.ui.view.FullAdWidget;
import com.vungle.warren.ui.view.LocalAdView;
import com.vungle.warren.ui.view.MRAIDAdView;
import com.vungle.warren.ui.view.VungleWebClient;
import com.vungle.warren.utility.HandlerScheduler;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class AdvertisementPresentationFactory implements PresentationFactory {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f27715l = "AdvertisementPresentationFactory";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JobRunner f27716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private VungleApiClient f27717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BaseTask f27718c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Repository f27719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private VungleStaticApi f27720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Advertisement f27721f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AdLoader f27722g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final SessionData f27723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final OMTracker.Factory f27724i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ExecutorService f27725j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private BaseTask.OnModelLoadListener f27726k = new BaseTask.OnModelLoadListener() { // from class: com.vungle.warren.AdvertisementPresentationFactory.1
        @Override // com.vungle.warren.AdvertisementPresentationFactory.BaseTask.OnModelLoadListener
        public void onLoad(Advertisement advertisement, Placement placement) {
            AdvertisementPresentationFactory.this.f27721f = advertisement;
        }
    };

    private static abstract class BaseTask extends AsyncTask<Void, Void, PresentationResultHolder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final Repository f27728a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final VungleStaticApi f27729b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private OnModelLoadListener f27730c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private AtomicReference<Advertisement> f27731d = new AtomicReference<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private AtomicReference<Placement> f27732e = new AtomicReference<>();

        interface OnModelLoadListener {
            void onLoad(Advertisement advertisement, Placement placement);
        }

        BaseTask(Repository repository, VungleStaticApi vungleStaticApi, OnModelLoadListener onModelLoadListener) {
            this.f27728a = repository;
            this.f27729b = vungleStaticApi;
            this.f27730c = onModelLoadListener;
        }

        void a() {
            this.f27730c = null;
        }

        Pair<Advertisement, Placement> b(AdRequest adRequest, Bundle bundle) throws VungleException {
            if (!this.f27729b.isInitialized()) {
                throw new VungleException(9);
            }
            if (adRequest == null || TextUtils.isEmpty(adRequest.getPlacementId())) {
                throw new VungleException(10);
            }
            Placement placement = (Placement) this.f27728a.load(adRequest.getPlacementId(), Placement.class).get();
            if (placement == null) {
                Log.e(AdvertisementPresentationFactory.f27715l, "No Placement for ID");
                throw new VungleException(13);
            }
            if (placement.isMultipleHBPEnabled() && adRequest.getEventId() == null) {
                throw new VungleException(36);
            }
            this.f27732e.set(placement);
            Advertisement advertisement = null;
            if (bundle == null) {
                advertisement = this.f27728a.findValidAdvertisementForPlacement(adRequest.getPlacementId(), adRequest.getEventId()).get();
            } else {
                String string = bundle.getString("ADV_FACTORY_ADVERTISEMENT");
                if (!TextUtils.isEmpty(string)) {
                    advertisement = (Advertisement) this.f27728a.load(string, Advertisement.class).get();
                }
            }
            if (advertisement == null) {
                throw new VungleException(10);
            }
            this.f27731d.set(advertisement);
            File file = this.f27728a.getAdvertisementAssetDirectory(advertisement.getId()).get();
            if (file != null && file.isDirectory()) {
                return new Pair<>(advertisement, placement);
            }
            Log.e(AdvertisementPresentationFactory.f27715l, "Advertisement assets dir is missing");
            throw new VungleException(26);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(PresentationResultHolder presentationResultHolder) {
            super.onPostExecute(presentationResultHolder);
            OnModelLoadListener onModelLoadListener = this.f27730c;
            if (onModelLoadListener != null) {
                onModelLoadListener.onLoad(this.f27731d.get(), this.f27732e.get());
            }
        }
    }

    private static class FullScreenPresentationTask extends BaseTask {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final AdLoader f27733f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @SuppressLint({"StaticFieldLeak"})
        private FullAdWidget f27734g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @SuppressLint({"StaticFieldLeak"})
        private Context f27735h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final AdRequest f27736i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final OptionsState f27737j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final PresentationFactory.FullScreenCallback f27738k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final Bundle f27739l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final JobRunner f27740m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final VungleApiClient f27741n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final CloseDelegate f27742o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final OrientationDelegate f27743p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final SessionData f27744q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private Advertisement f27745r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final OMTracker.Factory f27746s;

        FullScreenPresentationTask(Context context, AdLoader adLoader, AdRequest adRequest, Repository repository, VungleStaticApi vungleStaticApi, JobRunner jobRunner, VungleApiClient vungleApiClient, SessionData sessionData, FullAdWidget fullAdWidget, OptionsState optionsState, OrientationDelegate orientationDelegate, CloseDelegate closeDelegate, PresentationFactory.FullScreenCallback fullScreenCallback, BaseTask.OnModelLoadListener onModelLoadListener, Bundle bundle, OMTracker.Factory factory) {
            super(repository, vungleStaticApi, onModelLoadListener);
            this.f27736i = adRequest;
            this.f27734g = fullAdWidget;
            this.f27737j = optionsState;
            this.f27735h = context;
            this.f27738k = fullScreenCallback;
            this.f27739l = bundle;
            this.f27740m = jobRunner;
            this.f27741n = vungleApiClient;
            this.f27743p = orientationDelegate;
            this.f27742o = closeDelegate;
            this.f27733f = adLoader;
            this.f27744q = sessionData;
            this.f27746s = factory;
        }

        @Override // com.vungle.warren.AdvertisementPresentationFactory.BaseTask
        void a() {
            super.a();
            this.f27735h = null;
            this.f27734g = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.warren.AdvertisementPresentationFactory.BaseTask, android.os.AsyncTask
        /* JADX INFO: renamed from: c */
        public void onPostExecute(PresentationResultHolder presentationResultHolder) {
            super.onPostExecute(presentationResultHolder);
            if (isCancelled() || this.f27738k == null) {
                return;
            }
            if (presentationResultHolder.f27758c != null) {
                Log.e(AdvertisementPresentationFactory.f27715l, "Exception on creating presenter", presentationResultHolder.f27758c);
                this.f27738k.onResult(new Pair<>(null, null), presentationResultHolder.f27758c);
            } else {
                this.f27734g.linkWebView(presentationResultHolder.f27759d, new JavascriptBridge(presentationResultHolder.f27757b));
                this.f27738k.onResult(new Pair<>(presentationResultHolder.f27756a, presentationResultHolder.f27757b), presentationResultHolder.f27758c);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public PresentationResultHolder doInBackground(Void... voidArr) {
            try {
                Pair<Advertisement, Placement> pairB = b(this.f27736i, this.f27739l);
                Advertisement advertisement = (Advertisement) pairB.first;
                this.f27745r = advertisement;
                Placement placement = (Placement) pairB.second;
                if (!this.f27733f.canRenderAd(advertisement)) {
                    Log.e(AdvertisementPresentationFactory.f27715l, "Advertisement is null or assets are missing");
                    return new PresentationResultHolder(new VungleException(10));
                }
                if (placement.getPlacementAdType() != 0) {
                    return new PresentationResultHolder(new VungleException(29));
                }
                JobDelegateAnalytics jobDelegateAnalytics = new JobDelegateAnalytics(this.f27740m);
                Cookie cookie = (Cookie) this.f27728a.load("appId", Cookie.class).get();
                if (cookie != null && !TextUtils.isEmpty(cookie.getString("appId"))) {
                    cookie.getString("appId");
                }
                VungleWebClient vungleWebClient = new VungleWebClient(this.f27745r, placement);
                File file = this.f27728a.getAdvertisementAssetDirectory(this.f27745r.getId()).get();
                if (file == null || !file.isDirectory()) {
                    Log.e(AdvertisementPresentationFactory.f27715l, "Advertisement assets dir is missing");
                    return new PresentationResultHolder(new VungleException(26));
                }
                int adType = this.f27745r.getAdType();
                if (adType == 0) {
                    return new PresentationResultHolder(new LocalAdView(this.f27735h, this.f27734g, this.f27743p, this.f27742o), new LocalAdPresenter(this.f27745r, placement, this.f27728a, new HandlerScheduler(), jobDelegateAnalytics, vungleWebClient, this.f27737j, file, this.f27744q, this.f27736i.getImpression()), vungleWebClient);
                }
                if (adType != 1) {
                    return new PresentationResultHolder(new VungleException(10));
                }
                OMTracker oMTrackerMake = this.f27746s.make(this.f27741n.getOmEnabled() && this.f27745r.getOmEnabled());
                vungleWebClient.setWebViewObserver(oMTrackerMake);
                return new PresentationResultHolder(new MRAIDAdView(this.f27735h, this.f27734g, this.f27743p, this.f27742o), new MRAIDAdPresenter(this.f27745r, placement, this.f27728a, new HandlerScheduler(), jobDelegateAnalytics, vungleWebClient, this.f27737j, file, this.f27744q, oMTrackerMake, this.f27736i.getImpression()), vungleWebClient);
            } catch (VungleException e10) {
                return new PresentationResultHolder(e10);
            }
        }
    }

    private static class NativeViewPresentationTask extends BaseTask {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final AdRequest f27747f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final AdConfig f27748g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final PresentationFactory.ViewCallback f27749h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final Bundle f27750i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final JobRunner f27751j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final AdLoader f27752k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final SessionData f27753l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final VungleApiClient f27754m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final OMTracker.Factory f27755n;

        NativeViewPresentationTask(AdRequest adRequest, AdConfig adConfig, AdLoader adLoader, Repository repository, VungleStaticApi vungleStaticApi, JobRunner jobRunner, PresentationFactory.ViewCallback viewCallback, Bundle bundle, SessionData sessionData, BaseTask.OnModelLoadListener onModelLoadListener, VungleApiClient vungleApiClient, OMTracker.Factory factory) {
            super(repository, vungleStaticApi, onModelLoadListener);
            this.f27747f = adRequest;
            this.f27748g = adConfig;
            this.f27749h = viewCallback;
            this.f27750i = bundle;
            this.f27751j = jobRunner;
            this.f27752k = adLoader;
            this.f27753l = sessionData;
            this.f27754m = vungleApiClient;
            this.f27755n = factory;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.warren.AdvertisementPresentationFactory.BaseTask, android.os.AsyncTask
        /* JADX INFO: renamed from: c */
        public void onPostExecute(PresentationResultHolder presentationResultHolder) {
            PresentationFactory.ViewCallback viewCallback;
            super.onPostExecute(presentationResultHolder);
            if (isCancelled() || (viewCallback = this.f27749h) == null) {
                return;
            }
            viewCallback.onResult(new Pair<>((WebAdContract.WebAdPresenter) presentationResultHolder.f27757b, presentationResultHolder.f27759d), presentationResultHolder.f27758c);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public PresentationResultHolder doInBackground(Void... voidArr) {
            try {
                Pair<Advertisement, Placement> pairB = b(this.f27747f, this.f27750i);
                Advertisement advertisement = (Advertisement) pairB.first;
                if (advertisement.getAdType() != 1) {
                    Log.e(AdvertisementPresentationFactory.f27715l, "Invalid Ad Type for Native Ad.");
                    return new PresentationResultHolder(new VungleException(10));
                }
                Placement placement = (Placement) pairB.second;
                if (!this.f27752k.canPlayAd(advertisement)) {
                    Log.e(AdvertisementPresentationFactory.f27715l, "Advertisement is null or assets are missing");
                    return new PresentationResultHolder(new VungleException(10));
                }
                JobDelegateAnalytics jobDelegateAnalytics = new JobDelegateAnalytics(this.f27751j);
                VungleWebClient vungleWebClient = new VungleWebClient(advertisement, placement);
                File file = this.f27728a.getAdvertisementAssetDirectory(advertisement.getId()).get();
                if (file == null || !file.isDirectory()) {
                    Log.e(AdvertisementPresentationFactory.f27715l, "Advertisement assets dir is missing");
                    return new PresentationResultHolder(new VungleException(26));
                }
                if ("mrec".equals(advertisement.getTemplateType()) && this.f27748g.getAdSize() != AdConfig.AdSize.VUNGLE_MREC) {
                    Log.e(AdvertisementPresentationFactory.f27715l, "Corresponding AdConfig#setAdSize must be passed for the type/size of native ad");
                    return new PresentationResultHolder(new VungleException(28));
                }
                if (placement.getPlacementAdType() == 0) {
                    return new PresentationResultHolder(new VungleException(10));
                }
                advertisement.configure(this.f27748g);
                try {
                    this.f27728a.save(advertisement);
                    OMTracker oMTrackerMake = this.f27755n.make(this.f27754m.getOmEnabled() && advertisement.getOmEnabled());
                    vungleWebClient.setWebViewObserver(oMTrackerMake);
                    return new PresentationResultHolder(null, new MRAIDAdPresenter(advertisement, placement, this.f27728a, new HandlerScheduler(), jobDelegateAnalytics, vungleWebClient, null, file, this.f27753l, oMTrackerMake, this.f27747f.getImpression()), vungleWebClient);
                } catch (DatabaseHelper.DBException unused) {
                    return new PresentationResultHolder(new VungleException(26));
                }
            } catch (VungleException e10) {
                return new PresentationResultHolder(e10);
            }
        }
    }

    AdvertisementPresentationFactory(AdLoader adLoader, VungleStaticApi vungleStaticApi, Repository repository, VungleApiClient vungleApiClient, JobRunner jobRunner, RuntimeValues runtimeValues, OMTracker.Factory factory, ExecutorService executorService) {
        this.f27720e = vungleStaticApi;
        this.f27719d = repository;
        this.f27717b = vungleApiClient;
        this.f27716a = jobRunner;
        this.f27722g = adLoader;
        this.f27723h = runtimeValues.f27849d.get();
        this.f27724i = factory;
        this.f27725j = executorService;
    }

    private void c() {
        BaseTask baseTask = this.f27718c;
        if (baseTask != null) {
            baseTask.cancel(true);
            this.f27718c.a();
        }
    }

    @Override // com.vungle.warren.PresentationFactory
    public void destroy() {
        c();
    }

    @Override // com.vungle.warren.PresentationFactory
    public void getFullScreenPresentation(Context context, AdRequest adRequest, FullAdWidget fullAdWidget, OptionsState optionsState, CloseDelegate closeDelegate, OrientationDelegate orientationDelegate, Bundle bundle, PresentationFactory.FullScreenCallback fullScreenCallback) {
        c();
        FullScreenPresentationTask fullScreenPresentationTask = new FullScreenPresentationTask(context, this.f27722g, adRequest, this.f27719d, this.f27720e, this.f27716a, this.f27717b, this.f27723h, fullAdWidget, optionsState, orientationDelegate, closeDelegate, fullScreenCallback, this.f27726k, bundle, this.f27724i);
        this.f27718c = fullScreenPresentationTask;
        fullScreenPresentationTask.executeOnExecutor(this.f27725j, new Void[0]);
    }

    @Override // com.vungle.warren.PresentationFactory
    public void getNativeViewPresentation(AdRequest adRequest, AdConfig adConfig, CloseDelegate closeDelegate, PresentationFactory.ViewCallback viewCallback) {
        c();
        NativeViewPresentationTask nativeViewPresentationTask = new NativeViewPresentationTask(adRequest, adConfig, this.f27722g, this.f27719d, this.f27720e, this.f27716a, viewCallback, null, this.f27723h, this.f27726k, this.f27717b, this.f27724i);
        this.f27718c = nativeViewPresentationTask;
        nativeViewPresentationTask.executeOnExecutor(this.f27725j, new Void[0]);
    }

    @Override // com.vungle.warren.PresentationFactory
    public void saveState(Bundle bundle) {
        Advertisement advertisement = this.f27721f;
        bundle.putString("ADV_FACTORY_ADVERTISEMENT", advertisement == null ? null : advertisement.getId());
    }

    private static class PresentationResultHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AdContract.AdView f27756a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AdContract.AdvertisementPresenter f27757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private VungleException f27758c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private VungleWebClient f27759d;

        PresentationResultHolder(VungleException vungleException) {
            this.f27758c = vungleException;
        }

        PresentationResultHolder(AdContract.AdView adView, AdContract.AdvertisementPresenter advertisementPresenter, VungleWebClient vungleWebClient) {
            this.f27756a = adView;
            this.f27757b = advertisementPresenter;
            this.f27759d = vungleWebClient;
        }
    }
}
