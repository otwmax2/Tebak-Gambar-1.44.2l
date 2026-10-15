package ja;

import ja.c0;
import ja.e;
import ja.p;
import ja.s;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: OkHttpClient.java */
/* JADX INFO: loaded from: classes.dex */
public class x implements Cloneable, e.a {
    static final List<y> P = ka.c.u(y.HTTP_2, y.HTTP_1_1);
    static final List<k> Q = ka.c.u(k.f31116h, k.f31118j);
    final sa.c A;
    final HostnameVerifier B;
    final g C;
    final ja.b D;
    final ja.b E;
    final j F;
    final o G;
    final boolean H;
    final boolean I;
    final boolean J;
    final int K;
    final int L;
    final int M;
    final int N;
    final int O;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final n f31205o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    final Proxy f31206p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final List<y> f31207q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final List<k> f31208r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final List<u> f31209s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final List<u> f31210t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final p.c f31211u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final ProxySelector f31212v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final m f31213w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    final la.d f31214x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final SocketFactory f31215y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final SSLSocketFactory f31216z;

    /* JADX INFO: compiled from: OkHttpClient.java */
    class a extends ka.a {
        a() {
        }

        @Override // ka.a
        public void a(s.a aVar, String str) {
            aVar.b(str);
        }

        @Override // ka.a
        public void b(s.a aVar, String str, String str2) {
            aVar.c(str, str2);
        }

        @Override // ka.a
        public void c(k kVar, SSLSocket sSLSocket, boolean z10) {
            kVar.a(sSLSocket, z10);
        }

        @Override // ka.a
        public int d(c0.a aVar) {
            return aVar.f30976c;
        }

        @Override // ka.a
        public boolean e(j jVar, ma.c cVar) {
            return jVar.b(cVar);
        }

        @Override // ka.a
        public Socket f(j jVar, ja.a aVar, ma.g gVar) {
            return jVar.c(aVar, gVar);
        }

        @Override // ka.a
        public boolean g(ja.a aVar, ja.a aVar2) {
            return aVar.d(aVar2);
        }

        @Override // ka.a
        public ma.c h(j jVar, ja.a aVar, ma.g gVar, e0 e0Var) {
            return jVar.d(aVar, gVar, e0Var);
        }

        @Override // ka.a
        public void i(j jVar, ma.c cVar) {
            jVar.f(cVar);
        }

        @Override // ka.a
        public ma.d j(j jVar) {
            return jVar.f31110e;
        }

        @Override // ka.a
        @Nullable
        public IOException k(e eVar, @Nullable IOException iOException) {
            return ((z) eVar).i(iOException);
        }
    }

    static {
        ka.a.f31636a = new a();
    }

    public x() {
        this(new b());
    }

