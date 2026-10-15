package oa;

import ja.a0;
import ja.c0;
import ja.d0;
import ja.s;
import ja.x;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import na.h;
import na.i;
import na.k;
import okio.j;
import okio.n;
import okio.t;
import okio.u;
import okio.v;

/* JADX INFO: compiled from: Http1Codec.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements na.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final x f33307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ma.g f33308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final okio.e f33309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final okio.d f33310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f33311e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f33312f = 262144;

    /* JADX INFO: compiled from: Http1Codec.java */
    private abstract class b implements u {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        protected final j f33313o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        protected boolean f33314p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        protected long f33315q;

        private b() {
            this.f33313o = new j(a.this.f33309c.timeout());
            this.f33315q = 0L;
        }

        protected final void b(boolean z10, IOException iOException) throws IOException {
            a aVar = a.this;
            int i10 = aVar.f33311e;
            if (i10 == 6) {
                return;
            }
            if (i10 != 5) {
                throw new IllegalStateException("state: " + a.this.f33311e);
            }
            aVar.g(this.f33313o);
            a aVar2 = a.this;
            aVar2.f33311e = 6;
            ma.g gVar = aVar2.f33308b;
            if (gVar != null) {
                gVar.r(!z10, aVar2, this.f33315q, iOException);
            }
        }

        @Override // okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            try {
                long j11 = a.this.f33309c.read(cVar, j10);
                if (j11 > 0) {
                    this.f33315q += j11;
                }
                return j11;
            } catch (IOException e10) {
                b(false, e10);
                throw e10;
            }
        }

        @Override // okio.u
        public v timeout() {
            return this.f33313o;
        }
    }

    /* JADX INFO: compiled from: Http1Codec.java */
    private final class c implements t {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final j f33317o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f33318p;

        c() {
            this.f33317o = new j(a.this.f33310d.timeout());
        }

        @Override // okio.t
        public void a2(okio.c cVar, long j10) throws IOException {
            if (this.f33318p) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            a.this.f33310d.i2(j10);
            a.this.f33310d.H1("\r\n");
            a.this.f33310d.a2(cVar, j10);
            a.this.f33310d.H1("\r\n");
        }

        @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.f33318p) {
                return;
            }
            this.f33318p = true;
            a.this.f33310d.H1("0\r\n\r\n");
            a.this.g(this.f33317o);
            a.this.f33311e = 3;
        }

        @Override // okio.t, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.f33318p) {
                return;
            }
            a.this.f33310d.flush();
        }

        @Override // okio.t
        public v timeout() {
            return this.f33317o;
        }
    }

    /* JADX INFO: compiled from: Http1Codec.java */
    private class d extends b {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final ja.t f33320s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private long f33321t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f33322u;

        d(ja.t tVar) {
            super();
            this.f33321t = -1L;
            this.f33322u = true;
            this.f33320s = tVar;
        }

        private void c() throws IOException {
            if (this.f33321t != -1) {
                a.this.f33309c.D2();
            }
            try {
                this.f33321t = a.this.f33309c.P3();
                String strTrim = a.this.f33309c.D2().trim();
                if (this.f33321t < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f33321t + strTrim + "\"");
                }
                if (this.f33321t == 0) {
                    this.f33322u = false;
                    na.e.e(a.this.f33307a.j(), this.f33320s, a.this.n());
                    b(true, null);
                }
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f33314p) {
                return;
            }
            if (this.f33322u && !ka.c.p(this, 100, TimeUnit.MILLISECONDS)) {
                b(false, null);
            }
            this.f33314p = true;
        }

        @Override // oa.a.b, okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f33314p) {
                throw new IllegalStateException("closed");
            }
            if (!this.f33322u) {
                return -1L;
            }
            long j11 = this.f33321t;
            if (j11 == 0 || j11 == -1) {
                c();
                if (!this.f33322u) {
                    return -1L;
                }
            }
            long j12 = super.read(cVar, Math.min(j10, this.f33321t));
            if (j12 != -1) {
                this.f33321t -= j12;
                return j12;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            b(false, protocolException);
            throw protocolException;
        }
    }

    /* JADX INFO: compiled from: Http1Codec.java */
    private final class e implements t {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final j f33324o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f33325p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private long f33326q;

        e(long j10) {
            this.f33324o = new j(a.this.f33310d.timeout());
            this.f33326q = j10;
        }

        @Override // okio.t
        public void a2(okio.c cVar, long j10) throws IOException {
            if (this.f33325p) {
                throw new IllegalStateException("closed");
            }
            ka.c.f(cVar.s(), 0L, j10);
            if (j10 <= this.f33326q) {
                a.this.f33310d.a2(cVar, j10);
                this.f33326q -= j10;
                return;
            }
            throw new ProtocolException("expected " + this.f33326q + " bytes but received " + j10);
        }

        @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f33325p) {
                return;
            }
            this.f33325p = true;
            if (this.f33326q > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            a.this.g(this.f33324o);
            a.this.f33311e = 3;
        }

        @Override // okio.t, java.io.Flushable
        public void flush() throws IOException {
            if (this.f33325p) {
                return;
            }
            a.this.f33310d.flush();
        }

        @Override // okio.t
        public v timeout() {
            return this.f33324o;
        }
    }

    /* JADX INFO: compiled from: Http1Codec.java */
    private class f extends b {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private long f33328s;

        f(long j10) throws IOException {
            super();
            this.f33328s = j10;
            if (j10 == 0) {
                b(true, null);
            }
        }

        @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f33314p) {
                return;
            }
            if (this.f33328s != 0 && !ka.c.p(this, 100, TimeUnit.MILLISECONDS)) {
                b(false, null);
            }
            this.f33314p = true;
        }

        @Override // oa.a.b, okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f33314p) {
                throw new IllegalStateException("closed");
            }
            long j11 = this.f33328s;
            if (j11 == 0) {
                return -1L;
            }
            long j12 = super.read(cVar, Math.min(j11, j10));
            if (j12 == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                b(false, protocolException);
                throw protocolException;
            }
            long j13 = this.f33328s - j12;
            this.f33328s = j13;
            if (j13 == 0) {
                b(true, null);
            }
            return j12;
        }
    }

    /* JADX INFO: compiled from: Http1Codec.java */
    private class g extends b {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f33330s;

        g() {
            super();
        }

        @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f33314p) {
                return;
            }
            if (!this.f33330s) {
                b(false, null);
            }
            this.f33314p = true;
        }

        @Override // oa.a.b, okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f33314p) {
                throw new IllegalStateException("closed");
            }
            if (this.f33330s) {
                return -1L;
            }
            long j11 = super.read(cVar, j10);
            if (j11 != -1) {
                return j11;
            }
            this.f33330s = true;
            b(true, null);
            return -1L;
        }
    }

    public a(x xVar, ma.g gVar, okio.e eVar, okio.d dVar) {
        this.f33307a = xVar;
        this.f33308b = gVar;
        this.f33309c = eVar;
        this.f33310d = dVar;
    }

    private String m() throws IOException {
        String strP1 = this.f33309c.p1(this.f33312f);
        this.f33312f -= (long) strP1.length();
        return strP1;
    }

    @Override // na.c
    public void a() throws IOException {
        this.f33310d.flush();
    }

    @Override // na.c
    public d0 b(c0 c0Var) throws IOException {
        ma.g gVar = this.f33308b;
        gVar.f32268f.q(gVar.f32267e);
        String strF = c0Var.f("Content-Type");
        if (!na.e.c(c0Var)) {
            return new h(strF, 0L, n.c(k(0L)));
        }
        if ("chunked".equalsIgnoreCase(c0Var.f("Transfer-Encoding"))) {
            return new h(strF, -1L, n.c(i(c0Var.n().h())));
        }
        long jB = na.e.b(c0Var);
        return jB != -1 ? new h(strF, jB, n.c(k(jB))) : new h(strF, -1L, n.c(l()));
    }

    @Override // na.c
    public void c(a0 a0Var) throws IOException {
        o(a0Var.d(), i.a(a0Var, this.f33308b.d().q().b().type()));
    }

    @Override // na.c
    public void cancel() {
        ma.c cVarD = this.f33308b.d();
        if (cVarD != null) {
            cVarD.d();
        }
    }

    @Override // na.c
    public c0.a d(boolean z10) throws IOException {
        int i10 = this.f33311e;
        if (i10 != 1 && i10 != 3) {
            throw new IllegalStateException("state: " + this.f33311e);
        }
        try {
            k kVarA = k.a(m());
            c0.a aVarJ = new c0.a().n(kVarA.f32541a).g(kVarA.f32542b).k(kVarA.f32543c).j(n());
            if (z10 && kVarA.f32542b == 100) {
                return null;
            }
            if (kVarA.f32542b == 100) {
                this.f33311e = 3;
                return aVarJ;
            }
            this.f33311e = 4;
            return aVarJ;
        } catch (EOFException e10) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f33308b);
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override // na.c
    public t e(a0 a0Var, long j10) {
        if ("chunked".equalsIgnoreCase(a0Var.c("Transfer-Encoding"))) {
            return h();
        }
        if (j10 != -1) {
            return j(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // na.c
    public void f() throws IOException {
        this.f33310d.flush();
    }

    void g(j jVar) {
        v vVarI = jVar.i();
        jVar.j(v.f33406d);
        vVarI.a();
        vVarI.b();
    }

    public t h() {
        if (this.f33311e == 1) {
            this.f33311e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f33311e);
    }

    public u i(ja.t tVar) throws IOException {
        if (this.f33311e == 4) {
            this.f33311e = 5;
            return new d(tVar);
        }
        throw new IllegalStateException("state: " + this.f33311e);
    }

    public t j(long j10) {
        if (this.f33311e == 1) {
            this.f33311e = 2;
            return new e(j10);
        }
        throw new IllegalStateException("state: " + this.f33311e);
    }

    public u k(long j10) throws IOException {
        if (this.f33311e == 4) {
            this.f33311e = 5;
            return new f(j10);
        }
        throw new IllegalStateException("state: " + this.f33311e);
    }

    public u l() throws IOException {
        if (this.f33311e != 4) {
            throw new IllegalStateException("state: " + this.f33311e);
        }
        ma.g gVar = this.f33308b;
        if (gVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f33311e = 5;
        gVar.j();
        return new g();
    }

    public s n() throws IOException {
        s.a aVar = new s.a();
        while (true) {
            String strM = m();
            if (strM.length() == 0) {
                return aVar.d();
            }
            ka.a.f31636a.a(aVar, strM);
        }
    }

    public void o(s sVar, String str) throws IOException {
        if (this.f33311e != 0) {
            throw new IllegalStateException("state: " + this.f33311e);
        }
        this.f33310d.H1(str).H1("\r\n");
        int iH = sVar.h();
        for (int i10 = 0; i10 < iH; i10++) {
            this.f33310d.H1(sVar.e(i10)).H1(": ").H1(sVar.i(i10)).H1("\r\n");
        }
        this.f33310d.H1("\r\n");
        this.f33311e = 1;
    }
}
