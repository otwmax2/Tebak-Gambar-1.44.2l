package ba;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: Charsets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f4712a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f4713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f4714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Charset f4715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f4716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f4717f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Charset f4718g;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        t9.m.d(charsetForName, "forName(\"UTF-8\")");
        f4713b = charsetForName;
        Charset charsetForName2 = Charset.forName("UTF-16");
        t9.m.d(charsetForName2, "forName(\"UTF-16\")");
        f4714c = charsetForName2;
        Charset charsetForName3 = Charset.forName("UTF-16BE");
        t9.m.d(charsetForName3, "forName(\"UTF-16BE\")");
        f4715d = charsetForName3;
        Charset charsetForName4 = Charset.forName("UTF-16LE");
        t9.m.d(charsetForName4, "forName(\"UTF-16LE\")");
        f4716e = charsetForName4;
        Charset charsetForName5 = Charset.forName("US-ASCII");
        t9.m.d(charsetForName5, "forName(\"US-ASCII\")");
        f4717f = charsetForName5;
        Charset charsetForName6 = Charset.forName("ISO-8859-1");
        t9.m.d(charsetForName6, "forName(\"ISO-8859-1\")");
        f4718g = charsetForName6;
    }

    private d() {
    }
}
