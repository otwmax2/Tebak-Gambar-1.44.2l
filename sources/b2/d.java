package b2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import b2.i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: EngineJob.java */
/* JADX INFO: loaded from: classes.dex */
class d implements i.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final b f4589q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Handler f4590r = new Handler(Looper.getMainLooper(), new c());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<t2.g> f4591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f4592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f4593c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z1.c f4594d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ExecutorService f4595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ExecutorService f4596f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4597g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4598h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private l<?> f4599i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f4600j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Exception f4601k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f4602l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Set<t2.g> f4603m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private i f4604n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private h<?> f4605o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile Future<?> f4606p;

    /* JADX INFO: compiled from: EngineJob.java */
    static class b {
        b() {
        }

        public <R> h<R> a(l<R> lVar, boolean z10) {
            return new h<>(lVar, z10);
        }
    }

    /* JADX INFO: compiled from: EngineJob.java */
    private static class c implements Handler.Callback {
        private c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (1 != i10 && 2 != i10) {
                return false;
            }
            d dVar = (d) message.obj;
            if (1 == i10) {
                dVar.j();
            } else {
                dVar.i();
            }
            return true;
        }
    }

    public d(z1.c cVar, ExecutorService executorService, ExecutorService executorService2, boolean z10, e eVar) {
        this(cVar, executorService, executorService2, z10, eVar, f4589q);
    }

    private void g(t2.g gVar) {
        if (this.f4603m == null) {
            this.f4603m = new HashSet();
        }
        this.f4603m.add(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f4598h) {
            return;
        }
        if (this.f4591a.isEmpty()) {
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        }
        this.f4602l = true;
        this.f4593c.d(this.f4594d, null);
        for (t2.g gVar : this.f4591a) {
            if (!k(gVar)) {
                gVar.a(this.f4601k);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f4598h) {
            this.f4599i.b();
            return;
        }
        if (this.f4591a.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        }
        h<?> hVarA = this.f4592b.a(this.f4599i, this.f4597g);
        this.f4605o = hVarA;
        this.f4600j = true;
        hVarA.a();
        this.f4593c.d(this.f4594d, this.f4605o);
        for (t2.g gVar : this.f4591a) {
            if (!k(gVar)) {
                this.f4605o.a();
                gVar.d(this.f4605o);
            }
        }
        this.f4605o.e();
    }

    private boolean k(t2.g gVar) {
        Set<t2.g> set = this.f4603m;
        return set != null && set.contains(gVar);
    }

    @Override // t2.g
    public void a(Exception exc) {
        this.f4601k = exc;
        f4590r.obtainMessage(2, this).sendToTarget();
    }

    @Override // b2.i.a
    public void c(i iVar) {
        this.f4606p = this.f4596f.submit(iVar);
    }

    @Override // t2.g
    public void d(l<?> lVar) {
        this.f4599i = lVar;
        f4590r.obtainMessage(1, this).sendToTarget();
    }

    public void f(t2.g gVar) {
        x2.h.b();
        if (this.f4600j) {
            gVar.d(this.f4605o);
        } else if (this.f4602l) {
            gVar.a(this.f4601k);
        } else {
            this.f4591a.add(gVar);
        }
    }

    void h() {
        if (this.f4602l || this.f4600j || this.f4598h) {
            return;
        }
        this.f4604n.b();
        Future<?> future = this.f4606p;
        if (future != null) {
            future.cancel(true);
        }
        this.f4598h = true;
        this.f4593c.b(this, this.f4594d);
    }

    public void l(t2.g gVar) {
        x2.h.b();
        if (this.f4600j || this.f4602l) {
            g(gVar);
            return;
        }
        this.f4591a.remove(gVar);
        if (this.f4591a.isEmpty()) {
            h();
        }
    }

    public void m(i iVar) {
        this.f4604n = iVar;
        this.f4606p = this.f4595e.submit(iVar);
    }

    public d(z1.c cVar, ExecutorService executorService, ExecutorService executorService2, boolean z10, e eVar, b bVar) {
        this.f4591a = new ArrayList();
        this.f4594d = cVar;
        this.f4595e = executorService;
        this.f4596f = executorService2;
        this.f4597g = z10;
        this.f4593c = eVar;
        this.f4592b = bVar;
    }
}
