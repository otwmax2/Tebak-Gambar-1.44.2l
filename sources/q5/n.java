package q5;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: CrashlyticsBackgroundWorker.java */
/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f33932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Task<Void> f33933b = Tasks.e(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f33934c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadLocal<Boolean> f33935d = new ThreadLocal<>();

    /* JADX INFO: compiled from: CrashlyticsBackgroundWorker.java */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.f33935d.set(Boolean.TRUE);
        }
    }

    /* JADX INFO: compiled from: CrashlyticsBackgroundWorker.java */
    class b implements Callable<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Runnable f33937a;

        b(Runnable runnable) {
            this.f33937a = runnable;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            this.f33937a.run();
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: CrashlyticsBackgroundWorker.java */
    class c<T> implements Continuation<Void, T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Callable f33939a;

        c(Callable callable) {
            this.f33939a = callable;
        }

        @Override // com.google.android.gms.tasks.Continuation
        public T a(Task<Void> task) throws Exception {
            return (T) this.f33939a.call();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: CrashlyticsBackgroundWorker.java */
    class d<T> implements Continuation<T, Void> {
        d() {
        }

        @Override // com.google.android.gms.tasks.Continuation
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(Task<T> task) throws Exception {
            return null;
        }
    }

    public n(Executor executor) {
        this.f33932a = executor;
        executor.execute(new a());
    }

    private <T> Task<Void> d(Task<T> task) {
        return task.l(this.f33932a, new d());
    }

    private boolean e() {
        return Boolean.TRUE.equals(this.f33935d.get());
    }

    private <T> Continuation<Void, T> f(Callable<T> callable) {
        return new c(callable);
    }

    public void b() {
        if (!e()) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }

    public Executor c() {
        return this.f33932a;
    }

    Task<Void> g(Runnable runnable) {
        return h(new b(runnable));
    }

    public <T> Task<T> h(Callable<T> callable) {
        Task<T> taskL;
        synchronized (this.f33934c) {
            taskL = this.f33933b.l(this.f33932a, f(callable));
            this.f33933b = d(taskL);
        }
        return taskL;
    }

    public <T> Task<T> i(Callable<Task<T>> callable) {
        Task<T> taskN;
        synchronized (this.f33934c) {
            taskN = this.f33933b.n(this.f33932a, f(callable));
            this.f33933b = d(taskN);
        }
        return taskN;
    }
}
