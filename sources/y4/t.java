package y4;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class t<ResultT> extends e<ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f36982a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o<ResultT> f36983b = new o<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f36984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ResultT f36985d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Exception f36986e;

    t() {
    }

    private final void l() {
        v4.s.b(this.f36984c, "Task is not yet complete");
    }

    private final void m() {
        v4.s.b(!this.f36984c, "Task is already complete");
    }

    private final void n() {
        synchronized (this.f36982a) {
            if (this.f36984c) {
                this.f36983b.b(this);
            }
        }
    }

    @Override // y4.e
    public final e<ResultT> a(a<ResultT> aVar) {
        this.f36983b.a(new i(f.f36960a, aVar));
        n();
        return this;
    }

    @Override // y4.e
    public final e<ResultT> b(Executor executor, b bVar) {
        this.f36983b.a(new k(executor, bVar));
        n();
        return this;
    }

    @Override // y4.e
    public final e<ResultT> c(Executor executor, c<? super ResultT> cVar) {
        this.f36983b.a(new m(executor, cVar));
        n();
        return this;
    }

    @Override // y4.e
    public final Exception d() {
        Exception exc;
        synchronized (this.f36982a) {
            exc = this.f36986e;
        }
        return exc;
    }

    @Override // y4.e
    public final ResultT e() {
        ResultT resultt;
        synchronized (this.f36982a) {
            l();
            Exception exc = this.f36986e;
            if (exc != null) {
                throw new d(exc);
            }
            resultt = this.f36985d;
        }
        return resultt;
    }

    @Override // y4.e
    public final boolean f() {
        boolean z10;
        synchronized (this.f36982a) {
            z10 = this.f36984c;
        }
        return z10;
    }

    @Override // y4.e
    public final boolean g() {
        boolean z10;
        synchronized (this.f36982a) {
            z10 = false;
            if (this.f36984c && this.f36986e == null) {
                z10 = true;
            }
        }
        return z10;
    }

    public final void h(Exception exc) {
        synchronized (this.f36982a) {
            m();
            this.f36984c = true;
            this.f36986e = exc;
        }
        this.f36983b.b(this);
    }

    public final void i(ResultT resultt) {
        synchronized (this.f36982a) {
            m();
            this.f36984c = true;
            this.f36985d = resultt;
        }
        this.f36983b.b(this);
    }

    public final boolean j(Exception exc) {
        synchronized (this.f36982a) {
            if (this.f36984c) {
                return false;
            }
            this.f36984c = true;
            this.f36986e = exc;
            this.f36983b.b(this);
            return true;
        }
    }

    public final boolean k(ResultT resultt) {
        synchronized (this.f36982a) {
            if (this.f36984c) {
                return false;
            }
            this.f36984c = true;
            this.f36985d = resultt;
            this.f36983b.b(this);
            return true;
        }
    }
}
