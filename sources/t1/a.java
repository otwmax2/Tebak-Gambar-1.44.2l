package t1;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: AndroidExecutors.java */
/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f35176b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f35177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int f35178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f35179e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f35180a = new b();

    /* JADX INFO: compiled from: AndroidExecutors.java */
    private static class b implements Executor {
        private b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f35177c = iAvailableProcessors;
        f35178d = iAvailableProcessors + 1;
        f35179e = (iAvailableProcessors * 2) + 1;
    }

    private a() {
    }

    @SuppressLint({"NewApi"})
    public static void a(ThreadPoolExecutor threadPoolExecutor, boolean z10) {
        if (Build.VERSION.SDK_INT >= 9) {
            threadPoolExecutor.allowCoreThreadTimeOut(z10);
        }
    }

    public static ExecutorService b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f35178d, f35179e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    public static Executor c() {
        return f35176b.f35180a;
    }
}
