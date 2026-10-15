package com.twitter.sdk.android.core.identity;

import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import d9.f;
import java.net.URI;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: OAuthWebViewClient.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f27448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f27449b;

    /* JADX INFO: compiled from: OAuthWebViewClient.java */
    interface a {
        void a(d dVar);

        void b(WebView webView, String str);

        void c(Bundle bundle);
    }

    c(String str, a aVar) {
        this.f27448a = str;
        this.f27449b = aVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f27449b.b(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        super.onReceivedError(webView, i10, str, str2);
        this.f27449b.a(new d(i10, str, str2));
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.f27449b.a(new d(sslError.getPrimaryError(), null, null));
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!str.startsWith(this.f27448a)) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        TreeMap<String, String> treeMapB = f.b(URI.create(str), false);
        Bundle bundle = new Bundle(treeMapB.size());
        for (Map.Entry<String, String> entry : treeMapB.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        this.f27449b.c(bundle);
        return true;
    }
}
