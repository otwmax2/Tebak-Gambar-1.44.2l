package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.identity.c;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.f;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.o;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.t;
import com.twitter.sdk.android.core.y;

/* JADX INFO: compiled from: OAuthController.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final c f27440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    t f27441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ProgressBar f27442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WebView f27443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final r f27444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final OAuth1aService f27445f;

    /* JADX INFO: renamed from: com.twitter.sdk.android.core.identity.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OAuthController.java */
    class C0137a extends com.twitter.sdk.android.core.c<f> {
        C0137a() {
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            o.g().b("Twitter", "Failed to get request token", yVar);
            a.this.i(1, new s("Failed to get request token"));
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<f> lVar) {
            a aVar = a.this;
            aVar.f27441b = lVar.f27482a.f27471o;
            String strI = aVar.f27445f.i(a.this.f27441b);
            o.g().c("Twitter", "Redirecting user to web view to complete authorization flow");
            a aVar2 = a.this;
            aVar2.n(aVar2.f27443d, new com.twitter.sdk.android.core.identity.c(a.this.f27445f.g(a.this.f27444e), a.this), strI, new com.twitter.sdk.android.core.identity.b());
        }
    }

    /* JADX INFO: compiled from: OAuthController.java */
    class b extends com.twitter.sdk.android.core.c<f> {
        b() {
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            o.g().b("Twitter", "Failed to get access token", yVar);
            a.this.i(1, new s("Failed to get access token"));
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<f> lVar) {
            Intent intent = new Intent();
            f fVar = lVar.f27482a;
            intent.putExtra("screen_name", fVar.f27472p);
            intent.putExtra("user_id", fVar.f27473q);
            intent.putExtra("tk", fVar.f27471o.f27502p);
            intent.putExtra("ts", fVar.f27471o.f27503q);
            a.this.f27440a.a(-1, intent);
        }
    }

    /* JADX INFO: compiled from: OAuthController.java */
    interface c {
        void a(int i10, Intent intent);
    }

    a(ProgressBar progressBar, WebView webView, r rVar, OAuth1aService oAuth1aService, c cVar) {
        this.f27442c = progressBar;
        this.f27443d = webView;
        this.f27444e = rVar;
        this.f27445f = oAuth1aService;
        this.f27440a = cVar;
    }

    private void g() {
        this.f27442c.setVisibility(8);
    }

    private void h() {
        this.f27443d.stopLoading();
        g();
    }

    private void j(d dVar) {
        o.g().b("Twitter", "OAuth web view completed with an error", dVar);
        i(1, new s("OAuth web view completed with an error"));
    }

    private void k(Bundle bundle) {
        String string;
        o.g().c("Twitter", "OAuth web view completed successfully");
        if (bundle != null && (string = bundle.getString("oauth_verifier")) != null) {
            o.g().c("Twitter", "Converting the request token to an access token.");
            this.f27445f.m(l(), this.f27441b, string);
            return;
        }
        o.g().b("Twitter", "Failed to get authorization, bundle incomplete " + bundle, null);
        i(1, new s("Failed to get authorization, bundle incomplete"));
    }

    @Override // com.twitter.sdk.android.core.identity.c.a
    public void a(d dVar) {
        j(dVar);
        h();
    }

    @Override // com.twitter.sdk.android.core.identity.c.a
    public void b(WebView webView, String str) {
        g();
        webView.setVisibility(0);
    }

    @Override // com.twitter.sdk.android.core.identity.c.a
    public void c(Bundle bundle) {
        k(bundle);
        h();
    }

    protected void i(int i10, s sVar) {
        Intent intent = new Intent();
        intent.putExtra("auth_error", sVar);
        this.f27440a.a(i10, intent);
    }

    com.twitter.sdk.android.core.c<f> l() {
        return new b();
    }

    com.twitter.sdk.android.core.c<f> m() {
        return new C0137a();
    }

    void n(WebView webView, WebViewClient webViewClient, String str, WebChromeClient webChromeClient) {
        WebSettings settings = webView.getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(false);
        settings.setSaveFormData(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setWebViewClient(webViewClient);
        webView.loadUrl(str);
        webView.setVisibility(4);
        webView.setWebChromeClient(webChromeClient);
    }

    void o() {
        o.g().c("Twitter", "Obtaining request token to start the sign in flow");
        this.f27445f.n(m());
    }
}
