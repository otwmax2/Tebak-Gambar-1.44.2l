package com.vungle.warren.ui.view;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import com.google.gson.o;
import com.vungle.warren.omsdk.WebViewObserver;

/* JADX INFO: loaded from: classes2.dex */
public interface WebViewAPI {

    public interface MRAIDDelegate {
        boolean processCommand(String str, o oVar);
    }

    public interface WebClientErrorHandler {
        void onReceivedError(String str, boolean z10);

        void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess);

        boolean onWebRenderingProcessGone(WebView webView, boolean z10);
    }

    void notifyPropertiesChange(boolean z10);

    void setAdVisibility(boolean z10);

    void setConsentStatus(boolean z10, String str, String str2, String str3, String str4);

    void setErrorHandler(WebClientErrorHandler webClientErrorHandler);

    void setMRAIDDelegate(MRAIDDelegate mRAIDDelegate);

    void setWebViewObserver(WebViewObserver webViewObserver);
}
