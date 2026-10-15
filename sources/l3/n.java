package l3;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: SafeLoggingExecutor.java */
/* JADX INFO: loaded from: classes.dex */
class n implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Executor f31946o;

    /* JADX INFO: compiled from: SafeLoggingExecutor.java */
    static class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Runnable f31947o;

        a(Runnable runnable) {
            this.f31947o = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f31947o.run();
            } catch (Exception e10) {
                p3.a.d("Executor", "Background execution failure.", e10);
            }
        }
    }

    n(Executor executor) {
        this.f31946o = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f31946o.execute(new a(runnable));
    }
}
