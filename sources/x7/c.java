package x7;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f36502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f36503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<j> f36504c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, j> f36505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f36506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f36507f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f36508g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d f36509h;

    private c(i iVar, WebView webView, String str, List<j> list, String str2, String str3, d dVar) {
        ArrayList arrayList = new ArrayList();
        this.f36504c = arrayList;
        this.f36505d = new HashMap();
        this.f36502a = iVar;
        this.f36503b = webView;
        this.f36506e = str;
        this.f36509h = dVar;
        if (list != null) {
            arrayList.addAll(list);
            for (j jVar : list) {
                this.f36505d.put(UUID.randomUUID().toString(), jVar);
            }
        }
        this.f36508g = str2;
        this.f36507f = str3;
    }

    public static c a(i iVar, WebView webView, String str, String str2) {
        a8.e.b(iVar, "Partner is null");
        a8.e.b(webView, "WebView is null");
        if (str2 != null) {
            a8.e.c(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new c(iVar, webView, null, null, str, str2, d.HTML);
    }

    public d b() {
        return this.f36509h;
    }

    public String c() {
        return this.f36508g;
    }

    public String d() {
        return this.f36507f;
    }

    public Map<String, j> e() {
        return Collections.unmodifiableMap(this.f36505d);
    }

    public String f() {
        return this.f36506e;
    }

    public i g() {
        return this.f36502a;
    }

    public List<j> h() {
        return Collections.unmodifiableList(this.f36504c);
    }

    public WebView i() {
        return this.f36503b;
    }
}
