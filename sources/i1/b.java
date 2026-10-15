package i1;

import android.os.Build;

/* JADX INFO: compiled from: Constraints.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f30323i = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private k f30324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f30325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f30326c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f30327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f30328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f30329f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f30330g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c f30331h;

    /* JADX INFO: compiled from: Constraints.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f30332a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f30333b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        k f30334c = k.NOT_REQUIRED;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f30335d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f30336e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        long f30337f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        long f30338g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        c f30339h = new c();

        public b a() {
            return new b(this);
        }

        public a b(k kVar) {
            this.f30334c = kVar;
            return this;
        }
    }

    public b() {
        this.f30324a = k.NOT_REQUIRED;
        this.f30329f = -1L;
        this.f30330g = -1L;
        this.f30331h = new c();
    }

    public c a() {
        return this.f30331h;
    }

    public k b() {
        return this.f30324a;
    }

    public long c() {
        return this.f30329f;
    }

    public long d() {
        return this.f30330g;
    }

    public boolean e() {
        return this.f30331h.c() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f30325b == bVar.f30325b && this.f30326c == bVar.f30326c && this.f30327d == bVar.f30327d && this.f30328e == bVar.f30328e && this.f30329f == bVar.f30329f && this.f30330g == bVar.f30330g && this.f30324a == bVar.f30324a) {
            return this.f30331h.equals(bVar.f30331h);
        }
        return false;
    }

    public boolean f() {
        return this.f30327d;
    }

    public boolean g() {
        return this.f30325b;
    }

    public boolean h() {
        return this.f30326c;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.f30324a.hashCode() * 31) + (this.f30325b ? 1 : 0)) * 31) + (this.f30326c ? 1 : 0)) * 31) + (this.f30327d ? 1 : 0)) * 31) + (this.f30328e ? 1 : 0)) * 31;
        long j10 = this.f30329f;
        int i10 = (iHashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f30330g;
        return ((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f30331h.hashCode();
    }

    public boolean i() {
        return this.f30328e;
    }

    public void j(c cVar) {
        this.f30331h = cVar;
    }

    public void k(k kVar) {
        this.f30324a = kVar;
    }

    public void l(boolean z10) {
        this.f30327d = z10;
    }

    public void m(boolean z10) {
        this.f30325b = z10;
    }

    public void n(boolean z10) {
        this.f30326c = z10;
    }

    public void o(boolean z10) {
        this.f30328e = z10;
    }

    public void p(long j10) {
        this.f30329f = j10;
    }

    public void q(long j10) {
        this.f30330g = j10;
    }

    b(a aVar) {
        this.f30324a = k.NOT_REQUIRED;
        this.f30329f = -1L;
        this.f30330g = -1L;
        this.f30331h = new c();
        this.f30325b = aVar.f30332a;
        int i10 = Build.VERSION.SDK_INT;
        this.f30326c = i10 >= 23 && aVar.f30333b;
        this.f30324a = aVar.f30334c;
        this.f30327d = aVar.f30335d;
        this.f30328e = aVar.f30336e;
        if (i10 >= 24) {
            this.f30331h = aVar.f30339h;
            this.f30329f = aVar.f30337f;
            this.f30330g = aVar.f30338g;
        }
    }

    public b(b bVar) {
        this.f30324a = k.NOT_REQUIRED;
        this.f30329f = -1L;
        this.f30330g = -1L;
        this.f30331h = new c();
        this.f30325b = bVar.f30325b;
        this.f30326c = bVar.f30326c;
        this.f30324a = bVar.f30324a;
        this.f30327d = bVar.f30327d;
        this.f30328e = bVar.f30328e;
        this.f30331h = bVar.f30331h;
    }
}
