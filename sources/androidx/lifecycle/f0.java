package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.j;

/* JADX INFO: compiled from: ServiceLifecycleDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f3515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f3516b = new Handler();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f3517c;

    /* JADX INFO: compiled from: ServiceLifecycleDispatcher.java */
    static class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final o f3518o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final j.b f3519p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f3520q = false;

        a(o oVar, j.b bVar) {
            this.f3518o = oVar;
            this.f3519p = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f3520q) {
                return;
            }
            this.f3518o.h(this.f3519p);
            this.f3520q = true;
        }
    }

    public f0(n nVar) {
        this.f3515a = new o(nVar);
    }

    private void f(j.b bVar) {
        a aVar = this.f3517c;
        if (aVar != null) {
            aVar.run();
        }
        a aVar2 = new a(this.f3515a, bVar);
        this.f3517c = aVar2;
        this.f3516b.postAtFrontOfQueue(aVar2);
    }

    public j a() {
        return this.f3515a;
    }

    public void b() {
        f(j.b.ON_START);
    }

    public void c() {
        f(j.b.ON_CREATE);
    }

    public void d() {
        f(j.b.ON_STOP);
        f(j.b.ON_DESTROY);
    }

    public void e() {
        f(j.b.ON_START);
    }
}
