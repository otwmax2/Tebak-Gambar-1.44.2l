package o7;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: EncoderContext.java */
/* JADX INFO: loaded from: classes2.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private l f33128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i7.b f33129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i7.b f33130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final StringBuilder f33131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f33132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f33133g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private k f33134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f33135i;

    h(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = (char) (bytes[i10] & 255);
            if (c10 == '?' && str.charAt(i10) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c10);
        }
        this.f33127a = sb.toString();
        this.f33128b = l.FORCE_NONE;
        this.f33131e = new StringBuilder(str.length());
        this.f33133g = -1;
    }

    private int h() {
        return this.f33127a.length() - this.f33135i;
    }

    public int a() {
        return this.f33131e.length();
    }

    public StringBuilder b() {
        return this.f33131e;
    }

    public char c() {
        return this.f33127a.charAt(this.f33132f);
    }

    public String d() {
        return this.f33127a;
    }

    public int e() {
        return this.f33133g;
    }

    public int f() {
        return h() - this.f33132f;
    }

    public k g() {
        return this.f33134h;
    }

    public boolean i() {
        return this.f33132f < h();
    }

    public void j() {
        this.f33133g = -1;
    }

    public void k() {
        this.f33134h = null;
    }

    public void l(i7.b bVar, i7.b bVar2) {
        this.f33129c = bVar;
        this.f33130d = bVar2;
    }

    public void m(int i10) {
        this.f33135i = i10;
    }

    public void n(l lVar) {
        this.f33128b = lVar;
    }

    public void o(int i10) {
        this.f33133g = i10;
    }

    public void p() {
        q(a());
    }

    public void q(int i10) {
        k kVar = this.f33134h;
        if (kVar == null || i10 > kVar.a()) {
            this.f33134h = k.l(i10, this.f33128b, this.f33129c, this.f33130d, true);
        }
    }

    public void r(char c10) {
        this.f33131e.append(c10);
    }

    public void s(String str) {
        this.f33131e.append(str);
    }
}