    private static SSLSocketFactory u(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContextM = qa.g.l().m();
            sSLContextM.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContextM.getSocketFactory();
        } catch (GeneralSecurityException e10) {
            throw ka.c.b("No System TLS", e10);
        }
    }

    public int A() {
        return this.M;
    }

    public boolean B() {
        return this.J;
    }

    public SocketFactory C() {
        return this.f31215y;
    }

    public SSLSocketFactory D() {
        return this.f31216z;
    }

    public int E() {
        return this.N;
    }

    @Override // ja.e.a
    public e a(a0 a0Var) {
        return z.g(this, a0Var, false);
    }

    public ja.b b() {
        return this.E;
    }

    public int d() {
        return this.K;
    }

    public g f() {
        return this.C;
    }

    public int g() {
        return this.L;
    }

    public j h() {
        return this.F;
    }

    public List<k> i() {
        return this.f31208r;
    }

    public m j() {
        return this.f31213w;
    }

    public n k() {
        return this.f31205o;
    }

    public o l() {
        return this.G;
    }

    public p.c m() {
        return this.f31211u;
    }

    public boolean n() {
        return this.I;
    }

    public boolean o() {
        return this.H;
    }

    public HostnameVerifier p() {
        return this.B;
    }

    public List<u> q() {
        return this.f31209s;
    }

    la.d r() {
        return this.f31214x;
    }

    public List<u> s() {
        return this.f31210t;
    }

    public b t() {
        return new b(this);
    }

    public int v() {
        return this.O;
    }

    public List<y> w() {
        return this.f31207q;
    }

    @Nullable
    public Proxy x() {
        return this.f31206p;
    }

    public ja.b y() {
        return this.D;
    }

    public ProxySelector z() {
        return this.f31212v;
    }

    x(b bVar) {
        boolean z10;
        this.f31205o = bVar.f31217a;
        this.f31206p = bVar.f31218b;
        this.f31207q = bVar.f31219c;
        List<k> list = bVar.f31220d;
        this.f31208r = list;
        this.f31209s = ka.c.t(bVar.f31221e);
        this.f31210t = ka.c.t(bVar.f31222f);
        this.f31211u = bVar.f31223g;
        this.f31212v = bVar.f31224h;
        this.f31213w = bVar.f31225i;
        this.f31214x = bVar.f31226j;
        this.f31215y = bVar.f31227k;
        Iterator<k> it = list.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z10 = z10 || it.next().d();
            }
        }
        SSLSocketFactory sSLSocketFactory = bVar.f31228l;
        if (sSLSocketFactory == null && z10) {
            X509TrustManager x509TrustManagerC = ka.c.C();
            this.f31216z = u(x509TrustManagerC);
            this.A = sa.c.b(x509TrustManagerC);
        } else {
            this.f31216z = sSLSocketFactory;
            this.A = bVar.f31229m;
        }
        if (this.f31216z != null) {
            qa.g.l().f(this.f31216z);
        }
        this.B = bVar.f31230n;
        this.C = bVar.f31231o.f(this.A);
        this.D = bVar.f31232p;
        this.E = bVar.f31233q;
        this.F = bVar.f31234r;
        this.G = bVar.f31235s;
        this.H = bVar.f31236t;
        this.I = bVar.f31237u;
        this.J = bVar.f31238v;
        this.K = bVar.f31239w;
        this.L = bVar.f31240x;
        this.M = bVar.f31241y;
        this.N = bVar.f31242z;
        this.O = bVar.A;
        if (this.f31209s.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f31209s);
        }
        if (this.f31210t.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f31210t);
        }
    }

    /* JADX INFO: compiled from: OkHttpClient.java */
    public static final class b {
        int A;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        n f31217a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        Proxy f31218b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<y> f31219c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<k> f31220d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final List<u> f31221e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List<u> f31222f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        p.c f31223g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        ProxySelector f31224h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        m f31225i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @Nullable
        la.d f31226j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        SocketFactory f31227k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        @Nullable
        SSLSocketFactory f31228l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        @Nullable
        sa.c f31229m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        HostnameVerifier f31230n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        g f31231o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        ja.b f31232p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        ja.b f31233q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        j f31234r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        o f31235s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        boolean f31236t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f31237u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        boolean f31238v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        int f31239w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        int f31240x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        int f31241y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        int f31242z;

        public b() {
            this.f31221e = new ArrayList();
            this.f31222f = new ArrayList();
            this.f31217a = new n();
            this.f31219c = x.P;
            this.f31220d = x.Q;
            this.f31223g = p.k(p.f31149a);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f31224h = proxySelector;
            if (proxySelector == null) {
                this.f31224h = new ra.a();
            }
            this.f31225i = m.f31140a;
            this.f31227k = SocketFactory.getDefault();
            this.f31230n = sa.d.f35041a;
            this.f31231o = g.f31027c;
            ja.b bVar = ja.b.f30953a;
            this.f31232p = bVar;
            this.f31233q = bVar;
            this.f31234r = new j();
            this.f31235s = o.f31148a;
            this.f31236t = true;
            this.f31237u = true;
            this.f31238v = true;
            this.f31239w = 0;
            this.f31240x = 10000;
            this.f31241y = 10000;
            this.f31242z = 10000;
            this.A = 0;
        }

        public b a(u uVar) {
            if (uVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.f31221e.add(uVar);
            return this;
        }

        public b b(u uVar) {
            if (uVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.f31222f.add(uVar);
            return this;
        }

        public b c(ja.b bVar) {
            Objects.requireNonNull(bVar, "authenticator == null");
            this.f31233q = bVar;
            return this;
        }

        public x d() {
            return new x(this);
        }

        public b e(@Nullable c cVar) {
            this.f31226j = null;
            return this;
        }

        public b f(g gVar) {
            Objects.requireNonNull(gVar, "certificatePinner == null");
            this.f31231o = gVar;
            return this;
        }

        public b g(long j10, TimeUnit timeUnit) {
            this.f31240x = ka.c.e("timeout", j10, timeUnit);
            return this;
        }

        public b h(boolean z10) {
            this.f31237u = z10;
            return this;
        }

        public b i(boolean z10) {
            this.f31236t = z10;
            return this;
        }

        public b j(long j10, TimeUnit timeUnit) {
            this.f31241y = ka.c.e("timeout", j10, timeUnit);
            return this;
        }

        public b k(long j10, TimeUnit timeUnit) {
            this.f31242z = ka.c.e("timeout", j10, timeUnit);
            return this;
        }

        b(x xVar) {
            ArrayList arrayList = new ArrayList();
            this.f31221e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f31222f = arrayList2;
            this.f31217a = xVar.f31205o;
            this.f31218b = xVar.f31206p;
            this.f31219c = xVar.f31207q;
            this.f31220d = xVar.f31208r;
            arrayList.addAll(xVar.f31209s);
            arrayList2.addAll(xVar.f31210t);
            this.f31223g = xVar.f31211u;
            this.f31224h = xVar.f31212v;
            this.f31225i = xVar.f31213w;
            this.f31226j = xVar.f31214x;
            this.f31227k = xVar.f31215y;
            this.f31228l = xVar.f31216z;
            this.f31229m = xVar.A;
            this.f31230n = xVar.B;
            this.f31231o = xVar.C;
            this.f31232p = xVar.D;
            this.f31233q = xVar.E;
            this.f31234r = xVar.F;
            this.f31235s = xVar.G;
            this.f31236t = xVar.H;
            this.f31237u = xVar.I;
            this.f31238v = xVar.J;
            this.f31239w = xVar.K;
            this.f31240x = xVar.L;
            this.f31241y = xVar.M;
            this.f31242z = xVar.N;
            this.A = xVar.O;
        }
    }
}
