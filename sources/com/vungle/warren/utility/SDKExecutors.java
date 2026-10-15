package com.vungle.warren.utility;

import android.os.Handler;
import android.os.Looper;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class SDKExecutors implements Executors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f28579a = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ExecutorService f28580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ExecutorService f28581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ExecutorService f28582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ExecutorService f28583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ThreadPoolExecutor f28584f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ExecutorService f28585g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ExecutorService f28586h;

    private static class NamedThreadFactory implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f28588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ThreadFactory f28589b = java.util.concurrent.Executors.defaultThreadFactory();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private AtomicInteger f28590c = new AtomicInteger(0);

        public NamedThreadFactory(String str) {
            this.f28588a = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = this.f28589b.newThread(runnable);
            threadNewThread.setName(this.f28588a + "-th-" + this.f28590c.incrementAndGet());
            return threadNewThread;
        }
    }

    static {
        AbstractExecutorService abstractExecutorService = new AbstractExecutorService() { // from class: com.vungle.warren.utility.SDKExecutors.1

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final Handler f28587o = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.ExecutorService
            public boolean awaitTermination(long j10, TimeUnit timeUnit) {
                return false;
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f28587o.post(runnable);
            }

            @Override // java.util.concurrent.ExecutorService
            public boolean isShutdown() {
                return false;
            }

            @Override // java.util.concurrent.ExecutorService
            public boolean isTerminated() {
                return false;
            }

            @Override // java.util.concurrent.ExecutorService
            public void shutdown() {
            }

            @Override // java.util.concurrent.ExecutorService
            public List<Runnable> shutdownNow() {
                return null;
            }
        };
        int i10 = f28579a;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 1L, timeUnit, new PriorityBlockingQueue(), new NamedThreadFactory("vng_jr"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 5L, timeUnit, new LinkedBlockingQueue(), new NamedThreadFactory("vng_io"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(1, 1, 5L, timeUnit, new LinkedBlockingQueue(), new NamedThreadFactory("vng_logger"));
        threadPoolExecutor3.allowCoreThreadTimeOut(true);
        ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new NamedThreadFactory("vng_background"));
        threadPoolExecutor4.allowCoreThreadTimeOut(true);
        ThreadPoolExecutor threadPoolExecutor5 = new ThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new NamedThreadFactory("vng_api"));
        threadPoolExecutor5.allowCoreThreadTimeOut(true);
        ThreadPoolExecutor threadPoolExecutor6 = new ThreadPoolExecutor(1, 20, 10L, timeUnit, new SynchronousQueue(), new NamedThreadFactory("vng_task"));
        f28583e = abstractExecutorService;
        f28582d = threadPoolExecutor;
        f28580b = threadPoolExecutor2;
        f28581c = threadPoolExecutor4;
        f28584f = threadPoolExecutor5;
        f28585g = threadPoolExecutor3;
        f28586h = threadPoolExecutor6;
    }

    @Override // com.vungle.warren.utility.Executors
    public ExecutorService getApiExecutor() {
        return f28584f;
    }

    @Override // com.vungle.warren.utility.Executors
    public ExecutorService getBackgroundExecutor() {
        return f28581c;
    }

    @Override // com.vungle.warren.utility.Executors
    public ExecutorService getIOExecutor() {
        return f28580b;
    }

    @Override // com.vungle.warren.utility.Executors
    public ExecutorService getJobExecutor() {
        return f28582d;
    }

    @Override // com.vungle.warren.utility.Executors
    public ExecutorService getLoggerExecutor() {
        return f28585g;
    }

    @Override // com.vungle.warren.utility.Executors
    public ExecutorService getTaskExecutor() {
        return f28586h;
    }

    @Override // com.vungle.warren.utility.Executors
    public ExecutorService getUIExecutor() {
        return f28583e;
    }
}
