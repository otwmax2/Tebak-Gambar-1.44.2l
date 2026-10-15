package l5;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: SequentialExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
final class j implements Executor {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Logger f32001t = Logger.getLogger(j.class.getName());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Executor f32002o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Deque<Runnable> f32003p = new ArrayDeque();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c f32004q = c.IDLE;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f32005r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b f32006s = new b(this, null);

    /* JADX INFO: compiled from: SequentialExecutor.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Runnable f32007o;

        a(Runnable runnable) {
            this.f32007o = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f32007o.run();
        }

        public String toString() {
            return this.f32007o.toString();
        }
    }

    /* JADX INFO: compiled from: SequentialExecutor.java */
    /* JADX INFO: loaded from: classes.dex */
    private final class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @CheckForNull
        Runnable f32009o;

        private b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
            r2 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
        
            r8.f32009o.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
        
            l5.j.f32001t.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.f32009o, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x007c, code lost:
        
            r8.f32009o = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void a() {
            /*
                r8 = this;
                r0 = 0
                r1 = 0
            L2:
                l5.j r2 = l5.j.this     // Catch: java.lang.Throwable -> L82
                java.util.Deque r2 = l5.j.a(r2)     // Catch: java.lang.Throwable -> L82
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L82
                if (r0 != 0) goto L2b
                l5.j r0 = l5.j.this     // Catch: java.lang.Throwable -> L7f
                l5.j$c r0 = l5.j.b(r0)     // Catch: java.lang.Throwable -> L7f
                l5.j$c r3 = l5.j.c.RUNNING     // Catch: java.lang.Throwable -> L7f
                if (r0 != r3) goto L20
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                if (r1 == 0) goto L1f
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L1f:
                return
            L20:
                l5.j r0 = l5.j.this     // Catch: java.lang.Throwable -> L7f
                l5.j.d(r0)     // Catch: java.lang.Throwable -> L7f
                l5.j r0 = l5.j.this     // Catch: java.lang.Throwable -> L7f
                l5.j.c(r0, r3)     // Catch: java.lang.Throwable -> L7f
                r0 = 1
            L2b:
                l5.j r3 = l5.j.this     // Catch: java.lang.Throwable -> L7f
                java.util.Deque r3 = l5.j.a(r3)     // Catch: java.lang.Throwable -> L7f
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L7f
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L7f
                r8.f32009o = r3     // Catch: java.lang.Throwable -> L7f
                if (r3 != 0) goto L4d
                l5.j r0 = l5.j.this     // Catch: java.lang.Throwable -> L7f
                l5.j$c r3 = l5.j.c.IDLE     // Catch: java.lang.Throwable -> L7f
                l5.j.c(r0, r3)     // Catch: java.lang.Throwable -> L7f
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                if (r1 == 0) goto L4c
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L4c:
                return
            L4d:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L82
                r1 = r1 | r2
                r2 = 0
                java.lang.Runnable r3 = r8.f32009o     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
                r3.run()     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
            L59:
                r8.f32009o = r2     // Catch: java.lang.Throwable -> L82
                goto L2
            L5c:
                r0 = move-exception
                goto L7c
            L5e:
                r3 = move-exception
                java.util.logging.Logger r4 = l5.j.f()     // Catch: java.lang.Throwable -> L5c
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5c
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
                r6.<init>()     // Catch: java.lang.Throwable -> L5c
                java.lang.String r7 = "Exception while executing runnable "
                r6.append(r7)     // Catch: java.lang.Throwable -> L5c
                java.lang.Runnable r7 = r8.f32009o     // Catch: java.lang.Throwable -> L5c
                r6.append(r7)     // Catch: java.lang.Throwable -> L5c
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5c
                r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L5c
                goto L59
            L7c:
                r8.f32009o = r2     // Catch: java.lang.Throwable -> L82
                throw r0     // Catch: java.lang.Throwable -> L82
            L7f:
                r0 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                throw r0     // Catch: java.lang.Throwable -> L82
            L82:
                r0 = move-exception
                if (r1 == 0) goto L8c
                java.lang.Thread r1 = java.lang.Thread.currentThread()
                r1.interrupt()
            L8c:
                goto L8e
            L8d:
                throw r0
            L8e:
                goto L8d
            */
            throw new UnsupportedOperationException("Method not decompiled: l5.j.b.a():void");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a();
            } catch (Error e10) {
                synchronized (j.this.f32003p) {
                    j.this.f32004q = c.IDLE;
                    throw e10;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.f32009o;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + j.this.f32004q + "}";
        }

        /* synthetic */ b(j jVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: SequentialExecutor.java */
    enum c {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    j(Executor executor) {
        this.f32002o = (Executor) Preconditions.k(executor);
    }

    static /* synthetic */ long d(j jVar) {
        long j10 = jVar.f32005r;
        jVar.f32005r = 1 + j10;
        return j10;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        c cVar;
        Preconditions.k(runnable);
        synchronized (this.f32003p) {
            c cVar2 = this.f32004q;
            if (cVar2 != c.RUNNING && cVar2 != (cVar = c.QUEUED)) {
                long j10 = this.f32005r;
                a aVar = new a(runnable);
                this.f32003p.add(aVar);
                c cVar3 = c.QUEUING;
                this.f32004q = cVar3;
                try {
                    this.f32002o.execute(this.f32006s);
                    if (this.f32004q != cVar3) {
                        return;
                    }
                    synchronized (this.f32003p) {
                        if (this.f32005r == j10 && this.f32004q == cVar3) {
                            this.f32004q = cVar;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e10) {
                    synchronized (this.f32003p) {
                        c cVar4 = this.f32004q;
                        if ((cVar4 != c.IDLE && cVar4 != c.QUEUING) || !this.f32003p.removeLastOccurrence(aVar)) {
                            z = false;
                        }
                        if (!(e10 instanceof RejectedExecutionException) || z) {
                            throw e10;
                        }
                    }
                    return;
                }
            }
            this.f32003p.add(runnable);
        }
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f32002o + "}";
    }
}
