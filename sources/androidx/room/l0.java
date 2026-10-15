package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: TransactionExecutor.java */
/* JADX INFO: loaded from: classes.dex */
class l0 implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Executor f4142o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayDeque<Runnable> f4143p = new ArrayDeque<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Runnable f4144q;

    /* JADX INFO: compiled from: TransactionExecutor.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Runnable f4145o;

        a(Runnable runnable) {
            this.f4145o = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f4145o.run();
            } finally {
                l0.this.a();
            }
        }
    }

    l0(Executor executor) {
        this.f4142o = executor;
    }

    synchronized void a() {
        Runnable runnablePoll = this.f4143p.poll();
        this.f4144q = runnablePoll;
        if (runnablePoll != null) {
            this.f4142o.execute(runnablePoll);
        }
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        this.f4143p.offer(new a(runnable));
        if (this.f4144q == null) {
            a();
        }
    }
}
