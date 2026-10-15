package ja;

import ja.s;
import java.io.Closeable;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Closeable {

    @Nullable
    private volatile d A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final a0 f30962o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final y f30963p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final int f30964q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final String f30965r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    final r f30966s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final s f30967t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    final d0 f30968u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    final c0 f30969v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    final c0 f30970w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    final c0 f30971x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final long f30972y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final long f30973z;

    c0(a aVar) {
        this.f30962o = aVar.f30974a;
        this.f30963p = aVar.f30975b;
        this.f30964q = aVar.f30976c;
        this.f30965r = aVar.f30977d;
        this.f30966s = aVar.f30978e;
        this.f30967t = aVar.f30979f.d();
        this.f30968u = aVar.f30980g;
        this.f30969v = aVar.f30981h;
        this.f30970w = aVar.f30982i;
        this.f30971x = aVar.f30983j;
        this.f30972y = aVar.f30984k;
        this.f30973z = aVar.f30985l;
    }

    @Nullable
    public d0 b() {
        return this.f30968u;
    }

    public d c() {
        d dVar = this.A;
        if (dVar != null) {
            return dVar;
        }
        d dVarK = d.k(this.f30967t);
        this.A = dVarK;
        return dVarK;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d0 d0Var = this.f30968u;
        if (d0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        d0Var.close();
    }

    public int d() {
        return this.f30964q;
    }

    @Nullable
    public r e() {
        return this.f30966s;
    }

    @Nullable
    public String f(String str) {
        return g(str, null);
    }

    @Nullable
    public String g(String str, @Nullable String str2) {
        String strC = this.f30967t.c(str);
        return strC != null ? strC : str2;
    }

    public s h() {
        return this.f30967t;
    }

    public boolean i() {
        int i10 = this.f30964q;
        return i10 >= 200 && i10 < 300;
    }

    public String j() {
        return this.f30965r;
    }

    public a k() {
        return new a(this);
    }

    @Nullable
    public c0 l() {
        return this.f30971x;
    }

    public long m() {
        return this.f30973z;
    }

    public a0 n() {
        return this.f30962o;
    }

    public long o() {
        return this.f30972y;
    }

    public String toString() {
        return "Response{protocol=" + this.f30963p + ", code=" + this.f30964q + ", message=" + this.f30965r + ", url=" + this.f30962o.h() + '}';
    }

    /* JADX INFO: compiled from: Response.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        a0 f30974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        y f30975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f30976c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f30977d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        r f30978e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        s.a f30979f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        d0 f30980g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        c0 f30981h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Nullable
        c0 f30982i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @Nullable
        c0 f30983j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        long f30984k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        long f30985l;

        public a() {
            this.f30976c = -1;
            this.f30979f = new s.a();
        }

        private void e(c0 c0Var) {
            if (c0Var.f30968u != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        private void f(String str, c0 c0Var) {
            if (c0Var.f30968u != null) {
                throw new IllegalArgumentException(str + ".body != null");
            }
            if (c0Var.f30969v != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            if (c0Var.f30970w != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (c0Var.f30971x == null) {
                return;
            }
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }

        public a a(String str, String str2) {
            this.f30979f.a(str, str2);
            return this;
        }

        public a b(@Nullable d0 d0Var) {
            this.f30980g = d0Var;
            return this;
        }

        public c0 c() {
            if (this.f30974a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f30975b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f30976c >= 0) {
                if (this.f30977d != null) {
                    return new c0(this);
                }
                throw new IllegalStateException("message == null");
            }
            throw new IllegalStateException("code < 0: " + this.f30976c);
        }

        public a d(@Nullable c0 c0Var) {
            if (c0Var != null) {
                f("cacheResponse", c0Var);
            }
            this.f30982i = c0Var;
            return this;
        }

        public a g(int i10) {
            this.f30976c = i10;
            return this;
        }

        public a h(@Nullable r rVar) {
            this.f30978e = rVar;
            return this;
        }

        public a i(String str, String str2) {
            this.f30979f.f(str, str2);
            return this;
        }

        public a j(s sVar) {
            this.f30979f = sVar.f();
            return this;
        }

        public a k(String str) {
            this.f30977d = str;
            return this;
        }

        public a l(@Nullable c0 c0Var) {
            if (c0Var != null) {
                f("networkResponse", c0Var);
            }
            this.f30981h = c0Var;
            return this;
        }

        public a m(@Nullable c0 c0Var) {
            if (c0Var != null) {
                e(c0Var);
            }
            this.f30983j = c0Var;
            return this;
        }

        public a n(y yVar) {
            this.f30975b = yVar;
            return this;
        }

        public a o(long j10) {
            this.f30985l = j10;
            return this;
        }

        public a p(a0 a0Var) {
            this.f30974a = a0Var;
            return this;
        }

        public a q(long j10) {
            this.f30984k = j10;
            return this;
        }

        a(c0 c0Var) {
            this.f30976c = -1;
            this.f30974a = c0Var.f30962o;
            this.f30975b = c0Var.f30963p;
            this.f30976c = c0Var.f30964q;
            this.f30977d = c0Var.f30965r;
            this.f30978e = c0Var.f30966s;
            this.f30979f = c0Var.f30967t.f();
            this.f30980g = c0Var.f30968u;
            this.f30981h = c0Var.f30969v;
            this.f30982i = c0Var.f30970w;
            this.f30983j = c0Var.f30971x;
            this.f30984k = c0Var.f30972y;
            this.f30985l = c0Var.f30973z;
        }
    }
}
