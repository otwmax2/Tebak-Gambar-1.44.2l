package q5;

import android.annotation.SuppressLint;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public final class z {

    /* JADX INFO: compiled from: ExecutorUtils.java */
    class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f34051a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AtomicLong f34052b;

        /* JADX INFO: renamed from: q5.z$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ExecutorUtils.java */
        class C0222a extends d {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ Runnable f34053o;

            C0222a(Runnable runnable) {
                this.f34053o = runnable;
            }

            @Override // q5.d
            public void a() {
                this.f34053o.run();
            }
        }

        a(String str, AtomicLong atomicLong) {
            this.f34051a = str;
            this.f34052b = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(new C0222a(runnable));
            threadNewThread.setName(this.f34051a + this.f34052b.getAndIncrement());
            return threadNewThread;
        }
    }

    /* JADX INFO: compiled from: ExecutorUtils.java */
    class b extends d {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ String f34055o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ ExecutorService f34056p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ long f34057q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ TimeUnit f34058r;

        b(String str, ExecutorService executorService, long j10, TimeUnit timeUnit) {
            this.f34055o = str;
            this.f34056p = executorService;
            this.f34057q = j10;
            this.f34058r = timeUnit;
        }

        @Override // q5.d
        public void a() {
            try {
                n5.g.f().b("Executing shutdown hook for " + this.f34055o);
                this.f34056p.shutdown();
                if (this.f34056p.awaitTermination(this.f34057q, this.f34058r)) {
                    return;
                }
                n5.g.f().b(this.f34055o + " did not shut down in the allocated time. Requesting immediate shutdown.");
                this.f34056p.shutdownNow();
            } catch (InterruptedException unused) {
                n5.g.f().b(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f34055o));
                this.f34056p.shutdownNow();
            }
        }
    }

    private static void a(String str, ExecutorService executorService) {
        b(str, executorService, 2L, TimeUnit.SECONDS);
    }

    @SuppressLint({"ThreadPoolCreation"})
    private static void b(String str, ExecutorService executorService, long j10, TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new b(str, executorService, j10, timeUnit), "Crashlytics Shutdown Hook for " + str));
    }

    public static ExecutorService c(String str) {
        ExecutorService executorServiceE = e(d(str), new ThreadPoolExecutor.DiscardPolicy());
        a(str, executorServiceE);
        return executorServiceE;
    }

    public static ThreadFactory d(String str) {
        return new a(str, new AtomicLong(1L));
    }

    @SuppressLint({"ThreadPoolCreation"})
    private static ExecutorService e(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }
}
