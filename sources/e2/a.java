package e2;

import android.os.Process;
import android.util.Log;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AtomicInteger f28923o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final d f28924p;

    /* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
    public static class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f28925a = 0;

        /* JADX INFO: renamed from: e2.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
        class C0152a extends Thread {
            C0152a(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                super.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            C0152a c0152a = new C0152a(runnable, "fifo-pool-thread-" + this.f28925a);
            this.f28925a = this.f28925a + 1;
            return c0152a;
        }
    }

    /* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
    static class c<T> extends FutureTask<T> implements Comparable<c<?>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f28927o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final int f28928p;

        public c(Runnable runnable, T t10, int i10) {
            super(runnable, t10);
            if (!(runnable instanceof e2.b)) {
                throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
            }
            this.f28927o = ((e2.b) runnable).a();
            this.f28928p = i10;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(c<?> cVar) {
            int i10 = this.f28927o - cVar.f28927o;
            return i10 == 0 ? this.f28928p - cVar.f28928p : i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f28928p == cVar.f28928p && this.f28927o == cVar.f28927o;
        }

        public int hashCode() {
            return (this.f28927o * 31) + this.f28928p;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
    public static class d {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final d f28929o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final d f28930p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final d f28931q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static final /* synthetic */ d[] f28932r;

        /* JADX INFO: renamed from: e2.a$d$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
        enum C0153a extends d {
            C0153a(String str, int i10) {
                super(str, i10);
            }

            @Override // e2.a.d
            protected void c(Throwable th) {
                if (Log.isLoggable("PriorityExecutor", 6)) {
                    Log.e("PriorityExecutor", "Request threw uncaught throwable", th);
                }
            }
        }

        /* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
        enum b extends d {
            b(String str, int i10) {
                super(str, i10);
            }

            @Override // e2.a.d
            protected void c(Throwable th) {
                super.c(th);
                throw new RuntimeException(th);
            }
        }

        static {
            d dVar = new d("IGNORE", 0);
            f28929o = dVar;
            C0153a c0153a = new C0153a("LOG", 1);
            f28930p = c0153a;
            b bVar = new b("THROW", 2);
            f28931q = bVar;
            f28932r = new d[]{dVar, c0153a, bVar};
        }

        private d(String str, int i10) {
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) f28932r.clone();
        }

        protected void c(Throwable th) {
        }
    }

    public a(int i10) {
        this(i10, d.f28930p);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (th == null && (runnable instanceof Future)) {
            Future future = (Future) runnable;
            if (!future.isDone() || future.isCancelled()) {
                return;
            }
            try {
                future.get();
            } catch (InterruptedException e10) {
                this.f28924p.c(e10);
            } catch (ExecutionException e11) {
                this.f28924p.c(e11);
            }
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t10) {
        return new c(runnable, t10, this.f28923o.getAndIncrement());
    }

    public a(int i10, d dVar) {
        this(i10, i10, 0L, TimeUnit.MILLISECONDS, new b(), dVar);
    }

    public a(int i10, int i11, long j10, TimeUnit timeUnit, ThreadFactory threadFactory, d dVar) {
        super(i10, i11, j10, timeUnit, new PriorityBlockingQueue(), threadFactory);
        this.f28923o = new AtomicInteger();
        this.f28924p = dVar;
    }
}
