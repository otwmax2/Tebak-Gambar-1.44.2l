package com.vungle.warren.ui.view;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.facebook.internal.ServerProtocol;
import com.google.gson.o;
import com.vungle.warren.BuildConfig;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import com.vungle.warren.omsdk.WebViewObserver;
import com.vungle.warren.ui.view.WebViewAPI;

/* JADX INFO: loaded from: classes2.dex */
public class VungleWebClient extends WebViewClient implements WebViewAPI {
    public static final String TAG = VungleWebClient.class.getSimpleName();
    private WebViewObserver A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Advertisement f28511o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Placement f28512p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private WebViewAPI.MRAIDDelegate f28513q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f28514r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private WebView f28515s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f28516t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f28517u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f28518v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f28519w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f28520x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Boolean f28521y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private WebViewAPI.WebClientErrorHandler f28522z;

    static class VungleWebViewRenderProcessClient extends WebViewRenderProcessClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WebViewAPI.WebClientErrorHandler f28523a;

        VungleWebViewRenderProcessClient(WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
            this.f28523a = webClientErrorHandler;
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            String str = VungleWebClient.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onRenderProcessUnresponsive(Title = ");
            sb.append(webView.getTitle());
            sb.append(", URL = ");
            sb.append(webView.getOriginalUrl());
            sb.append(", (webViewRenderProcess != null) = ");
            sb.append(webViewRenderProcess != null);
            Log.w(str, sb.toString());
            WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.f28523a;
            if (webClientErrorHandler != null) {
                webClientErrorHandler.onRenderProcessUnresponsive(webView, webViewRenderProcess);
            }
        }
    }

    public VungleWebClient(Advertisement advertisement, Placement placement) {
        this.f28511o = advertisement;
        this.f28512p = placement;
    }

    private void a(String str, String str2) {
        boolean zB = b(str2);
        String str3 = str2 + " " + str;
        WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.f28522z;
        if (webClientErrorHandler != null) {
            webClientErrorHandler.onReceivedError(str3, zB);
        }
    }

    private boolean b(String str) {
        Advertisement advertisement;
        if (TextUtils.isEmpty(str) || (advertisement = this.f28511o) == null) {
            return false;
        }
        return advertisement.getDownloadableUrls().containsValue(str);
    }

