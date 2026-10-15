package c9;

import com.twitter.sdk.android.core.o;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f4979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4981c;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f4979a = iAvailableProcessors;
        f4980b = iAvailableProcessors + 1;
        f4981c = (iAvailableProcessors * 2) + 1;
    }

    static void c(String str, ExecutorService executorService) {
        d(str, executorService, 1L, TimeUnit.SECONDS);
    }

    static void d(final String str, final ExecutorService executorService, final long j10, final TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() { // from class: c9.c
            @Override // java.lang.Runnable
            public final void run() {
                e.g(executorService, j10, timeUnit, str);
            }
        }, "Twitter Shutdown Hook for " + str));
    }

    public static ExecutorService e(String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f4980b, f4981c, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f(str));
        c(str, threadPoolExecutor);
        return threadPoolExecutor;
    }

    static ThreadFactory f(final String str) {
        final AtomicLong atomicLong = new AtomicLong(1L);
        return new ThreadFactory() { // from class: c9.d
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return e.h(str, atomicLong, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(ExecutorService executorService, long j10, TimeUnit timeUnit, String str) {
        try {
            executorService.shutdown();
            if (executorService.awaitTermination(j10, timeUnit)) {
                return;
            }
            o.g().c("Twitter", str + " did not shutdown in the allocated time. Requesting immediate shutdown.");
            executorService.shutdownNow();
        } catch (InterruptedException unused) {
            o.g().c("Twitter", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", str));
            executorService.shutdownNow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread h(String str, AtomicLong atomicLong, Runnable runnable) {
        Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
        threadNewThread.setName(str + atomicLong.getAndIncrement());
        return threadNewThread;
    }
}
