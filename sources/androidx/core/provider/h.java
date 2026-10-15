package androidx.core.provider;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: RequestExecutor.java */
/* JADX INFO: loaded from: classes.dex */
class h {

    /* JADX INFO: compiled from: RequestExecutor.java */
    private static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2327a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2328b;

        /* JADX INFO: renamed from: androidx.core.provider.h$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: RequestExecutor.java */
        private static class C0033a extends Thread {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final int f2329o;

            C0033a(Runnable runnable, String str, int i10) {
                super(runnable, str);
                this.f2329o = i10;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f2329o);
                super.run();
            }
        }

        a(String str, int i10) {
            this.f2327a = str;
            this.f2328b = i10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0033a(runnable, this.f2327a, this.f2328b);
        }
    }

    /* JADX INFO: compiled from: RequestExecutor.java */
    private static class b<T> implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Callable<T> f2330o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private androidx.core.util.a<T> f2331p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private Handler f2332q;

        /* JADX INFO: compiled from: RequestExecutor.java */
        class a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ androidx.core.util.a f2333o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ Object f2334p;

            a(androidx.core.util.a aVar, Object obj) {
                this.f2333o = aVar;
                this.f2334p = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f2333o.accept(this.f2334p);
            }
        }

        b(Handler handler, Callable<T> callable, androidx.core.util.a<T> aVar) {
            this.f2330o = callable;
            this.f2331p = aVar;
            this.f2332q = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            T tCall;
            try {
                tCall = this.f2330o.call();
            } catch (Exception unused) {
                tCall = null;
            }
            this.f2332q.post(new a(this.f2331p, tCall));
        }
    }

    static ThreadPoolExecutor a(String str, int i10, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i11, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new a(str, i10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static <T> void b(Executor executor, Callable<T> callable, androidx.core.util.a<T> aVar) {
        executor.execute(new b(androidx.core.provider.b.a(), callable, aVar));
    }

    static <T> T c(ExecutorService executorService, Callable<T> callable, int i10) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw e10;
        } catch (ExecutionException e11) {
            throw new RuntimeException(e11);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