    private void c(WebView webView, String str) {
        if (Build.VERSION.SDK_INT >= 19) {
            webView.evaluateJavascript(str, null);
            return;
        }
        webView.loadUrl("javascript:" + str);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void notifyPropertiesChange(boolean z10) {
        if (this.f28515s != null) {
            o oVar = new o();
            o oVar2 = new o();
            oVar2.v(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, Integer.valueOf(this.f28515s.getWidth()));
            oVar2.v(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, Integer.valueOf(this.f28515s.getHeight()));
            o oVar3 = new o();
            oVar3.v("x", 0);
            oVar3.v("y", 0);
            oVar3.v(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, Integer.valueOf(this.f28515s.getWidth()));
            oVar3.v(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, Integer.valueOf(this.f28515s.getHeight()));
            o oVar4 = new o();
            Boolean bool = Boolean.FALSE;
            oVar4.u("sms", bool);
            oVar4.u("tel", bool);
            oVar4.u("calendar", bool);
            oVar4.u("storePicture", bool);
            oVar4.u("inlineVideo", bool);
            oVar.t(SDKConstants.PARAM_CONTEXT_MAX_SIZE, oVar2);
            oVar.t("screenSize", oVar2);
            oVar.t("defaultPosition", oVar3);
            oVar.t("currentPosition", oVar3);
            oVar.t("supports", oVar4);
            oVar.x("placementType", this.f28511o.getTemplateType());
            Boolean bool2 = this.f28521y;
            if (bool2 != null) {
                oVar.u("isViewable", bool2);
            }
            oVar.x("os", "android");
            oVar.x("osVersion", Integer.toString(Build.VERSION.SDK_INT));
            oVar.u("incentivized", Boolean.valueOf(this.f28512p.isIncentivized()));
            oVar.u("enableBackImmediately", Boolean.valueOf(this.f28511o.getShowCloseDelay(this.f28512p.isIncentivized()) == 0));
            oVar.x(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "1.0");
            if (this.f28514r) {
                oVar.u("consentRequired", Boolean.TRUE);
                oVar.x("consentTitleText", this.f28517u);
                oVar.x("consentBodyText", this.f28518v);
                oVar.x("consentAcceptButtonText", this.f28519w);
                oVar.x("consentDenyButtonText", this.f28520x);
            } else {
                oVar.u("consentRequired", bool);
            }
            oVar.x("sdkVersion", BuildConfig.VERSION_NAME);
            Log.d(TAG, "loadJsjavascript:window.vungle.mraidBridge.notifyPropertiesChange(" + oVar + "," + z10 + ")");
            c(this.f28515s, "window.vungle.mraidBridge.notifyPropertiesChange(" + oVar + "," + z10 + ")");
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        int adType = this.f28511o.getAdType();
        if (adType == 0) {
            c(webView, "function actionClicked(action){Android.performAction(action);};");
        } else {
            if (adType != 1) {
                throw new IllegalArgumentException("Unknown Client Type!");
            }
            this.f28515s = webView;
            webView.setVisibility(0);
            notifyPropertiesChange(true);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            webView.setWebViewRenderProcessClient(new VungleWebViewRenderProcessClient(this.f28522z));
        }
        WebViewObserver webViewObserver = this.A;
        if (webViewObserver != null) {
            webViewObserver.onPageFinished(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        super.onReceivedError(webView, i10, str, str2);
        if (Build.VERSION.SDK_INT < 23) {
            String str3 = TAG;
            Log.e(str3, "Error desc " + str);
            Log.e(str3, "Error for URL " + str2);
            a(str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (Build.VERSION.SDK_INT >= 21) {
            String str = TAG;
            Log.e(str, "Error desc " + webResourceResponse.getStatusCode());
            Log.e(str, "Error for URL " + webResourceRequest.getUrl().toString());
            a(String.valueOf(webResourceResponse.getStatusCode()), webResourceRequest.getUrl().toString());
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.w(TAG, "onRenderProcessGone url: " + webView.getUrl() + ",  did crash: " + renderProcessGoneDetail.didCrash());
        this.f28515s = null;
        WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.f28522z;
        return webClientErrorHandler != null ? webClientErrorHandler.onWebRenderingProcessGone(webView, renderProcessGoneDetail.didCrash()) : super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setAdVisibility(boolean z10) {
        this.f28521y = Boolean.valueOf(z10);
        notifyPropertiesChange(false);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setConsentStatus(boolean z10, String str, String str2, String str3, String str4) {
        this.f28514r = z10;
        this.f28517u = str;
        this.f28518v = str2;
        this.f28519w = str3;
        this.f28520x = str4;
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setErrorHandler(WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
        this.f28522z = webClientErrorHandler;
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setMRAIDDelegate(WebViewAPI.MRAIDDelegate mRAIDDelegate) {
        this.f28513q = mRAIDDelegate;
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setWebViewObserver(WebViewObserver webViewObserver) {
        this.A = webViewObserver;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2 = TAG;
        Log.d(str2, "MRAID Command " + str);
        if (TextUtils.isEmpty(str)) {
            Log.e(str2, "Invalid URL ");
            return false;
        }
        Uri uri = Uri.parse(str);
        if (uri.getScheme() != null) {
            String scheme = uri.getScheme();
            if (scheme.equals("mraid")) {
                String host = uri.getHost();
                if (host == null) {
                    return false;
                }
                if ("propertiesChangeCompleted".equals(host) && !this.f28516t) {
                    c(webView, "window.vungle.mraidBridge.notifyReadyEvent(" + this.f28511o.createMRAIDArgs() + ")");
                    this.f28516t = true;
                } else if (this.f28513q != null) {
                    o oVar = new o();
                    for (String str3 : uri.getQueryParameterNames()) {
                        oVar.x(str3, uri.getQueryParameter(str3));
                    }
                    if (this.f28513q.processCommand(host, oVar)) {
                        c(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
                    }
                }
                return true;
            }
            if ("http".equalsIgnoreCase(scheme) || TournamentShareDialogURIBuilder.scheme.equalsIgnoreCase(scheme)) {
                Log.d(str2, "Open URL" + str);
                if (this.f28513q != null) {
                    o oVar2 = new o();
                    oVar2.x("url", str);
                    this.f28513q.processCommand("openNonMraid", oVar2);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (Build.VERSION.SDK_INT >= 23) {
            String str = TAG;
            Log.e(str, "Error desc " + webResourceError.getDescription().toString());
            Log.e(str, "Error for URL " + webResourceRequest.getUrl().toString());
            a(webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
        }
    }
}
