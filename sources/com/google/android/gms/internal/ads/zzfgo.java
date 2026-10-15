package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.vungle.warren.AdLoader;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgo extends zzfgl {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebView f18178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Long f18179e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f18180f;

    public zzfgo(Map map, String str) {
        this.f18180f = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfgl
    public final void c() {
        super.c();
        new Handler().postDelayed(new zzfgn(this), Math.max(4000 - (this.f18179e == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f18179e.longValue(), TimeUnit.NANOSECONDS)), AdLoader.RETRY_DELAY));
        this.f18178d = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfgl
    public final void f(zzffo zzffoVar, zzffm zzffmVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapI = zzffmVar.i();
        for (String str : mapI.keySet()) {
            zzfgp.h(jSONObject, str, (zzffu) mapI.get(str));
        }
        g(zzffoVar, zzffmVar, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzfgl
    public final void j() {
        WebView webView = new WebView(zzfgc.b().a());
        this.f18178d = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        i(this.f18178d);
        WebView webView2 = this.f18178d;
        if (webView2 != null && !TextUtils.isEmpty(null)) {
            webView2.loadUrl("javascript: null");
        }
        Iterator it = this.f18180f.keySet().iterator();
        if (!it.hasNext()) {
            this.f18179e = Long.valueOf(System.nanoTime());
        } else {
            throw null;
        }
    }
}
