package c8;

import a8.d;
import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.WebView;
import com.vungle.warren.AdLoader;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import x7.j;
import x7.k;
import y7.e;

/* JADX INFO: loaded from: classes2.dex */
public class c extends c8.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebView f4962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Long f4963e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<String, j> f4964f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f4965g;

    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final WebView f4966o;

        a() {
            this.f4966o = c.this.f4962d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4966o.destroy();
        }
    }

    public c(Map<String, j> map, String str) {
        this.f4964f = map;
        this.f4965g = str;
    }

    @Override // c8.a
    public void a() {
        super.a();
        p();
    }

    @Override // c8.a
    public void f(k kVar, x7.c cVar) {
        JSONObject jSONObject = new JSONObject();
        Map<String, j> mapE = cVar.e();
        for (String str : mapE.keySet()) {
            a8.b.g(jSONObject, str, mapE.get(str));
        }
        g(kVar, cVar, jSONObject);
    }

    @Override // c8.a
    public void i() {
        super.i();
        new Handler().postDelayed(new a(), Math.max(4000 - (this.f4963e == null ? 4000L : TimeUnit.MILLISECONDS.convert(d.a() - this.f4963e.longValue(), TimeUnit.NANOSECONDS)), AdLoader.RETRY_DELAY));
        this.f4962d = null;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void p() {
        WebView webView = new WebView(y7.d.a().c());
        this.f4962d = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        c(this.f4962d);
        e.a().j(this.f4962d, this.f4965g);
        for (String str : this.f4964f.keySet()) {
            e.a().d(this.f4962d, this.f4964f.get(str).a().toExternalForm(), str);
        }
        this.f4963e = Long.valueOf(d.a());
    }
}
