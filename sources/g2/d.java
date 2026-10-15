package g2;

import android.net.Uri;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: GlideUrl.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final URL f29801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f29802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f29803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f29804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private URL f29805e;

    public d(URL url) {
        this(url, e.f29807b);
    }

    private String c() {
        if (TextUtils.isEmpty(this.f29804d)) {
            String string = this.f29803c;
            if (TextUtils.isEmpty(string)) {
                string = this.f29801a.toString();
            }
            this.f29804d = Uri.encode(string, "@#&=*+-_.,:!?()/~'%");
        }
        return this.f29804d;
    }

    private URL d() throws MalformedURLException {
        if (this.f29805e == null) {
            this.f29805e = new URL(c());
        }
        return this.f29805e;
    }

    public String a() {
        String str = this.f29803c;
        return str != null ? str : this.f29801a.toString();
    }

    public Map<String, String> b() {
        return this.f29802b.a();
    }

    public URL e() throws MalformedURLException {
        return d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return a().equals(dVar.a()) && this.f29802b.equals(dVar.f29802b);
    }

    public int hashCode() {
        return (a().hashCode() * 31) + this.f29802b.hashCode();
    }

    public String toString() {
        return a() + '\n' + this.f29802b.toString();
    }

    public d(String str) {
        this(str, e.f29807b);
    }

    public d(URL url, e eVar) {
        if (url == null) {
            throw new IllegalArgumentException("URL must not be null!");
        }
        if (eVar != null) {
            this.f29801a = url;
            this.f29803c = null;
            this.f29802b = eVar;
            return;
        }
        throw new IllegalArgumentException("Headers must not be null");
    }

    public d(String str, e eVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("String url must not be empty or null: " + str);
        }
        if (eVar != null) {
            this.f29803c = str;
            this.f29801a = null;
            this.f29802b = eVar;
            return;
        }
        throw new IllegalArgumentException("Headers must not be null");
    }
}
