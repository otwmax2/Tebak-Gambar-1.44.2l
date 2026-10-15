package pa;

import com.facebook.internal.security.CertificateUtil;
import ja.s;

/* JADX INFO: compiled from: Header.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final okio.f f33566d = okio.f.l(CertificateUtil.DELIMITER);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final okio.f f33567e = okio.f.l(":status");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final okio.f f33568f = okio.f.l(":method");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final okio.f f33569g = okio.f.l(":path");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final okio.f f33570h = okio.f.l(":scheme");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final okio.f f33571i = okio.f.l(":authority");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final okio.f f33572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final okio.f f33573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f33574c;

    /* JADX INFO: compiled from: Header.java */
    interface a {
        void a(s sVar);
    }

    public c(String str, String str2) {
        this(okio.f.l(str), okio.f.l(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f33572a.equals(cVar.f33572a) && this.f33573b.equals(cVar.f33573b);
    }

    public int hashCode() {
        return ((527 + this.f33572a.hashCode()) * 31) + this.f33573b.hashCode();
    }

    public String toString() {
        return ka.c.r("%s: %s", this.f33572a.O(), this.f33573b.O());
    }

    public c(okio.f fVar, String str) {
        this(fVar, okio.f.l(str));
    }

    public c(okio.f fVar, okio.f fVar2) {
        this.f33572a = fVar;
        this.f33573b = fVar2;
        this.f33574c = fVar.J() + 32 + fVar2.J();
    }
}
