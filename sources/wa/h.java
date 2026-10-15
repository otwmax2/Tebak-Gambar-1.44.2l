package wa;

import ja.c0;
import ja.d0;
import ja.v;
import java.io.IOException;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import okio.u;

/* JADX INFO: compiled from: OkHttpCall.java */
/* JADX INFO: loaded from: classes.dex */
final class h<T> implements wa.b<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final n<T, ?> f36058o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private final Object[] f36059p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile boolean f36060q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private ja.e f36061r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private Throwable f36062s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f36063t;

    /* JADX INFO: compiled from: OkHttpCall.java */
    /* JADX INFO: loaded from: classes2.dex */
    class a implements ja.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f36064a;

        a(d dVar) {
            this.f36064a = dVar;
        }

        private void a(Throwable th) {
            try {
                this.f36064a.b(h.this, th);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }

        @Override // ja.f
        public void onFailure(ja.e eVar, IOException iOException) {
            a(iOException);
        }

        @Override // ja.f
        public void onResponse(ja.e eVar, c0 c0Var) {
            try {
                try {
                    this.f36064a.a(h.this, h.this.d(c0Var));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                a(th2);
            }
        }
    }

    /* JADX INFO: compiled from: OkHttpCall.java */
    /* JADX INFO: loaded from: classes2.dex */
    static final class b extends d0 {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final d0 f36066p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        IOException f36067q;

        /* JADX INFO: compiled from: OkHttpCall.java */
        class a extends okio.i {
            a(u uVar) {
                super(uVar);
            }

            @Override // okio.i, okio.u
            public long read(okio.c cVar, long j10) throws IOException {
                try {
                    return super.read(cVar, j10);
                } catch (IOException e10) {
                    b.this.f36067q = e10;
                    throw e10;
                }
            }
        }

        b(d0 d0Var) {
            this.f36066p = d0Var;
        }

        void c() throws IOException {
            IOException iOException = this.f36067q;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // ja.d0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f36066p.close();
        }

        @Override // ja.d0
        public long contentLength() {
            return this.f36066p.contentLength();
        }

        @Override // ja.d0
        public v contentType() {
            return this.f36066p.contentType();
        }

        @Override // ja.d0
        public okio.e source() {
            return okio.n.c(new a(this.f36066p.source()));
        }
    }

    /* JADX INFO: compiled from: OkHttpCall.java */
    /* JADX INFO: loaded from: classes2.dex */
    static final class c extends d0 {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final v f36069p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final long f36070q;

        c(v vVar, long j10) {
            this.f36069p = vVar;
            this.f36070q = j10;
        }

        @Override // ja.d0
        public long contentLength() {
            return this.f36070q;
        }

        @Override // ja.d0
        public v contentType() {
            return this.f36069p;
        }

        @Override // ja.d0
        public okio.e source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    h(n<T, ?> nVar, @Nullable Object[] objArr) {
        this.f36058o = nVar;
        this.f36059p = objArr;
    }

    private ja.e b() throws IOException {
        ja.e eVarD = this.f36058o.d(this.f36059p);
        Objects.requireNonNull(eVarD, "Call.Factory returned null.");
        return eVarD;
    }

    @Override // wa.b
    public boolean L() {
        boolean z10 = true;
        if (this.f36060q) {
            return true;
        }
        synchronized (this) {
            ja.e eVar = this.f36061r;
            if (eVar == null || !eVar.L()) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // wa.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public h<T> clone() {
        return new h<>(this.f36058o, this.f36059p);
    }

    l<T> d(c0 c0Var) throws IOException {
        d0 d0VarB = c0Var.b();
        c0 c0VarC = c0Var.k().b(new c(d0VarB.contentType(), d0VarB.contentLength())).c();
        int iD = c0VarC.d();
        if (iD < 200 || iD >= 300) {
            try {
                return l.c(o.a(d0VarB), c0VarC);
            } finally {
                d0VarB.close();
            }
        }
        if (iD == 204 || iD == 205) {
            d0VarB.close();
            return l.h(null, c0VarC);
        }
        b bVar = new b(d0VarB);
        try {
            return l.h(this.f36058o.e(bVar), c0VarC);
        } catch (RuntimeException e10) {
            bVar.c();
            throw e10;
        }
    }

    @Override // wa.b
    public l<T> execute() throws IOException {
        ja.e eVarB;
        synchronized (this) {
            if (this.f36063t) {
                throw new IllegalStateException("Already executed.");
            }
            this.f36063t = true;
            Throwable th = this.f36062s;
            if (th != null) {
                if (th instanceof IOException) {
                    throw ((IOException) th);
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw ((Error) th);
            }
            eVarB = this.f36061r;
            if (eVarB == null) {
                try {
                    eVarB = b();
                    this.f36061r = eVarB;
                } catch (IOException | Error | RuntimeException e10) {
                    o.p(e10);
                    this.f36062s = e10;
                    throw e10;
                }
            }
        }
        if (this.f36060q) {
            eVarB.cancel();
        }
        return d(eVarB.execute());
    }

    @Override // wa.b
    public void v3(d<T> dVar) {
        ja.e eVar;
        Throwable th;
        o.b(dVar, "callback == null");
        synchronized (this) {
            if (this.f36063t) {
                throw new IllegalStateException("Already executed.");
            }
            this.f36063t = true;
            eVar = this.f36061r;
            th = this.f36062s;
            if (eVar == null && th == null) {
                try {
                    ja.e eVarB = b();
                    this.f36061r = eVarB;
                    eVar = eVarB;
                } catch (Throwable th2) {
                    th = th2;
                    o.p(th);
                    this.f36062s = th;
                }
            }
        }
        if (th != null) {
            dVar.b(this, th);
            return;
        }
        if (this.f36060q) {
            eVar.cancel();
        }
        eVar.M1(new a(dVar));
    }
}
