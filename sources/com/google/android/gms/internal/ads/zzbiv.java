package com.google.android.gms.internal.ads;

import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.h5.H5AdsRequestHandler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbiv extends zzbii {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f10776d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebViewClient f10777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final H5AdsRequestHandler f10778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WebView f10779c;

    private final boolean b(WebView webView) {
        if (this.f10779c.equals(webView)) {
            return true;
        }
        zzbza.d("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final WebViewClient a() {
        return this.f10777a;
    }

    @Override // com.google.android.gms.internal.ads.zzbii, android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        if (b(webView) && !this.f10778b.a(str)) {
            super.onLoadResource(webView, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbii, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (!b(this.f10779c)) {
            return false;
        }
        if (this.f10778b.a(webResourceRequest.getUrl().toString())) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override // com.google.android.gms.internal.ads.zzbii, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!b(webView)) {
            return false;
        }
        if (this.f10778b.a(str)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
