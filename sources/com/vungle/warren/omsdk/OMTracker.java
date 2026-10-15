package com.vungle.warren.omsdk;

import android.webkit.WebView;
import com.vungle.warren.BuildConfig;
import java.util.concurrent.TimeUnit;
import x7.a;
import x7.b;
import x7.c;
import x7.e;
import x7.g;
import x7.h;
import x7.i;

/* JADX INFO: loaded from: classes2.dex */
public class OMTracker implements WebViewObserver {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final long f28232d = TimeUnit.SECONDS.toMillis(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f28233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f28234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f28235c;

    public static class Factory {
        public OMTracker make(boolean z10) {
            return new OMTracker(z10);
        }
    }

    @Override // com.vungle.warren.omsdk.WebViewObserver
    public void onPageFinished(WebView webView) {
        if (this.f28234b && this.f28235c == null) {
            e eVar = e.DEFINED_BY_JAVASCRIPT;
            g gVar = g.DEFINED_BY_JAVASCRIPT;
            h hVar = h.JAVASCRIPT;
            a aVarA = a.a(b.a(eVar, gVar, hVar, hVar, false), c.a(i.a(BuildConfig.OMSDK_PARTNER_NAME, BuildConfig.VERSION_NAME), webView, null, null));
            this.f28235c = aVarA;
            aVarA.c(webView);
            this.f28235c.d();
        }
    }

    public void start() {
        if (this.f28233a && v7.a.b()) {
            this.f28234b = true;
        }
    }

    public long stop() {
        long j10;
        a aVar;
        if (!this.f28234b || (aVar = this.f28235c) == null) {
            j10 = 0;
        } else {
            aVar.b();
            j10 = f28232d;
        }
        this.f28234b = false;
        this.f28235c = null;
        return j10;
    }

    private OMTracker(boolean z10) {
        this.f28233a = z10;
    }
}
