package ja;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealCall.java */
/* JADX INFO: loaded from: classes.dex */
final class z implements e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final x f31251o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final na.j f31252p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final okio.a f31253q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private p f31254r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final a0 f31255s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final boolean f31256t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f31257u;

    /* JADX INFO: compiled from: RealCall.java */
    /* JADX INFO: loaded from: classes2.dex */
    class a extends okio.a {
        a() {
        }

        @Override // okio.a
        protected void t() {
            z.this.cancel();
        }
    }

    /* JADX INFO: compiled from: RealCall.java */
    /* JADX INFO: loaded from: classes2.dex */
    final class b extends ka.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final f f31259p;

        b(f fVar) {
            super("OkHttp %s", z.this.h());
            this.f31259p = fVar;
        }

        @Override // ka.b
        protected void k() {
            Throwable th;
            boolean z10;
            IOException e10;
            z.this.f31253q.k();
            try {
                try {
                    z10 = true;
                    try {
                        this.f31259p.onResponse(z.this, z.this.f());
                    } catch (IOException e11) {
                        e10 = e11;
                        IOException iOExceptionI = z.this.i(e10);
                        if (z10) {
                            qa.g.l().s(4, "Callback failure for " + z.this.j(), iOExceptionI);
                        } else {
                            z.this.f31254r.b(z.this, iOExceptionI);
                            this.f31259p.onFailure(z.this, iOExceptionI);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z.this.cancel();
                        if (!z10) {
                            this.f31259p.onFailure(z.this, new IOException("canceled due to " + th));
                        }
                        throw th;
                    }
                } finally {
                    z.this.f31251o.k().d(this);
                }
            } catch (IOException e12) {
                e10 = e12;
                z10 = false;
            } catch (Throwable th3) {
                th = th3;
                z10 = false;
            }
        }

        void l(ExecutorService executorService) {
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e10) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e10);
                    z.this.f31254r.b(z.this, interruptedIOException);
                    this.f31259p.onFailure(z.this, interruptedIOException);
                    z.this.f31251o.k().d(this);
                }
            } catch (Throwable th) {
                z.this.f31251o.k().d(this);
                throw th;
            }
        }

        z m() {
            return z.this;
        }

        String n() {
            return z.this.f31255s.h().m();
        }
    }

    private z(x xVar, a0 a0Var, boolean z10) {
        this.f31251o = xVar;
        this.f31255s = a0Var;
        this.f31256t = z10;
        this.f31252p = new na.j(xVar, z10);
        a aVar = new a();
        this.f31253q = aVar;
        aVar.g(xVar.d(), TimeUnit.MILLISECONDS);
    }

    private void b() {
        this.f31252p.j(qa.g.l().o("response.body().close()"));
    }

    static z g(x xVar, a0 a0Var, boolean z10) {
        z zVar = new z(xVar, a0Var, z10);
        zVar.f31254r = xVar.m().a(zVar);
        return zVar;
    }

    @Override // ja.e
    public boolean L() {
        return this.f31252p.d();
    }

    @Override // ja.e
    public void M1(f fVar) {
        synchronized (this) {
            if (this.f31257u) {
                throw new IllegalStateException("Already Executed");
            }
            this.f31257u = true;
        }
        b();
        this.f31254r.c(this);
        this.f31251o.k().a(new b(fVar));
    }

    @Override // ja.e
    public void cancel() {
        this.f31252p.a();
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public z clone() {
        return g(this.f31251o, this.f31255s, this.f31256t);
    }

    @Override // ja.e
    public c0 execute() throws IOException {
        synchronized (this) {
            if (this.f31257u) {
                throw new IllegalStateException("Already Executed");
            }
            this.f31257u = true;
        }
        b();
        this.f31253q.k();
        this.f31254r.c(this);
        try {
            try {
                this.f31251o.k().b(this);
                c0 c0VarF = f();
                if (c0VarF != null) {
                    return c0VarF;
                }
                throw new IOException("Canceled");
            } catch (IOException e10) {
                IOException iOExceptionI = i(e10);
                this.f31254r.b(this, iOExceptionI);
                throw iOExceptionI;
            }
        } finally {
            this.f31251o.k().e(this);
        }
        this.f31251o.k().e(this);
    }

    c0 f() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f31251o.q());
        arrayList.add(this.f31252p);
        arrayList.add(new na.a(this.f31251o.j()));
        arrayList.add(new la.a(this.f31251o.r()));
        arrayList.add(new ma.a(this.f31251o));
        if (!this.f31256t) {
            arrayList.addAll(this.f31251o.s());
        }
        arrayList.add(new na.b(this.f31256t));
        c0 c0VarE = new na.g(arrayList, null, null, null, 0, this.f31255s, this, this.f31254r, this.f31251o.g(), this.f31251o.A(), this.f31251o.E()).e(this.f31255s);
        if (!this.f31252p.d()) {
            return c0VarE;
        }
        ka.c.g(c0VarE);
        throw new IOException("Canceled");
    }

    String h() {
        return this.f31255s.h().F();
    }

    @Nullable
    IOException i(@Nullable IOException iOException) {
        if (!this.f31253q.n()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    String j() {
        StringBuilder sb = new StringBuilder();
        sb.append(L() ? "canceled " : BuildConfig.FLAVOR);
        sb.append(this.f31256t ? "web socket" : "call");
        sb.append(" to ");
        sb.append(h());
        return sb.toString();
    }
}
