package com.google.android.gms.internal.ads;

import android.webkit.WebView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfgd implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ WebView f18160o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f18161p;

    zzfgd(zzfge zzfgeVar, WebView webView, String str) {
        this.f18160o = webView;
        this.f18161p = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18160o.loadUrl(this.f18161p);
    }
}
