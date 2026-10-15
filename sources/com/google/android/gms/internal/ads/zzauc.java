package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzauc implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final ValueCallback f9954o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzatu f9955p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ WebView f9956q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ boolean f9957r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzaue f9958s;

    zzauc(zzaue zzaueVar, final zzatu zzatuVar, final WebView webView, final boolean z10) {
        this.f9958s = zzaueVar;
        this.f9955p = zzatuVar;
        this.f9956q = webView;
        this.f9957r = z10;
        this.f9954o = new ValueCallback() { // from class: com.google.android.gms.internal.ads.zzaub
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                zzauc zzaucVar = this.f9950a;
                zzatu zzatuVar2 = zzatuVar;
                WebView webView2 = webView;
                boolean z11 = z10;
                zzaucVar.f9958s.d(zzatuVar2, webView2, (String) obj, z11);
            }
        };
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f9956q.getSettings().getJavaScriptEnabled()) {
            try {
                this.f9956q.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f9954o);
            } catch (Throwable unused) {
                this.f9954o.onReceiveValue(BuildConfig.FLAVOR);
            }
        }
    }
}
