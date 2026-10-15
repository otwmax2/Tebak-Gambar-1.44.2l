package la;

import com.facebook.appevents.AppEventsConstants;
import ja.a0;
import ja.c0;
import ja.s;
import ja.u;
import ja.y;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import la.c;
import na.f;
import na.h;
import okio.e;
import okio.n;
import okio.t;
import okio.v;

/* JADX INFO: compiled from: CacheInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final d f32062a;

    /* JADX INFO: renamed from: la.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CacheInterceptor.java */
    class C0201a implements okio.u {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f32063o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ e f32064p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ b f32065q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ okio.d f32066r;

        C0201a(e eVar, b bVar, okio.d dVar) {
            this.f32064p = eVar;
            this.f32065q = bVar;
            this.f32066r = dVar;
        }

        @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f32063o && !ka.c.p(this, 100, TimeUnit.MILLISECONDS)) {
                this.f32063o = true;
                this.f32065q.abort();
            }
            this.f32064p.close();
        }

        @Override // okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            try {
                long j11 = this.f32064p.read(cVar, j10);
                if (j11 != -1) {
                    cVar.g(this.f32066r.B(), cVar.s() - j11, j11);
                    this.f32066r.h1();
                    return j11;
                }
                if (!this.f32063o) {
                    this.f32063o = true;
                    this.f32066r.close();
                }
                return -1L;
            } catch (IOException e10) {
                if (!this.f32063o) {
                    this.f32063o = true;
                    this.f32065q.abort();
                }
                throw e10;
            }
        }

        @Override // okio.u
        public v timeout() {
            return this.f32064p.timeout();
        }
    }

    public a(d dVar) {
        this.f32062a = dVar;
    }

    private c0 a(b bVar, c0 c0Var) throws IOException {
        t tVarA;
        if (bVar == null || (tVarA = bVar.a()) == null) {
            return c0Var;
        }
        return c0Var.k().b(new h(c0Var.f("Content-Type"), c0Var.b().contentLength(), n.c(new C0201a(c0Var.b().source(), bVar, n.b(tVarA))))).c();
    }

    private static s b(s sVar, s sVar2) {
        s.a aVar = new s.a();
        int iH = sVar.h();
        for (int i10 = 0; i10 < iH; i10++) {
            String strE = sVar.e(i10);
            String strI = sVar.i(i10);
            if ((!"Warning".equalsIgnoreCase(strE) || !strI.startsWith(AppEventsConstants.EVENT_PARAM_VALUE_YES)) && (c(strE) || !d(strE) || sVar2.c(strE) == null)) {
                ka.a.f31636a.b(aVar, strE, strI);
            }
        }
        int iH2 = sVar2.h();
        for (int i11 = 0; i11 < iH2; i11++) {
            String strE2 = sVar2.e(i11);
            if (!c(strE2) && d(strE2)) {
                ka.a.f31636a.b(aVar, strE2, sVar2.i(i11));
            }
        }
        return aVar.d();
    }

    static boolean c(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    static boolean d(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    private static c0 e(c0 c0Var) {
        return (c0Var == null || c0Var.b() == null) ? c0Var : c0Var.k().b(null).c();
    }

    @Override // ja.u
    public c0 intercept(u.a aVar) throws IOException {
        d dVar = this.f32062a;
        c0 c0VarF = dVar != null ? dVar.f(aVar.f()) : null;
        c cVarC = new c.a(System.currentTimeMillis(), aVar.f(), c0VarF).c();
        a0 a0Var = cVarC.f32068a;
        c0 c0Var = cVarC.f32069b;
        d dVar2 = this.f32062a;
        if (dVar2 != null) {
            dVar2.e(cVarC);
        }
        if (c0VarF != null && c0Var == null) {
            ka.c.g(c0VarF.b());
        }
        if (a0Var == null && c0Var == null) {
            return new c0.a().p(aVar.f()).n(y.HTTP_1_1).g(504).k("Unsatisfiable Request (only-if-cached)").b(ka.c.f31640c).q(-1L).o(System.currentTimeMillis()).c();
        }
        if (a0Var == null) {
            return c0Var.k().d(e(c0Var)).c();
        }
        try {
            c0 c0VarE = aVar.e(a0Var);
            if (c0VarE == null && c0VarF != null) {
            }
            if (c0Var != null) {
                if (c0VarE.d() == 304) {
                    c0 c0VarC = c0Var.k().j(b(c0Var.h(), c0VarE.h())).q(c0VarE.o()).o(c0VarE.m()).d(e(c0Var)).l(e(c0VarE)).c();
                    c0VarE.b().close();
                    this.f32062a.c();
                    this.f32062a.d(c0Var, c0VarC);
                    return c0VarC;
                }
                ka.c.g(c0Var.b());
            }
            c0 c0VarC2 = c0VarE.k().d(e(c0Var)).l(e(c0VarE)).c();
            if (this.f32062a != null) {
                if (na.e.c(c0VarC2) && c.a(c0VarC2, a0Var)) {
                    return a(this.f32062a.a(c0VarC2), c0VarC2);
                }
                if (f.a(a0Var.f())) {
                    try {
                        this.f32062a.b(a0Var);
                    } catch (IOException unused) {
                    }
                }
            }
            return c0VarC2;
        } finally {
            if (c0VarF != null) {
                ka.c.g(c0VarF.b());
            }
        }
    }
}
