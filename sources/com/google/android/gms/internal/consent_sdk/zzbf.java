package com.google.android.gms.internal.consent_sdk;

import android.annotation.TargetApi;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbf extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbg f21734a;

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        if (zzbg.c(this.f21734a, str)) {
            this.f21734a.f21736p.c(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        if (this.f21734a.f21737q) {
            return;
        }
        Log.d("UserMessagingPlatform", "Wall html loaded.");
        zzbg.e(this.f21734a, true);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i10, String str, String str2) {
        this.f21734a.f21736p.d(i10, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String string = webResourceRequest.getUrl().toString();
        if (!zzbg.c(this.f21734a, string)) {
            return false;
        }
        this.f21734a.f21736p.c(string);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!zzbg.c(this.f21734a, str)) {
            return false;
        }
        this.f21734a.f21736p.c(str);
        return true;
    }
}
