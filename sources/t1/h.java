package t1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Task.java */
/* JADX INFO: loaded from: classes.dex */
public class h<TResult> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile i f35200l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f35206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f35207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TResult f35208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Exception f35209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f35210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private j f35211g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ExecutorService f35197i = t1.b.a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Executor f35198j = t1.b.b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Executor f35199k = t1.a.c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static h<?> f35201m = new h<>((Object) null);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static h<Boolean> f35202n = new h<>(Boolean.TRUE);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static h<Boolean> f35203o = new h<>(Boolean.FALSE);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static h<?> f35204p = new h<>(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f35205a = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<t1.f<TResult, Void>> f35212h = new ArrayList();

    /* JADX INFO: compiled from: Task.java */
    class a implements t1.f<TResult, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t1.i f35213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ t1.f f35214b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Executor f35215c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ t1.c f35216d;

        a(t1.i iVar, t1.f fVar, Executor executor, t1.c cVar) {
            this.f35213a = iVar;
            this.f35214b = fVar;
            this.f35215c = executor;
            this.f35216d = cVar;
        }

        @Override // t1.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(h<TResult> hVar) {
            h.h(this.f35213a, this.f35214b, hVar, this.f35215c, this.f35216d);
            return null;
        }
    }

    /* JADX INFO: compiled from: Task.java */
    class b implements t1.f<TResult, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t1.i f35218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ t1.f f35219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Executor f35220c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ t1.c f35221d;

        b(t1.i iVar, t1.f fVar, Executor executor, t1.c cVar) {
            this.f35218a = iVar;
            this.f35219b = fVar;
            this.f35220c = executor;
            this.f35221d = cVar;
        }

        @Override // t1.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(h<TResult> hVar) {
            h.g(this.f35218a, this.f35219b, hVar, this.f35220c, this.f35221d);
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
    /* JADX INFO: compiled from: Task.java */
    class c<TContinuationResult> implements t1.f<TResult, h<TContinuationResult>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t1.c f35223a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ t1.f f35224b;

        c(t1.c cVar, t1.f fVar) {
            this.f35223a = cVar;
            this.f35224b = fVar;
        }

        @Override // t1.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h<TContinuationResult> a(h<TResult> hVar) {
            t1.c cVar = this.f35223a;
            return (cVar == null || !cVar.a()) ? hVar.w() ? h.p(hVar.r()) : hVar.u() ? h.f() : hVar.i(this.f35224b) : h.f();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
    /* JADX INFO: compiled from: Task.java */
    class d<TContinuationResult> implements t1.f<TResult, h<TContinuationResult>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t1.c f35226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ t1.f f35227b;

        d(t1.c cVar, t1.f fVar) {
            this.f35226a = cVar;
            this.f35227b = fVar;
        }

        @Override // t1.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h<TContinuationResult> a(h<TResult> hVar) {
            t1.c cVar = this.f35226a;
            return (cVar == null || !cVar.a()) ? hVar.w() ? h.p(hVar.r()) : hVar.u() ? h.f() : hVar.l(this.f35227b) : h.f();
        }
    }

    /* JADX INFO: compiled from: Task.java */
    static class e implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ t1.c f35229o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ t1.i f35230p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ t1.f f35231q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ h f35232r;

        e(t1.c cVar, t1.i iVar, t1.f fVar, h hVar) {
            this.f35229o = cVar;
            this.f35230p = iVar;
            this.f35231q = fVar;
            this.f35232r = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            t1.c cVar = this.f35229o;
            if (cVar != null && cVar.a()) {
                this.f35230p.b();
                return;
            }
            try {
                this.f35230p.d(this.f35231q.a(this.f35232r));
            } catch (CancellationException unused) {
                this.f35230p.b();
            } catch (Exception e10) {
                this.f35230p.c(e10);
            }
        }
    }

    /* JADX INFO: compiled from: Task.java */
    static class f implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ t1.c f35233o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ t1.i f35234p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ t1.f f35235q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ h f35236r;

        /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
        /* JADX INFO: compiled from: Task.java */
        class a<TContinuationResult> implements t1.f<TContinuationResult, Void> {
            a() {
            }

            @Override // t1.f
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Void a(h<TContinuationResult> hVar) {
                t1.c cVar = f.this.f35233o;
                if (cVar != null && cVar.a()) {
                    f.this.f35234p.b();
                    return null;
                }
                if (hVar.u()) {
                    f.this.f35234p.b();
                } else if (hVar.w()) {
                    f.this.f35234p.c(hVar.r());
                } else {
                    f.this.f35234p.d(hVar.s());
                }
                return null;
            }
        }

        f(t1.c cVar, t1.i iVar, t1.f fVar, h hVar) {
            this.f35233o = cVar;
            this.f35234p = iVar;
            this.f35235q = fVar;
            this.f35236r = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            t1.c cVar = this.f35233o;
            if (cVar != null && cVar.a()) {
                this.f35234p.b();
                return;
            }
            try {
                h hVar = (h) this.f35235q.a(this.f35236r);
                if (hVar == null) {
                    this.f35234p.d(null);
                } else {
                    hVar.i(new a());
                }
            } catch (CancellationException unused) {
                this.f35234p.b();
            } catch (Exception e10) {
                this.f35234p.c(e10);
            }
        }
    }

    /* JADX INFO: compiled from: Task.java */
    static class g implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ t1.c f35238o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ t1.i f35239p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ Callable f35240q;

        g(t1.c cVar, t1.i iVar, Callable callable) {
            this.f35238o = cVar;
            this.f35239p = iVar;
            this.f35240q = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            t1.c cVar = this.f35238o;
            if (cVar != null && cVar.a()) {
                this.f35239p.b();
                return;
            }
            try {
                this.f35239p.d(this.f35240q.call());
            } catch (CancellationException unused) {
                this.f35239p.b();
            } catch (Exception e10) {
                this.f35239p.c(e10);
            }
        }
    }

    /* JADX INFO: renamed from: t1.h$h, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Task.java */
    public class C0255h extends t1.i<TResult> {
        C0255h() {
        }
    }

    /* JADX INFO: compiled from: Task.java */
    public interface i {
        void a(h<?> hVar, k kVar);
    }

    h() {
    }

    private void C() {
        synchronized (this.f35205a) {
            Iterator<t1.f<TResult, Void>> it = this.f35212h.iterator();
            while (it.hasNext()) {
                try {
                    it.next().a(this);
                } catch (RuntimeException e10) {
                    throw e10;
                } catch (Exception e11) {
                    throw new RuntimeException(e11);
                }
            }
            this.f35212h = null;
        }
    }

    public static <TResult> h<TResult> c(Callable<TResult> callable, Executor executor, t1.c cVar) {
        t1.i iVar = new t1.i();
        try {
            executor.execute(new g(cVar, iVar, callable));
        } catch (Exception e10) {
            iVar.c(new t1.g(e10));
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> d(Callable<TResult> callable) {
        return c(callable, f35197i, null);
    }

    public static <TResult> h<TResult> e(Callable<TResult> callable, t1.c cVar) {
        return c(callable, f35197i, cVar);
    }

    public static <TResult> h<TResult> f() {
        return (h<TResult>) f35204p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void g(t1.i<TContinuationResult> iVar, t1.f<TResult, h<TContinuationResult>> fVar, h<TResult> hVar, Executor executor, t1.c cVar) {
        try {
            executor.execute(new f(cVar, iVar, fVar, hVar));
        } catch (Exception e10) {
            iVar.c(new t1.g(e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void h(t1.i<TContinuationResult> iVar, t1.f<TResult, TContinuationResult> fVar, h<TResult> hVar, Executor executor, t1.c cVar) {
        try {
            executor.execute(new e(cVar, iVar, fVar, hVar));
        } catch (Exception e10) {
            iVar.c(new t1.g(e10));
        }
    }

    public static <TResult> h<TResult>.C0255h o() {
        return new C0255h();
    }

    public static <TResult> h<TResult> p(Exception exc) {
        t1.i iVar = new t1.i();
        iVar.c(exc);
        return iVar.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <TResult> h<TResult> q(TResult tresult) {
        if (tresult == 0) {
            return (h<TResult>) f35201m;
        }
        if (tresult instanceof Boolean) {
            return ((Boolean) tresult).booleanValue() ? (h<TResult>) f35202n : (h<TResult>) f35203o;
        }
        t1.i iVar = new t1.i();
        iVar.d(tresult);
        return iVar.a();
    }

    public static i t() {
        return f35200l;
    }

    public <TContinuationResult> h<TContinuationResult> A(t1.f<TResult, h<TContinuationResult>> fVar, Executor executor) {
        return B(fVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> B(t1.f<TResult, h<TContinuationResult>> fVar, Executor executor, t1.c cVar) {
        return m(new d(cVar, fVar), executor);
    }

    boolean D() {
        synchronized (this.f35205a) {
            if (this.f35206b) {
                return false;
            }
            this.f35206b = true;
            this.f35207c = true;
            this.f35205a.notifyAll();
            C();
            return true;
        }
    }

    boolean E(Exception exc) {
        synchronized (this.f35205a) {
            if (this.f35206b) {
                return false;
            }
            this.f35206b = true;
            this.f35209e = exc;
            this.f35210f = false;
            this.f35205a.notifyAll();
            C();
            if (!this.f35210f && t() != null) {
                this.f35211g = new j(this);
            }
            return true;
        }
    }

    boolean F(TResult tresult) {
        synchronized (this.f35205a) {
            if (this.f35206b) {
                return false;
            }
            this.f35206b = true;
            this.f35208d = tresult;
            this.f35205a.notifyAll();
            C();
            return true;
        }
    }

    public <TContinuationResult> h<TContinuationResult> i(t1.f<TResult, TContinuationResult> fVar) {
        return j(fVar, f35198j, null);
    }

    public <TContinuationResult> h<TContinuationResult> j(t1.f<TResult, TContinuationResult> fVar, Executor executor, t1.c cVar) {
        boolean zV;
        t1.i iVar = new t1.i();
        synchronized (this.f35205a) {
            zV = v();
            if (!zV) {
                this.f35212h.add(new a(iVar, fVar, executor, cVar));
            }
        }
        if (zV) {
            h(iVar, fVar, this, executor, cVar);
        }
        return iVar.a();
    }

    public <TContinuationResult> h<TContinuationResult> k(t1.f<TResult, TContinuationResult> fVar, t1.c cVar) {
        return j(fVar, f35198j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> l(t1.f<TResult, h<TContinuationResult>> fVar) {
        return n(fVar, f35198j, null);
    }

    public <TContinuationResult> h<TContinuationResult> m(t1.f<TResult, h<TContinuationResult>> fVar, Executor executor) {
        return n(fVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> n(t1.f<TResult, h<TContinuationResult>> fVar, Executor executor, t1.c cVar) {
        boolean zV;
        t1.i iVar = new t1.i();
        synchronized (this.f35205a) {
            zV = v();
            if (!zV) {
                this.f35212h.add(new b(iVar, fVar, executor, cVar));
            }
        }
        if (zV) {
            g(iVar, fVar, this, executor, cVar);
        }
        return iVar.a();
    }

    public Exception r() {
        Exception exc;
        synchronized (this.f35205a) {
            if (this.f35209e != null) {
                this.f35210f = true;
                j jVar = this.f35211g;
                if (jVar != null) {
                    jVar.a();
                    this.f35211g = null;
                }
            }
            exc = this.f35209e;
        }
        return exc;
    }

    public TResult s() {
        TResult tresult;
        synchronized (this.f35205a) {
            tresult = this.f35208d;
        }
        return tresult;
    }

    public boolean u() {
        boolean z10;
        synchronized (this.f35205a) {
            z10 = this.f35207c;
        }
        return z10;
    }

    public boolean v() {
        boolean z10;
        synchronized (this.f35205a) {
            z10 = this.f35206b;
        }
        return z10;
    }

    public boolean w() {
        boolean z10;
        synchronized (this.f35205a) {
            z10 = r() != null;
        }
        return z10;
    }

    public <TContinuationResult> h<TContinuationResult> x(t1.f<TResult, TContinuationResult> fVar) {
        return y(fVar, f35198j, null);
    }

    public <TContinuationResult> h<TContinuationResult> y(t1.f<TResult, TContinuationResult> fVar, Executor executor, t1.c cVar) {
        return m(new c(cVar, fVar), executor);
    }

    public <TContinuationResult> h<TContinuationResult> z(t1.f<TResult, h<TContinuationResult>> fVar) {
        return A(fVar, f35198j);
    }

    private h(TResult tresult) {
        F(tresult);
    }

    private h(boolean z10) {
        if (z10) {
            D();
        } else {
            F(null);
        }
    }
}
