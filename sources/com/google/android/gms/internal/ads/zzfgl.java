package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzfgl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzfhj f18173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f18174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18175c;

    public zzfgl() {
        b();
        this.f18173a = new zzfhj(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebView a() {
        return (WebView) this.f18173a.get();
    }

    public final void b() {
        this.f18174b = System.nanoTime();
        this.f18175c = 1;
    }

    public void c() {
        this.f18173a.clear();
    }

    public final void d(String str, long j10) {
        if (j10 < this.f18174b || this.f18175c == 3) {
            return;
        }
        this.f18175c = 3;
        zzfge.a().f(a(), str);
    }

    public final void e(String str, long j10) {
        if (j10 >= this.f18174b) {
            this.f18175c = 2;
            zzfge.a().f(a(), str);
        }
    }

    public void f(zzffo zzffoVar, zzffm zzffmVar) {
        g(zzffoVar, zzffmVar, null);
    }

    protected final void g(zzffo zzffoVar, zzffm zzffmVar, JSONObject jSONObject) {
        String strH = zzffoVar.h();
        JSONObject jSONObject2 = new JSONObject();
        zzfgp.h(jSONObject2, "environment", "app");
        zzfgp.h(jSONObject2, "adSessionType", zzffmVar.d());
        JSONObject jSONObject3 = new JSONObject();
        zzfgp.h(jSONObject3, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        zzfgp.h(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        zzfgp.h(jSONObject3, "os", "Android");
        zzfgp.h(jSONObject2, "deviceInfo", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        zzfgp.h(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzfgp.h(jSONObject4, "partnerName", zzffmVar.e().b());
        zzfgp.h(jSONObject4, "partnerVersion", zzffmVar.e().c());
        zzfgp.h(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzfgp.h(jSONObject5, "libraryVersion", "1.3.37-google_20220829");
        zzfgp.h(jSONObject5, "appId", zzfgc.b().a().getApplicationContext().getPackageName());
        zzfgp.h(jSONObject2, "app", jSONObject5);
        if (zzffmVar.f() != null) {
            zzfgp.h(jSONObject2, "contentUrl", zzffmVar.f());
        }
        zzfgp.h(jSONObject2, "customReferenceData", zzffmVar.g());
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = zzffmVar.h().iterator();
        if (it.hasNext()) {
            throw null;
        }
        zzfge.a().g(a(), strH, jSONObject2, jSONObject6, jSONObject);
    }

    public final void h(float f10) {
        zzfge.a().e(a(), f10);
    }

    final void i(WebView webView) {
        this.f18173a = new zzfhj(webView);
    }

    public void j() {
    }

    public final boolean k() {
        return this.f18173a.get() != 0;
    }
}
