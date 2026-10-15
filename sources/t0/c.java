package t0;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: ModernAsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
abstract class c<Params, Progress, Result> {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final ThreadFactory f35155t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f35156u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Executor f35157v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static f f35158w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static volatile Executor f35159x;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final h<Params, Result> f35160o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final FutureTask<Result> f35161p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile g f35162q = g.PENDING;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final AtomicBoolean f35163r = new AtomicBoolean();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final AtomicBoolean f35164s = new AtomicBoolean();

    /* JADX INFO: compiled from: ModernAsyncTask.java */
    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f35165a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f35165a.getAndIncrement());
        }
    }

    /* JADX INFO: compiled from: ModernAsyncTask.java */
    class b extends h<Params, Result> {
        b() {
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            c.this.f35164s.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) c.this.b(this.f35175a);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }

    /* JADX INFO: renamed from: t0.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ModernAsyncTask.java */
    class C0252c extends FutureTask<Result> {
        C0252c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                c.this.m(get());
            } catch (InterruptedException e10) {
                Log.w("AsyncTask", e10);
            } catch (CancellationException unused) {
                c.this.m(null);
            } catch (ExecutionException e11) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e11.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* JADX INFO: compiled from: ModernAsyncTask.java */
    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35168a;

        static {
            int[] iArr = new int[g.values().length];
            f35168a = iArr;
            try {
                iArr[g.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35168a[g.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: compiled from: ModernAsyncTask.java */
    private static class e<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c f35169a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Data[] f35170b;

        e(c cVar, Data... dataArr) {
            this.f35169a = cVar;
            this.f35170b = dataArr;
        }
    }

    /* JADX INFO: compiled from: ModernAsyncTask.java */
    private static class f extends Handler {
        f() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e eVar = (e) message.obj;
            int i10 = message.what;
            if (i10 == 1) {
                eVar.f35169a.d(eVar.f35170b[0]);
            } else {
                if (i10 != 2) {
                    return;
                }
                eVar.f35169a.k(eVar.f35170b);
            }
        }
    }

    /* JADX INFO: compiled from: ModernAsyncTask.java */
    public enum g {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* JADX INFO: compiled from: ModernAsyncTask.java */
    private static abstract class h<Params, Result> implements Callable<Result> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Params[] f35175a;

        h() {
        }
    }

    static {
        a aVar = new a();
        f35155t = aVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f35156u = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, aVar);
        f35157v = threadPoolExecutor;
        f35159x = threadPoolExecutor;
    }

    c() {
        b bVar = new b();
        this.f35160o = bVar;
        this.f35161p = new C0252c(bVar);
    }

    private static Handler e() {
        f fVar;
        synchronized (c.class) {
            if (f35158w == null) {
                f35158w = new f();
            }
            fVar = f35158w;
        }
        return fVar;
    }

    public final boolean a(boolean z10) {
        this.f35163r.set(true);
        return this.f35161p.cancel(z10);
    }

    protected abstract Result b(Params... paramsArr);

    public final c<Params, Progress, Result> c(Executor executor, Params... paramsArr) {
        if (this.f35162q == g.PENDING) {
            this.f35162q = g.RUNNING;
            j();
            this.f35160o.f35175a = paramsArr;
            executor.execute(this.f35161p);
            return this;
        }
        int i10 = d.f35168a[this.f35162q.ordinal()];
        if (i10 == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (i10 != 2) {
            throw new IllegalStateException("We should never reach this state");
        }
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    }

    void d(Result result) {
        if (f()) {
            h(result);
        } else {
            i(result);
        }
        this.f35162q = g.FINISHED;
    }

    public final boolean f() {
        return this.f35163r.get();
    }

    protected void g() {
    }

    protected void h(Result result) {
        g();
    }

    protected void i(Result result) {
    }

    protected void j() {
    }

    protected void k(Progress... progressArr) {
    }

    Result l(Result result) {
        e().obtainMessage(1, new e(this, result)).sendToTarget();
        return result;
    }

    void m(Result result) {
        if (this.f35164s.get()) {
            return;
        }
        l(result);
    }
}
