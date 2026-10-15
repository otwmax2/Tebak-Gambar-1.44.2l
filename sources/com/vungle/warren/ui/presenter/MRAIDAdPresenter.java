package com.vungle.warren.ui.presenter;

import android.content.ActivityNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.SessionData;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.analytics.AdAnalytics;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.Report;
import com.vungle.warren.omsdk.OMTracker;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.ui.DurationRecorder;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.PresenterAppLeftCallback;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.WebAdContract;
import com.vungle.warren.ui.state.OptionsState;
import com.vungle.warren.ui.view.WebViewAPI;
import com.vungle.warren.utility.AsyncFileUtils;
import com.vungle.warren.utility.Constants;
import com.vungle.warren.utility.Scheduler;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class MRAIDAdPresenter implements WebAdContract.WebAdPresenter, WebViewAPI.MRAIDDelegate, WebViewAPI.WebClientErrorHandler {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f28423w = "com.vungle.warren.ui.presenter.MRAIDAdPresenter";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Scheduler f28424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AdAnalytics f28425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final OMTracker f28426c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AsyncFileUtils.ExistenceOperation f28428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AdContract.AdvertisementPresenter.EventListener f28429f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Advertisement f28430g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Report f28431h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Placement f28432i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private WebViewAPI f28433j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Repository f28434k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private File f28435l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WebAdContract.WebAdView f28436m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f28437n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f28438o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private SessionData f28439p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f28440q;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private DurationRecorder f28444u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final String[] f28445v;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, Cookie> f28427d = new HashMap();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private AtomicBoolean f28441r = new AtomicBoolean(false);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private AtomicBoolean f28442s = new AtomicBoolean(false);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Repository.SaveCallback f28443t = new Repository.SaveCallback() { // from class: com.vungle.warren.ui.presenter.MRAIDAdPresenter.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f28446a = false;

        @Override // com.vungle.warren.persistence.Repository.SaveCallback
        public void onError(Exception exc) {
            if (this.f28446a) {
                return;
            }
            this.f28446a = true;
            MRAIDAdPresenter.this.k(26);
            VungleLogger.error(MRAIDAdPresenter.class.getSimpleName(), new VungleException(26).getLocalizedMessage());
            MRAIDAdPresenter.this.f();
        }

        @Override // com.vungle.warren.persistence.Repository.SaveCallback
        public void onSaved() {
        }
    };

    public MRAIDAdPresenter(Advertisement advertisement, Placement placement, Repository repository, Scheduler scheduler, AdAnalytics adAnalytics, WebViewAPI webViewAPI, OptionsState optionsState, File file, SessionData sessionData, OMTracker oMTracker, String[] strArr) {
        this.f28430g = advertisement;
        this.f28434k = repository;
        this.f28432i = placement;
        this.f28424a = scheduler;
        this.f28425b = adAnalytics;
        this.f28433j = webViewAPI;
        this.f28435l = file;
        this.f28439p = sessionData;
        this.f28426c = oMTracker;
        this.f28445v = strArr;
        i(optionsState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f28436m.close();
        this.f28424a.cancelAll();
    }

    private void g() {
        reportAction(SDKConstants.PARAM_GAME_REQUESTS_CTA, BuildConfig.FLAVOR);
        try {
            this.f28425b.ping(new String[]{this.f28430g.getCTAURL(true)});
            this.f28436m.open(this.f28430g.getCTAURL(false), new PresenterAppLeftCallback(this.f28429f, this.f28432i));
        } catch (ActivityNotFoundException unused) {
            VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#download", "Download - Activity Not Found");
        }
    }

    private void h(@VungleException.ExceptionCode int i10) {
        WebAdContract.WebAdView webAdView = this.f28436m;
        if (webAdView != null) {
            webAdView.removeWebView();
        }
        VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#handleWebViewException", "WebViewException: " + new VungleException(i10).getLocalizedMessage());
        n(i10);
    }

    private void i(OptionsState optionsState) {
        this.f28427d.put(Cookie.INCENTIVIZED_TEXT_COOKIE, (Cookie) this.f28434k.load(Cookie.INCENTIVIZED_TEXT_COOKIE, Cookie.class).get());
        this.f28427d.put(Cookie.CONSENT_COOKIE, (Cookie) this.f28434k.load(Cookie.CONSENT_COOKIE, Cookie.class).get());
        this.f28427d.put(Cookie.CONFIG_COOKIE, (Cookie) this.f28434k.load(Cookie.CONFIG_COOKIE, Cookie.class).get());
        if (optionsState != null) {
            String string = optionsState.getString("saved_report");
            Report report = TextUtils.isEmpty(string) ? null : (Report) this.f28434k.load(string, Report.class).get();
            if (report != null) {
                this.f28431h = report;
            }
        }
    }

    private void j(File file) {
        final File file2 = new File(new File(file.getParent()).getPath() + File.separator + "index.html");
        this.f28428e = AsyncFileUtils.isFileExistAsync(file2, new AsyncFileUtils.FileExistCallback() { // from class: com.vungle.warren.ui.presenter.MRAIDAdPresenter.3
            @Override // com.vungle.warren.utility.AsyncFileUtils.FileExistCallback
            public void status(boolean z10) {
                if (!z10) {
                    MRAIDAdPresenter.this.k(27);
                    MRAIDAdPresenter.this.k(10);
                    MRAIDAdPresenter.this.f28436m.close();
                } else {
                    MRAIDAdPresenter.this.f28436m.showWebsite("file://" + file2.getPath());
                    MRAIDAdPresenter.this.m();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(@VungleException.ExceptionCode int i10) {
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28429f;
        if (eventListener != null) {
            eventListener.onError(new VungleException(i10), this.f28432i.getId());
        }
    }

    private void l(OptionsState optionsState) {
        this.f28433j.setMRAIDDelegate(this);
        this.f28433j.setErrorHandler(this);
        j(new File(this.f28435l.getPath() + File.separator + "template"));
        Cookie cookie = this.f28427d.get(Cookie.INCENTIVIZED_TEXT_COOKIE);
        if (cookie != null) {
            this.f28430g.setIncentivizedText(cookie.getString("title"), cookie.getString(SDKConstants.PARAM_A2U_BODY), cookie.getString("continue"), cookie.getString(JavascriptBridge.MraidHandler.CLOSE_ACTION));
        }
        String string = cookie == null ? null : cookie.getString(SDKConstants.PARAM_USER_ID);
        if (this.f28431h == null) {
            Report report = new Report(this.f28430g, this.f28432i, System.currentTimeMillis(), string, this.f28439p);
            this.f28431h = report;
            report.setTtDownload(this.f28430g.getTtDownload());
            this.f28434k.save(this.f28431h, this.f28443t);
        }
        if (this.f28444u == null) {
            this.f28444u = new DurationRecorder(this.f28431h, this.f28434k, this.f28443t);
        }
        Cookie cookie2 = this.f28427d.get(Cookie.CONSENT_COOKIE);
        if (cookie2 != null) {
            boolean z10 = cookie2.getBoolean("is_country_data_protected").booleanValue() && "unknown".equals(cookie2.getString("consent_status"));
            this.f28433j.setConsentStatus(z10, cookie2.getString("consent_title"), cookie2.getString("consent_message"), cookie2.getString("button_accept"), cookie2.getString("button_deny"));
            if (z10) {
                cookie2.putValue("consent_status", "opted_out_by_timeout");
                cookie2.putValue("timestamp", Long.valueOf(System.currentTimeMillis() / 1000));
                cookie2.putValue("consent_source", "vungle_modal");
                this.f28434k.save(cookie2, this.f28443t);
            }
        }
        int showCloseDelay = this.f28430g.getShowCloseDelay(this.f28432i.isIncentivized());
        if (showCloseDelay > 0) {
            this.f28424a.schedule(new Runnable() { // from class: com.vungle.warren.ui.presenter.MRAIDAdPresenter.2
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDAdPresenter.this.f28437n = true;
                }
            }, showCloseDelay);
        } else {
            this.f28437n = true;
        }
        this.f28436m.updateWindow();
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28429f;
        if (eventListener != null) {
            eventListener.onNext("start", null, this.f28432i.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        Report report;
        Advertisement advertisement = (Advertisement) this.f28434k.load(this.f28430g.getId(), Advertisement.class).get();
        if (advertisement == null || (report = this.f28431h) == null) {
            return;
        }
        report.setAllAssetDownloaded(advertisement.assetsFullyDownloaded);
        this.f28434k.save(this.f28431h, this.f28443t);
    }

    private void n(@VungleException.ExceptionCode int i10) {
        k(i10);
        f();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void detach(@AdContract.AdStopReason int i10) {
        AsyncFileUtils.ExistenceOperation existenceOperation = this.f28428e;
        if (existenceOperation != null) {
            existenceOperation.cancel();
        }
        stop(i10);
        this.f28433j.setWebViewObserver(null);
        this.f28436m.destroyAdView(this.f28426c.stop());
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void generateSaveState(OptionsState optionsState) {
        if (optionsState == null) {
            return;
        }
        this.f28434k.save(this.f28431h, this.f28443t);
        optionsState.put("saved_report", this.f28431h.getId());
        optionsState.put("incentivized_sent", this.f28441r.get());
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public boolean handleExit() {
        if (!this.f28437n) {
            return false;
        }
        this.f28436m.showWebsite("javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()");
        return false;
    }

    @Override // com.vungle.warren.ui.JavascriptBridge.MraidHandler
    public void onMraidAction(String str) {
        str.hashCode();
        switch (str) {
            case "privacy":
                return;
            case "close":
                f();
                return;
            case "download":
                g();
                return;
            default:
                throw new IllegalArgumentException("Unknown action " + str);
        }
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public void onReceivedError(String str, boolean z10) {
        Report report = this.f28431h;
        if (report != null) {
            report.recordError(str);
            this.f28434k.save(this.f28431h, this.f28443t);
        }
        VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#onReceivedError", str);
        if (z10) {
            n(38);
        }
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        h(32);
        VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#onRenderProcessUnresponsive", new VungleException(32).getLocalizedMessage());
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void onViewConfigurationChanged() {
        this.f28436m.updateWindow();
        this.f28433j.notifyPropertiesChange(true);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public boolean onWebRenderingProcessGone(WebView webView, boolean z10) {
        h(31);
        VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "onWebRenderingProcessGone", new VungleException(31).getLocalizedMessage());
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014d  */
    @Override // com.vungle.warren.ui.view.WebViewAPI.MRAIDDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean processCommand(java.lang.String r20, com.google.gson.o r21) {
        /*
            Method dump skipped, instruction units count: 1102
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.ui.presenter.MRAIDAdPresenter.processCommand(java.lang.String, com.google.gson.o):boolean");
    }

    public void reportAction(String str, String str2) {
        if (!str.equals("videoLength")) {
            this.f28431h.recordAction(str, str2, System.currentTimeMillis());
            this.f28434k.save(this.f28431h, this.f28443t);
        } else {
            long j10 = Long.parseLong(str2);
            this.f28438o = j10;
            this.f28431h.setVideoLength(j10);
            this.f28434k.save(this.f28431h, this.f28443t);
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void restoreFromSave(OptionsState optionsState) {
        if (optionsState == null) {
            return;
        }
        boolean z10 = optionsState.getBoolean("incentivized_sent", false);
        if (z10) {
            this.f28441r.set(z10);
        }
        if (this.f28431h == null) {
            this.f28436m.close();
            VungleLogger.error(MRAIDAdPresenter.class.getSimpleName() + "#restoreFromSave", "The advertisement was not started and cannot be restored.");
        }
    }

    @Override // com.vungle.warren.ui.contract.WebAdContract.WebAdPresenter
    public void setAdVisibility(boolean z10) {
        this.f28433j.setAdVisibility(z10);
        if (z10) {
            this.f28444u.start();
        } else {
            this.f28444u.stop();
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void setEventListener(AdContract.AdvertisementPresenter.EventListener eventListener) {
        this.f28429f = eventListener;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void start() {
        if (!this.f28436m.hasWebView()) {
            n(31);
            return;
        }
        this.f28436m.setImmersiveMode();
        this.f28436m.resumeWeb();
        setAdVisibility(true);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void stop(@AdContract.AdStopReason int i10) {
        boolean z10 = (i10 & 1) != 0;
        boolean z11 = (i10 & 2) != 0;
        boolean z12 = (i10 & 4) != 0;
        this.f28436m.pauseWeb();
        setAdVisibility(false);
        if (z10 || !z11 || this.f28442s.getAndSet(true)) {
            return;
        }
        WebViewAPI webViewAPI = this.f28433j;
        if (webViewAPI != null) {
            webViewAPI.setMRAIDDelegate(null);
        }
        if (z12) {
            reportAction("mraidCloseByApi", null);
        }
        this.f28434k.save(this.f28431h, this.f28443t);
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28429f;
        if (eventListener != null) {
            eventListener.onNext("end", this.f28431h.isCTAClicked() ? "isCTAClicked" : null, this.f28432i.getId());
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void attach(WebAdContract.WebAdView webAdView, OptionsState optionsState) {
        this.f28442s.set(false);
        this.f28436m = webAdView;
        webAdView.setPresenter(this);
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28429f;
        if (eventListener != null) {
            eventListener.onNext(Constants.ATTACH, this.f28430g.getCreativeId(), this.f28432i.getId());
        }
        this.f28426c.start();
        int settings = this.f28430g.getAdConfig().getSettings();
        if (settings > 0) {
            this.f28437n = (settings & 2) == 2;
        }
        int i10 = -1;
        int adOrientation = this.f28430g.getAdConfig().getAdOrientation();
        int i11 = 6;
        if (adOrientation == 3) {
            int orientation = this.f28430g.getOrientation();
            if (orientation == 0) {
                i10 = 7;
            } else if (orientation == 1) {
                i10 = 6;
            }
            i11 = i10;
        } else if (adOrientation == 0) {
            i11 = 7;
        } else if (adOrientation != 1) {
            i11 = 4;
        }
        Log.d(f28423w, "Requested Orientation " + i11);
        webAdView.setOrientation(i11);
        l(optionsState);
    }
}
