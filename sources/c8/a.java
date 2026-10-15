package c8;

import android.webkit.WebView;
import org.json.JSONArray;
import org.json.JSONObject;
import x7.j;
import x7.k;
import y7.d;
import y7.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b8.b f4955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EnumC0096a f4956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f4957c;

    /* JADX INFO: renamed from: c8.a$a, reason: collision with other inner class name */
    enum EnumC0096a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public a() {
        n();
        this.f4955a = new b8.b(null);
    }

    public void a() {
    }

    public void b(float f10) {
        e.a().c(m(), f10);
    }

    void c(WebView webView) {
        this.f4955a = new b8.b(webView);
    }

    public void d(String str, long j10) {
        if (j10 >= this.f4957c) {
            this.f4956b = EnumC0096a.AD_STATE_VISIBLE;
            e.a().k(m(), str);
        }
    }

    public void e(x7.b bVar) {
        e.a().h(m(), bVar.b());
    }

    public void f(k kVar, x7.c cVar) {
        g(kVar, cVar, null);
    }

    protected void g(k kVar, x7.c cVar, JSONObject jSONObject) {
        String strJ = kVar.j();
        JSONObject jSONObject2 = new JSONObject();
        a8.b.g(jSONObject2, "environment", "app");
        a8.b.g(jSONObject2, "adSessionType", cVar.b());
        a8.b.g(jSONObject2, "deviceInfo", a8.a.d());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        a8.b.g(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        a8.b.g(jSONObject3, "partnerName", cVar.g().b());
        a8.b.g(jSONObject3, "partnerVersion", cVar.g().c());
        a8.b.g(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        a8.b.g(jSONObject4, "libraryVersion", "1.3.16-Vungle");
        a8.b.g(jSONObject4, "appId", d.a().c().getApplicationContext().getPackageName());
        a8.b.g(jSONObject2, "app", jSONObject4);
        if (cVar.c() != null) {
            a8.b.g(jSONObject2, "contentUrl", cVar.c());
        }
        if (cVar.d() != null) {
            a8.b.g(jSONObject2, "customReferenceData", cVar.d());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (j jVar : cVar.h()) {
            a8.b.g(jSONObject5, jVar.b(), jVar.c());
        }
        e.a().e(m(), strJ, jSONObject2, jSONObject5, jSONObject);
    }

    public void h(boolean z10) {
        if (k()) {
            e.a().l(m(), z10 ? "foregrounded" : "backgrounded");
        }
    }

    public void i() {
        this.f4955a.clear();
    }

    public void j(String str, long j10) {
        if (j10 >= this.f4957c) {
            EnumC0096a enumC0096a = this.f4956b;
            EnumC0096a enumC0096a2 = EnumC0096a.AD_STATE_NOTVISIBLE;
            if (enumC0096a != enumC0096a2) {
                this.f4956b = enumC0096a2;
                e.a().k(m(), str);
            }
        }
    }

    public boolean k() {
        return this.f4955a.get() != null;
    }

    public void l() {
        e.a().b(m());
    }

    public WebView m() {
        return this.f4955a.get();
    }

    public void n() {
        this.f4957c = a8.d.a();
        this.f4956b = EnumC0096a.AD_STATE_IDLE;
    }
}
