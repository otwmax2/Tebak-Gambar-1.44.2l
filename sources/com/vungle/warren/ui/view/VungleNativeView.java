package com.vungle.warren.ui.view;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import android.view.ViewParent;
import android.webkit.WebView;
import com.vungle.warren.AdConfig;
import com.vungle.warren.AdRequest;
import com.vungle.warren.PresentationFactory;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.VungleNativeAd;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.WebAdContract;
import com.vungle.warren.utility.ActivityManager;
import com.vungle.warren.utility.ExternalRouter;
import com.vungle.warren.utility.HandlerScheduler;
import java.util.concurrent.atomic.AtomicReference;
import u0.a;

/* JADX INFO: loaded from: classes2.dex */
public class VungleNativeView extends WebView implements WebAdContract.WebAdView, VungleNativeAd {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f28498w = VungleNativeView.class.getName();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private WebAdContract.WebAdPresenter f28499o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private BroadcastReceiver f28500p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AdContract.AdvertisementPresenter.EventListener f28501q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final AdRequest f28502r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final AdConfig f28503s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    PresentationFactory f28504t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicReference<Boolean> f28505u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f28506v;

    public VungleNativeView(Context context, AdRequest adRequest, AdConfig adConfig, PresentationFactory presentationFactory, AdContract.AdvertisementPresenter.EventListener eventListener) {
        super(context);
        this.f28505u = new AtomicReference<>();
        this.f28501q = eventListener;
        this.f28502r = adRequest;
        this.f28503s = adConfig;
        this.f28504t = presentationFactory;
        setLayerType(2, null);
        setBackgroundColor(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AddJavascriptInterface", "NewApi"})
    public void g() {
        WebSettingsUtils.applyDefault(this);
        addJavascriptInterface(new JavascriptBridge(this.f28499o), "Android");
        getSettings().setMediaPlaybackRequiresUserGesture(false);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void close() {
        WebAdContract.WebAdPresenter webAdPresenter = this.f28499o;
        if (webAdPresenter != null) {
            if (webAdPresenter.handleExit()) {
                finishDisplayingAdInternal(false);
            }
        } else {
            PresentationFactory presentationFactory = this.f28504t;
            if (presentationFactory != null) {
                presentationFactory.destroy();
                this.f28504t = null;
                this.f28501q.onError(new VungleException(25), this.f28502r.getPlacementId());
            }
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void destroyAdView(long j10) {
        if (this.f28506v) {
            return;
        }
        this.f28506v = true;
        this.f28499o = null;
        this.f28504t = null;
        removeJavascriptInterface("Android");
        setWebChromeClient(null);
        Runnable runnable = new Runnable() { // from class: com.vungle.warren.ui.view.VungleNativeView.1
            @Override // java.lang.Runnable
            public void run() {
                VungleNativeView.this.stopLoading();
                VungleNativeView.this.setWebViewClient(null);
                if (Build.VERSION.SDK_INT >= 29) {
                    VungleNativeView.this.setWebViewRenderProcessClient(null);
                }
                VungleNativeView.this.loadUrl("about:blank");
            }
        };
        if (j10 <= 0) {
            runnable.run();
        } else {
            new HandlerScheduler().schedule(runnable, j10);
        }
    }

    @Override // com.vungle.warren.VungleNativeAd
    public void finishDisplayingAd() {
        finishDisplayingAdInternal(true);
    }

    public void finishDisplayingAdInternal(boolean z10) {
        WebAdContract.WebAdPresenter webAdPresenter = this.f28499o;
        if (webAdPresenter != null) {
            webAdPresenter.detach((z10 ? 4 : 0) | 2);
        } else {
            PresentationFactory presentationFactory = this.f28504t;
            if (presentationFactory != null) {
                presentationFactory.destroy();
                this.f28504t = null;
                this.f28501q.onError(new VungleException(25), this.f28502r.getPlacementId());
            }
        }
        destroyAdView(0L);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public String getWebsiteUrl() {
        return getUrl();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public boolean hasWebView() {
        return true;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        PresentationFactory presentationFactory = this.f28504t;
        if (presentationFactory != null && this.f28499o == null) {
            presentationFactory.getNativeViewPresentation(this.f28502r, this.f28503s, new CloseDelegate() { // from class: com.vungle.warren.ui.view.VungleNativeView.2
                @Override // com.vungle.warren.ui.CloseDelegate
                public void close() {
                    VungleNativeView.this.finishDisplayingAdInternal(false);
                }
            }, new PresentationFactory.ViewCallback() { // from class: com.vungle.warren.ui.view.VungleNativeView.3
                @Override // com.vungle.warren.PresentationFactory.ViewCallback
                public void onResult(Pair<WebAdContract.WebAdPresenter, VungleWebClient> pair, VungleException vungleException) {
                    VungleNativeView vungleNativeView = VungleNativeView.this;
                    vungleNativeView.f28504t = null;
                    if (vungleException != null) {
                        if (vungleNativeView.f28501q != null) {
                            VungleNativeView.this.f28501q.onError(vungleException, VungleNativeView.this.f28502r.getPlacementId());
                            return;
                        }
                        return;
                    }
                    vungleNativeView.f28499o = (WebAdContract.WebAdPresenter) pair.first;
                    VungleNativeView.this.setWebViewClient((VungleWebClient) pair.second);
                    VungleNativeView.this.f28499o.setEventListener(VungleNativeView.this.f28501q);
                    VungleNativeView.this.f28499o.attach(VungleNativeView.this, null);
                    VungleNativeView.this.g();
                    if (VungleNativeView.this.f28505u.get() != null) {
                        VungleNativeView vungleNativeView2 = VungleNativeView.this;
                        vungleNativeView2.setAdVisibility(((Boolean) vungleNativeView2.f28505u.get()).booleanValue());
                    }
                    ViewGroup.LayoutParams layoutParams = VungleNativeView.this.getLayoutParams();
                    if (layoutParams != null) {
                        layoutParams.height = -1;
                        layoutParams.width = -1;
                    }
                }
            });
        }
        this.f28500p = new BroadcastReceiver() { // from class: com.vungle.warren.ui.view.VungleNativeView.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String stringExtra = intent.getStringExtra(AdContract.AdvertisementBus.COMMAND);
                if (AdContract.AdvertisementBus.STOP_ALL.equalsIgnoreCase(stringExtra)) {
                    VungleNativeView.this.finishDisplayingAdInternal(false);
                    return;
                }
                VungleLogger.warn(VungleNativeView.class.getSimpleName() + "#onAttachedToWindow", String.format("Receiving Invalid Broadcast: %1$s", stringExtra));
            }
        };
        a.b(getContext()).c(this.f28500p, new IntentFilter(AdContract.AdvertisementBus.ACTION));
        resumeWeb();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        a.b(getContext()).e(this.f28500p);
        super.onDetachedFromWindow();
        PresentationFactory presentationFactory = this.f28504t;
        if (presentationFactory != null) {
            presentationFactory.destroy();
        }
        pauseWeb();
    }

    @Override // android.webkit.WebView
    public void onPause() {
        super.onPause();
        setAdVisibility(false);
    }

    @Override // android.webkit.WebView
    public void onResume() {
        super.onResume();
        Log.d(f28498w, "Resuming Flex");
        setAdVisibility(true);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        setAdVisibility(z10);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void open(String str, ActivityManager.LeftApplicationCallback leftApplicationCallback) {
        String str2 = f28498w;
        Log.d(str2, "Opening " + str);
        if (ExternalRouter.launch(str, getContext(), leftApplicationCallback)) {
            return;
        }
        Log.e(str2, "Cannot open url " + str);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void pauseWeb() {
        onPause();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void refreshDialogIfVisible() {
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void removeWebView() {
        ViewParent parent = getParent();
        if (parent instanceof ViewManager) {
            ((ViewManager) parent).removeView(this);
        }
    }

    @Override // com.vungle.warren.VungleNativeAd
    public View renderNativeView() {
        return this;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void resumeWeb() {
        onResume();
    }

    @Override // com.vungle.warren.VungleNativeAd
    public void setAdVisibility(boolean z10) {
        WebAdContract.WebAdPresenter webAdPresenter = this.f28499o;
        if (webAdPresenter != null) {
            webAdPresenter.setAdVisibility(z10);
        } else {
            this.f28505u.set(Boolean.valueOf(z10));
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setImmersiveMode() {
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setOrientation(int i10) {
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setPresenter(WebAdContract.WebAdPresenter webAdPresenter) {
    }

    @Override // com.vungle.warren.ui.contract.WebAdContract.WebAdView
    public void setVisibility(boolean z10) {
        setVisibility(z10 ? 0 : 4);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showCloseButton() {
        throw new UnsupportedOperationException("VungleNativeView does not implement a close button");
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showDialog(String str, String str2, String str3, String str4, DialogInterface.OnClickListener onClickListener) {
        throw new UnsupportedOperationException("VungleNativeView does not implement a dialog.");
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showWebsite(String str) {
        loadUrl(str);
    }

    @Override // com.vungle.warren.ui.contract.WebAdContract.WebAdView
    public void updateWindow() {
    }
}
