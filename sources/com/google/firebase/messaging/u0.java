package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class u0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f26538j = TimeUnit.HOURS.toSeconds(8);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f26539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f0 f26540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a0 f26541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FirebaseMessaging f26542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l6.e f26543e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ScheduledExecutorService f26545g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final s0 f26547i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<String, ArrayDeque<TaskCompletionSource<Void>>> f26544f = new o.a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f26546h = false;

    private u0(FirebaseMessaging firebaseMessaging, l6.e eVar, f0 f0Var, s0 s0Var, a0 a0Var, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f26542d = firebaseMessaging;
        this.f26543e = eVar;
        this.f26540b = f0Var;
        this.f26547i = s0Var;
        this.f26541c = a0Var;
        this.f26539a = context;
        this.f26545g = scheduledExecutorService;
    }

    private static <T> T a(Task<T> task) throws IOException {
        try {
            return (T) Tasks.b(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e11);
        } catch (TimeoutException e12) {
            e = e12;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    private void b(String str) throws IOException {
        a(this.f26541c.j((String) a(this.f26543e.a()), this.f26542d.c(), str));
    }

    private void c(String str) throws IOException {
        a(this.f26541c.k((String) a(this.f26543e.a()), this.f26542d.c(), str));
    }

    static Task<u0> d(final FirebaseMessaging firebaseMessaging, final l6.e eVar, final f0 f0Var, final a0 a0Var, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.c(scheduledExecutorService, new Callable(context, scheduledExecutorService, firebaseMessaging, eVar, f0Var, a0Var) { // from class: com.google.firebase.messaging.t0

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Context f26530a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final ScheduledExecutorService f26531b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final FirebaseMessaging f26532c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final l6.e f26533d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final f0 f26534e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private final a0 f26535f;

            {
                this.f26530a = context;
                this.f26531b = scheduledExecutorService;
                this.f26532c = firebaseMessaging;
                this.f26533d = eVar;
                this.f26534e = f0Var;
                this.f26535f = a0Var;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return u0.h(this.f26530a, this.f26531b, this.f26532c, this.f26533d, this.f26534e, this.f26535f);
            }
        });
    }

    static boolean f() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    static final /* synthetic */ u0 h(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, l6.e eVar, f0 f0Var, a0 a0Var) throws Exception {
        return new u0(firebaseMessaging, eVar, f0Var, s0.a(context, scheduledExecutorService), a0Var, context, scheduledExecutorService);
    }

    private void i(r0 r0Var) {
        synchronized (this.f26544f) {
            String strE = r0Var.e();
            if (this.f26544f.containsKey(strE)) {
                ArrayDeque<TaskCompletionSource<Void>> arrayDeque = this.f26544f.get(strE);
                TaskCompletionSource<Void> taskCompletionSourcePoll = arrayDeque.poll();
                if (taskCompletionSourcePoll != null) {
                    taskCompletionSourcePoll.c(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.f26544f.remove(strE);
                }
            }
        }
    }

    private void m() {
        if (g()) {
            return;
        }
        p(0L);
    }

    boolean e() {
        return this.f26547i.b() != null;
    }

    synchronized boolean g() {
        return this.f26546h;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean j(com.google.firebase.messaging.r0 r7) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.u0.j(com.google.firebase.messaging.r0):boolean");
    }

    void k(Runnable runnable, long j10) {
        this.f26545g.schedule(runnable, j10, TimeUnit.SECONDS);
    }

    synchronized void l(boolean z10) {
        this.f26546h = z10;
    }

    void n() {
        if (e()) {
            m();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (f() == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        android.util.Log.d("FirebaseMessaging", "topic sync succeeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean o() throws java.io.IOException {
        /*
            r2 = this;
        L0:
            monitor-enter(r2)
            com.google.firebase.messaging.s0 r0 = r2.f26547i     // Catch: java.lang.Throwable -> L2b
            com.google.firebase.messaging.r0 r0 = r0.b()     // Catch: java.lang.Throwable -> L2b
            if (r0 != 0) goto L19
            boolean r0 = f()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L16
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r1 = "topic sync succeeded"
            android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L2b
        L16:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            r0 = 1
            return r0
        L19:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            boolean r1 = r2.j(r0)
            if (r1 != 0) goto L22
            r0 = 0
            return r0
        L22:
            com.google.firebase.messaging.s0 r1 = r2.f26547i
            r1.d(r0)
            r2.i(r0)
            goto L0
        L2b:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            goto L2f
        L2e:
            throw r0
        L2f:
            goto L2e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.u0.o():boolean");
    }

    void p(long j10) {
        k(new v0(this, this.f26539a, this.f26540b, Math.min(Math.max(30L, j10 + j10), f26538j)), j10);
        l(true);
    }
}
