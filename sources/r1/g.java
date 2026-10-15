package r1;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: SerialExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public class g implements Executor {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Executor f34170p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private volatile Runnable f34172r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ArrayDeque<a> f34169o = new ArrayDeque<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f34171q = new Object();

    /* JADX INFO: compiled from: SerialExecutor.java */
    static class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final g f34173o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final Runnable f34174p;

        a(g gVar, Runnable runnable) {
            this.f34173o = gVar;
            this.f34174p = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f34174p.run();
            } finally {
                this.f34173o.b();
            }
        }
    }

    public g(Executor executor) {
        this.f34170p = executor;
    }

    public boolean a() {
        boolean z10;
        synchronized (this.f34171q) {
            z10 = !this.f34169o.isEmpty();
        }
        return z10;
    }

    void b() {
        synchronized (this.f34171q) {
            a aVarPoll = this.f34169o.poll();
            this.f34172r = aVarPoll;
            if (aVarPoll != null) {
                this.f34170p.execute(this.f34172r);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f34171q) {
            this.f34169o.add(new a(this, runnable));
            if (this.f34172r == null) {
                b();
            }
        }
    }
}
