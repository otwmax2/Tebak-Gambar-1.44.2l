package pa;

import ja.a0;
import ja.c0;
import ja.d0;
import ja.s;
import ja.u;
import ja.x;
import ja.y;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okio.t;
import okio.v;

/* JADX INFO: compiled from: Http2Codec.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f implements na.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final List<String> f33599f = ka.c.u("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final List<String> f33600g = ka.c.u("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u.a f33601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ma.g f33602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f33603c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f33604d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y f33605e;

    /* JADX INFO: compiled from: Http2Codec.java */
    class a extends okio.i {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        boolean f33606p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        long f33607q;

        a(okio.u uVar) {
            super(uVar);
            this.f33606p = false;
            this.f33607q = 0L;
        }

        private void b(IOException iOException) {
            if (this.f33606p) {
                return;
            }
            this.f33606p = true;
            f fVar = f.this;
            fVar.f33602b.r(false, fVar, this.f33607q, iOException);
        }

        @Override // okio.i, okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            b(null);
        }

        @Override // okio.i, okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            try {
                long j11 = delegate().read(cVar, j10);
                if (j11 > 0) {
                    this.f33607q += j11;
                }
                return j11;
            } catch (IOException e10) {
                b(e10);
                throw e10;
            }
        }
    }

    public f(x xVar, u.a aVar, ma.g gVar, g gVar2) {
        this.f33601a = aVar;
        this.f33602b = gVar;
        this.f33603c = gVar2;
        List<y> listW = xVar.w();
        y yVar = y.H2_PRIOR_KNOWLEDGE;
        this.f33605e = listW.contains(yVar) ? yVar : y.HTTP_2;
    }

    public static List<c> g(a0 a0Var) {
        s sVarD = a0Var.d();
        ArrayList arrayList = new ArrayList(sVarD.h() + 4);
        arrayList.add(new c(c.f33568f, a0Var.f()));
        arrayList.add(new c(c.f33569g, na.i.c(a0Var.h())));
        String strC = a0Var.c("Host");
        if (strC != null) {
            arrayList.add(new c(c.f33571i, strC));
        }
        arrayList.add(new c(c.f33570h, a0Var.h().H()));
        int iH = sVarD.h();
        for (int i10 = 0; i10 < iH; i10++) {
            okio.f fVarL = okio.f.l(sVarD.e(i10).toLowerCase(Locale.US));
            if (!f33599f.contains(fVarL.O())) {
                arrayList.add(new c(fVarL, sVarD.i(i10)));
            }
        }
        return arrayList;
    }

    public static c0.a h(s sVar, y yVar) throws IOException {
        s.a aVar = new s.a();
        int iH = sVar.h();
        na.k kVarA = null;
        for (int i10 = 0; i10 < iH; i10++) {
            String strE = sVar.e(i10);
            String strI = sVar.i(i10);
            if (strE.equals(":status")) {
                kVarA = na.k.a("HTTP/1.1 " + strI);
            } else if (!f33600g.contains(strE)) {
                ka.a.f31636a.b(aVar, strE, strI);
            }
        }
        if (kVarA != null) {
            return new c0.a().n(yVar).g(kVarA.f32542b).k(kVarA.f32543c).j(aVar.d());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // na.c
    public void a() throws IOException {
        this.f33604d.j().close();
    }

    @Override // na.c
    public d0 b(c0 c0Var) throws IOException {
        ma.g gVar = this.f33602b;
        gVar.f32268f.q(gVar.f32267e);
        return new na.h(c0Var.f("Content-Type"), na.e.b(c0Var), okio.n.c(new a(this.f33604d.k())));
    }

    @Override // na.c
    public void c(a0 a0Var) throws IOException {
        if (this.f33604d != null) {
            return;
        }
        i iVarS = this.f33603c.s(g(a0Var), a0Var.a() != null);
        this.f33604d = iVarS;
        v vVarN = iVarS.n();
        long jA = this.f33601a.a();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        vVarN.g(jA, timeUnit);
        this.f33604d.u().g(this.f33601a.b(), timeUnit);
    }

    @Override // na.c
    public void cancel() {
        i iVar = this.f33604d;
        if (iVar != null) {
            iVar.h(b.CANCEL);
        }
    }

    @Override // na.c
    public c0.a d(boolean z10) throws IOException {
        c0.a aVarH = h(this.f33604d.s(), this.f33605e);
        if (z10 && ka.a.f31636a.d(aVarH) == 100) {
            return null;
        }
        return aVarH;
    }

    @Override // na.c
    public t e(a0 a0Var, long j10) {
        return this.f33604d.j();
    }

    @Override // na.c
    public void f() throws IOException {
        this.f33603c.flush();
    }
}
