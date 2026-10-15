package com.vungle.warren.ui.presenter;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.ServerProtocol;
import com.google.gson.o;
import com.google.gson.r;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.SessionData;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.analytics.AdAnalytics;
import com.vungle.warren.analytics.AnalyticsEvent;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.Report;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.ui.DurationRecorder;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.PresenterAppLeftCallback;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.LocalAdContract;
import com.vungle.warren.ui.state.OptionsState;
import com.vungle.warren.ui.view.WebViewAPI;
import com.vungle.warren.utility.AsyncFileUtils;
import com.vungle.warren.utility.Constants;
import com.vungle.warren.utility.Scheduler;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class LocalAdPresenter implements LocalAdContract.LocalPresenter, WebViewAPI.WebClientErrorHandler {
    public static final int INCENTIVIZED_TRESHOLD = 75;
    private DurationRecorder C;
    private final String[] D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Scheduler f28389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AdAnalytics f28390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WebViewAPI f28391c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AsyncFileUtils.ExistenceOperation f28393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Placement f28394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Advertisement f28395g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Report f28396h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Repository f28397i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private File f28398j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f28399k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f28400l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f28401m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private LocalAdContract.LocalView f28402n;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private AdContract.AdvertisementPresenter.EventListener f28407s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f28408t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private SessionData f28409u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f28410v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f28413y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f28414z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, Cookie> f28392d = new HashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f28403o = "Are you sure?";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f28404p = "If you exit now, you will not get your reward";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f28405q = "Continue";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f28406r = "Close";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private AtomicBoolean f28411w = new AtomicBoolean(false);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AtomicBoolean f28412x = new AtomicBoolean(false);
    private LinkedList<Advertisement.Checkpoint> A = new LinkedList<>();
    private Repository.SaveCallback B = new Repository.SaveCallback() { // from class: com.vungle.warren.ui.presenter.LocalAdPresenter.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f28415a = false;

        @Override // com.vungle.warren.persistence.Repository.SaveCallback
        public void onError(Exception exc) {
            if (this.f28415a) {
                return;
            }
            this.f28415a = true;
            LocalAdPresenter.this.q(26);
            VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onError", new VungleException(26).getLocalizedMessage());
            LocalAdPresenter.this.k();
        }

        @Override // com.vungle.warren.persistence.Repository.SaveCallback
        public void onSaved() {
        }
    };
    private AtomicBoolean E = new AtomicBoolean(false);

    public LocalAdPresenter(Advertisement advertisement, Placement placement, Repository repository, Scheduler scheduler, AdAnalytics adAnalytics, WebViewAPI webViewAPI, OptionsState optionsState, File file, SessionData sessionData, String[] strArr) {
        this.f28395g = advertisement;
        this.f28394f = placement;
        this.f28389a = scheduler;
        this.f28390b = adAnalytics;
        this.f28391c = webViewAPI;
        this.f28397i = repository;
        this.f28398j = file;
        this.f28409u = sessionData;
        this.D = strArr;
        if (advertisement.getCheckpoints() != null) {
            this.A.addAll(advertisement.getCheckpoints());
            Collections.sort(this.A);
        }
        p(optionsState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.E.get()) {
            Log.w("LocalAdPresenter", "Busy with closing");
            return;
        }
        this.E.set(true);
        reportAction(JavascriptBridge.MraidHandler.CLOSE_ACTION, null);
        this.f28389a.cancelAll();
        this.f28402n.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (this.f28395g.hasPostroll()) {
            s();
        } else {
            k();
        }
    }

    private void m() {
        reportAction(SDKConstants.PARAM_GAME_REQUESTS_CTA, BuildConfig.FLAVOR);
        try {
            this.f28390b.ping(this.f28395g.getTpatUrls(AnalyticsEvent.Ad.postrollClick));
            this.f28390b.ping(this.f28395g.getTpatUrls(AnalyticsEvent.Ad.clickUrl));
            this.f28390b.ping(this.f28395g.getTpatUrls(AnalyticsEvent.Ad.videoClick));
            this.f28390b.ping(new String[]{this.f28395g.getCTAURL(true)});
            reportAction(JavascriptBridge.MraidHandler.DOWNLOAD_ACTION, null);
            String ctaurl = this.f28395g.getCTAURL(false);
            if (ctaurl == null || ctaurl.isEmpty()) {
                Log.e("LocalAdPresenter", "CTA destination URL is not configured properly");
            } else {
                this.f28402n.open(ctaurl, new PresenterAppLeftCallback(this.f28407s, this.f28394f));
            }
            AdContract.AdvertisementPresenter.EventListener eventListener = this.f28407s;
            if (eventListener != null) {
                eventListener.onNext("open", "adClick", this.f28394f.getId());
            }
        } catch (ActivityNotFoundException unused) {
            Log.e("LocalAdPresenter", "Unable to find destination activity");
            VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#download", "Download - Activity Not Found");
        }
    }

    private void n(@VungleException.ExceptionCode int i10) {
        LocalAdContract.LocalView localView = this.f28402n;
        if (localView != null) {
            localView.removeWebView();
        }
        v(i10);
    }

    private boolean o() {
        String websiteUrl = this.f28402n.getWebsiteUrl();
        return TextUtils.isEmpty(websiteUrl) || "about:blank".equalsIgnoreCase(websiteUrl);
    }

    private void p(OptionsState optionsState) {
        this.f28392d.put(Cookie.INCENTIVIZED_TEXT_COOKIE, (Cookie) this.f28397i.load(Cookie.INCENTIVIZED_TEXT_COOKIE, Cookie.class).get());
        this.f28392d.put(Cookie.CONSENT_COOKIE, (Cookie) this.f28397i.load(Cookie.CONSENT_COOKIE, Cookie.class).get());
        this.f28392d.put(Cookie.CONFIG_COOKIE, (Cookie) this.f28397i.load(Cookie.CONFIG_COOKIE, Cookie.class).get());
        if (optionsState != null) {
            String string = optionsState.getString("saved_report");
            Report report = TextUtils.isEmpty(string) ? null : (Report) this.f28397i.load(string, Report.class).get();
            if (report != null) {
                this.f28396h = report;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(@VungleException.ExceptionCode int i10) {
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28407s;
        if (eventListener != null) {
            eventListener.onError(new VungleException(i10), this.f28394f.getId());
        }
    }

    private boolean r(Cookie cookie) {
        return cookie != null && cookie.getBoolean("is_country_data_protected").booleanValue() && "unknown".equals(cookie.getString("consent_status"));
    }

    private void s() {
        final File file = new File(new File(this.f28398j.getPath()).getPath() + File.separator + "index.html");
        this.f28393e = AsyncFileUtils.isFileExistAsync(file, new AsyncFileUtils.FileExistCallback() { // from class: com.vungle.warren.ui.presenter.LocalAdPresenter.2
            @Override // com.vungle.warren.utility.AsyncFileUtils.FileExistCallback
            public void status(boolean z10) {
                if (z10) {
                    LocalAdPresenter.this.f28402n.showWebsite("file://" + file.getPath());
                    LocalAdPresenter.this.f28390b.ping(LocalAdPresenter.this.f28395g.getTpatUrls(AnalyticsEvent.Ad.postrollView));
                    LocalAdPresenter.this.f28401m = true;
                    return;
                }
                LocalAdPresenter.this.q(27);
                LocalAdPresenter.this.q(10);
                VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#playPost", "Error Rendering Postroll");
                LocalAdPresenter.this.k();
            }
        });
    }

    private void t(OptionsState optionsState) {
        restoreFromSave(optionsState);
        Cookie cookie = this.f28392d.get(Cookie.INCENTIVIZED_TEXT_COOKIE);
        String string = cookie == null ? null : cookie.getString(SDKConstants.PARAM_USER_ID);
        if (this.f28396h == null) {
            Report report = new Report(this.f28395g, this.f28394f, System.currentTimeMillis(), string, this.f28409u);
            this.f28396h = report;
            report.setTtDownload(this.f28395g.getTtDownload());
            this.f28397i.save(this.f28396h, this.B);
        }
        if (this.C == null) {
            this.C = new DurationRecorder(this.f28396h, this.f28397i, this.B);
        }
        this.f28391c.setErrorHandler(this);
        this.f28402n.showCTAOverlay(this.f28395g.isCtaOverlayEnabled(), this.f28395g.getCtaClickArea());
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28407s;
        if (eventListener != null) {
            eventListener.onNext("start", null, this.f28394f.getId());
        }
    }

    private void u(String str) {
        this.f28396h.recordError(str);
        this.f28397i.save(this.f28396h, this.B);
        q(27);
        if (!this.f28401m && this.f28395g.hasPostroll()) {
            s();
        } else {
            q(10);
            this.f28402n.close();
        }
    }

    private void v(@VungleException.ExceptionCode int i10) {
        q(i10);
        VungleLogger.error(LocalAdPresenter.class.getSimpleName(), "WebViewException: " + new VungleException(i10).getLocalizedMessage());
        k();
    }

    private void w(String str, String str2, String str3, String str4, DialogInterface.OnClickListener onClickListener) {
        this.f28402n.pauseVideo();
        this.f28402n.showDialog(str, str2, str3, str4, onClickListener);
    }

    private void x(final Cookie cookie) {
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.vungle.warren.ui.presenter.LocalAdPresenter.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                cookie.putValue("consent_status", i10 == -2 ? Cookie.CONSENT_STATUS_OPTED_OUT : i10 == -1 ? Cookie.CONSENT_STATUS_OPTED_IN : "opted_out_by_timeout");
                cookie.putValue("timestamp", Long.valueOf(System.currentTimeMillis() / 1000));
                cookie.putValue("consent_source", "vungle_modal");
                LocalAdPresenter.this.f28397i.save(cookie, null);
                LocalAdPresenter.this.start();
            }
        };
        cookie.putValue("consent_status", "opted_out_by_timeout");
        cookie.putValue("timestamp", Long.valueOf(System.currentTimeMillis() / 1000));
        cookie.putValue("consent_source", "vungle_modal");
        this.f28397i.save(cookie, this.B);
        w(cookie.getString("consent_title"), cookie.getString("consent_message"), cookie.getString("button_accept"), cookie.getString("button_deny"), onClickListener);
    }

    private void y() {
        String string = this.f28403o;
        String string2 = this.f28404p;
        String string3 = this.f28405q;
        String string4 = this.f28406r;
        Cookie cookie = this.f28392d.get(Cookie.INCENTIVIZED_TEXT_COOKIE);
        if (cookie != null) {
            string = cookie.getString("title");
            if (TextUtils.isEmpty(string)) {
                string = this.f28403o;
            }
            string2 = cookie.getString(SDKConstants.PARAM_A2U_BODY);
            if (TextUtils.isEmpty(string2)) {
                string2 = this.f28404p;
            }
            string3 = cookie.getString("continue");
            if (TextUtils.isEmpty(string3)) {
                string3 = this.f28405q;
            }
            string4 = cookie.getString(JavascriptBridge.MraidHandler.CLOSE_ACTION);
            if (TextUtils.isEmpty(string4)) {
                string4 = this.f28406r;
            }
        }
        w(string, string2, string3, string4, new DialogInterface.OnClickListener() { // from class: com.vungle.warren.ui.presenter.LocalAdPresenter.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (i10 == -2) {
                    LocalAdPresenter.this.reportAction(AnalyticsEvent.Ad.videoClose, null);
                    LocalAdPresenter.this.l();
                }
            }
        });
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void detach(@AdContract.AdStopReason int i10) {
        AsyncFileUtils.ExistenceOperation existenceOperation = this.f28393e;
        if (existenceOperation != null) {
            existenceOperation.cancel();
        }
        stop(i10);
        this.f28402n.destroyAdView(0L);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void generateSaveState(OptionsState optionsState) {
        if (optionsState == null) {
            return;
        }
        this.f28397i.save(this.f28396h, this.B);
        Report report = this.f28396h;
        optionsState.put("saved_report", report == null ? null : report.getId());
        optionsState.put("incentivized_sent", this.f28411w.get());
        optionsState.put("in_post_roll", this.f28401m);
        optionsState.put("is_muted_mode", this.f28399k);
        LocalAdContract.LocalView localView = this.f28402n;
        optionsState.put("videoPosition", (localView == null || !localView.isVideoPlaying()) ? this.f28413y : this.f28402n.getVideoPosition());
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public boolean handleExit() {
        if (this.f28401m) {
            k();
            return true;
        }
        if (!this.f28400l) {
            return false;
        }
        if (this.f28394f.isIncentivized() && this.f28414z <= 75) {
            y();
            return false;
        }
        reportAction(AnalyticsEvent.Ad.videoClose, null);
        if (this.f28395g.hasPostroll()) {
            s();
            return false;
        }
        k();
        return true;
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onDownload() {
        m();
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public boolean onMediaError(String str) {
        u(str);
        VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onMediaError", "Media Error: " + str);
        return false;
    }

    @Override // com.vungle.warren.ui.JavascriptBridge.MraidHandler
    public void onMraidAction(String str) {
        str.hashCode();
        switch (str) {
            case "privacy":
                return;
            case "close":
                k();
                return;
            case "download":
                m();
                k();
                return;
            default:
                VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onMraidAction", "Unknown MRAID Command");
                throw new IllegalArgumentException("Unknown action " + str);
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onMute(boolean z10) {
        this.f28399k = z10;
        if (z10) {
            reportAction(AnalyticsEvent.Ad.mute, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        } else {
            reportAction(AnalyticsEvent.Ad.unmute, "false");
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onPrivacy() {
        this.f28402n.open("https://vungle.com/privacy/", new PresenterAppLeftCallback(this.f28407s, this.f28394f));
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onProgressUpdate(int i10, float f10) {
        this.f28414z = (int) ((i10 / f10) * 100.0f);
        this.f28413y = i10;
        this.C.update();
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28407s;
        if (eventListener != null) {
            eventListener.onNext("percentViewed:" + this.f28414z, null, this.f28394f.getId());
        }
        AdContract.AdvertisementPresenter.EventListener eventListener2 = this.f28407s;
        if (eventListener2 != null && i10 > 0 && !this.f28410v) {
            this.f28410v = true;
            eventListener2.onNext("adViewed", null, this.f28394f.getId());
            String[] strArr = this.D;
            if (strArr != null) {
                this.f28390b.ping(strArr);
            }
        }
        reportAction("video_viewed", String.format(Locale.ENGLISH, "%d", Integer.valueOf(i10)));
        if (this.f28414z == 100) {
            if (this.A.peekLast() != null && this.A.peekLast().getPercentage() == 100) {
                this.f28390b.ping(this.A.pollLast().getUrls());
            }
            l();
        }
        this.f28396h.recordProgress(this.f28413y);
        this.f28397i.save(this.f28396h, this.B);
        while (this.A.peek() != null && this.f28414z > this.A.peek().getPercentage()) {
            this.f28390b.ping(this.A.poll().getUrls());
        }
        Cookie cookie = this.f28392d.get(Cookie.CONFIG_COOKIE);
        if (!this.f28394f.isIncentivized() || this.f28414z <= 75 || cookie == null || !cookie.getBoolean("isReportIncentivizedEnabled").booleanValue() || this.f28411w.getAndSet(true)) {
            return;
        }
        o oVar = new o();
        oVar.t("placement_reference_id", new r(this.f28394f.getId()));
        oVar.t("app_id", new r(this.f28395g.getAppID()));
        oVar.t(ReportDBAdapter.ReportColumns.COLUMN_AD_START_TIME, new r(Long.valueOf(this.f28396h.getAdStartTime())));
        oVar.t("user", new r(this.f28396h.getUserID()));
        this.f28390b.ri(oVar);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public void onReceivedError(String str, boolean z10) {
        Report report = this.f28396h;
        if (report != null) {
            report.recordError(str);
            this.f28397i.save(this.f28396h, this.B);
            VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "onReceivedError", str);
        }
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        n(32);
        VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onRenderProcessUnresponsive", new VungleException(32).getLocalizedMessage());
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalPresenter
    public void onVideoStart(int i10, float f10) {
        reportAction("videoLength", String.format(Locale.ENGLISH, "%d", Integer.valueOf((int) f10)));
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void onViewConfigurationChanged() {
        this.f28391c.notifyPropertiesChange(true);
        this.f28402n.refreshDialogIfVisible();
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI.WebClientErrorHandler
    public boolean onWebRenderingProcessGone(WebView webView, boolean z10) {
        n(31);
        VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#onWebRenderingProcessGone", new VungleException(31).getLocalizedMessage());
        return true;
    }

    public void reportAction(String str, String str2) {
        if (str.equals("videoLength")) {
            int i10 = Integer.parseInt(str2);
            this.f28408t = i10;
            this.f28396h.setVideoLength(i10);
            this.f28397i.save(this.f28396h, this.B);
            return;
        }
        switch (str) {
            case "unmute":
            case "mute":
            case "video_close":
                this.f28390b.ping(this.f28395g.getTpatUrls(str));
                break;
        }
        this.f28396h.recordAction(str, str2, System.currentTimeMillis());
        this.f28397i.save(this.f28396h, this.B);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void restoreFromSave(OptionsState optionsState) {
        if (optionsState == null) {
            return;
        }
        if (optionsState.getBoolean("incentivized_sent", false)) {
            this.f28411w.set(true);
        }
        this.f28401m = optionsState.getBoolean("in_post_roll", this.f28401m);
        this.f28399k = optionsState.getBoolean("is_muted_mode", this.f28399k);
        this.f28413y = optionsState.getInt("videoPosition", this.f28413y).intValue();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void setEventListener(AdContract.AdvertisementPresenter.EventListener eventListener) {
        this.f28407s = eventListener;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void start() {
        this.C.start();
        if (!this.f28402n.hasWebView()) {
            v(31);
            VungleLogger.error(LocalAdPresenter.class.getSimpleName() + "#start", new VungleException(31).getLocalizedMessage());
            return;
        }
        this.f28402n.setImmersiveMode();
        this.f28402n.resumeWeb();
        Cookie cookie = this.f28392d.get(Cookie.CONSENT_COOKIE);
        if (r(cookie)) {
            x(cookie);
            return;
        }
        if (this.f28401m) {
            if (o()) {
                s();
                return;
            }
            return;
        }
        if (this.f28402n.isVideoPlaying() || this.f28402n.isDialogVisible()) {
            return;
        }
        this.f28402n.playVideo(new File(this.f28398j.getPath() + File.separator + "video"), this.f28399k, this.f28413y);
        int showCloseDelay = this.f28395g.getShowCloseDelay(this.f28394f.isIncentivized());
        if (showCloseDelay > 0) {
            this.f28389a.schedule(new Runnable() { // from class: com.vungle.warren.ui.presenter.LocalAdPresenter.5
                @Override // java.lang.Runnable
                public void run() {
                    LocalAdPresenter.this.f28400l = true;
                    if (LocalAdPresenter.this.f28401m) {
                        return;
                    }
                    LocalAdPresenter.this.f28402n.showCloseButton();
                }
            }, showCloseDelay);
        } else {
            this.f28400l = true;
            this.f28402n.showCloseButton();
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void stop(@AdContract.AdStopReason int i10) {
        this.C.stop();
        boolean z10 = (i10 & 1) != 0;
        boolean z11 = (i10 & 2) != 0;
        this.f28402n.pauseWeb();
        if (this.f28402n.isVideoPlaying()) {
            this.f28413y = this.f28402n.getVideoPosition();
            this.f28402n.pauseVideo();
        }
        if (z10 || !z11) {
            if (this.f28401m || z11) {
                this.f28402n.showWebsite("about:blank");
                return;
            }
            return;
        }
        if (this.f28412x.getAndSet(true)) {
            return;
        }
        reportAction(JavascriptBridge.MraidHandler.CLOSE_ACTION, null);
        this.f28389a.cancelAll();
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28407s;
        if (eventListener != null) {
            eventListener.onNext("end", this.f28396h.isCTAClicked() ? "isCTAClicked" : null, this.f28394f.getId());
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter
    public void attach(LocalAdContract.LocalView localView, OptionsState optionsState) {
        this.f28412x.set(false);
        this.f28402n = localView;
        localView.setPresenter(this);
        AdContract.AdvertisementPresenter.EventListener eventListener = this.f28407s;
        if (eventListener != null) {
            eventListener.onNext(Constants.ATTACH, this.f28395g.getCreativeId(), this.f28394f.getId());
        }
        int settings = this.f28395g.getAdConfig().getSettings();
        if (settings > 0) {
            this.f28399k = (settings & 1) == 1;
            this.f28400l = (settings & 2) == 2;
        }
        int i10 = -1;
        int adOrientation = this.f28395g.getAdConfig().getAdOrientation();
        int i11 = 6;
        if (adOrientation == 3) {
            int orientation = this.f28395g.getOrientation();
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
        Log.d("LocalAdPresenter", "Requested Orientation " + i11);
        localView.setOrientation(i11);
        t(optionsState);
    }
}
