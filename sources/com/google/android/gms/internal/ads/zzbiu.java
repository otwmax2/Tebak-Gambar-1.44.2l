package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzbiu implements OnH5AdsEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebView f10775a;

    @Override // com.google.android.gms.ads.h5.OnH5AdsEventListener
    public final void a(String str) {
        WebView webView = this.f10775a;
        int i10 = zzbiv.f10776d;
        webView.evaluateJavascript(str, null);
    }
}
