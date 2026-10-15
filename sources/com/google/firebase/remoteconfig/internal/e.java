package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: ConfigCacheClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, e> f26611d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Executor f26612e = new Executor() { // from class: com.google.firebase.remoteconfig.internal.d
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f26613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f26614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Task<f> f26615c = null;

    /* JADX INFO: compiled from: ConfigCacheClient.java */
    private static class b<TResult> implements OnSuccessListener<TResult>, OnFailureListener, OnCanceledListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CountDownLatch f26616a;

        private b() {
            this.f26616a = new CountDownLatch(1);
        }

        public boolean a(long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f26616a.await(j10, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void b(Exception exc) {
            this.f26616a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public void d() {
            this.f26616a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(TResult tresult) {
            this.f26616a.countDown();
        }
    }

    private e(ExecutorService executorService, o oVar) {
        this.f26613a = executorService;
        this.f26614b = oVar;
    }

    private static <TResult> TResult c(Task<TResult> task, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        b bVar = new b();
        Executor executor = f26612e;
        task.j(executor, bVar);
        task.g(executor, bVar);
        task.a(executor, bVar);
        if (!bVar.a(j10, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        }
        if (task.t()) {
            return task.p();
        }
        throw new ExecutionException(task.o());
    }

    public static synchronized e h(ExecutorService executorService, o oVar) {
        String strB;
        Map<String, e> map;
        strB = oVar.b();
        map = f26611d;
        if (!map.containsKey(strB)) {
            map.put(strB, new e(executorService, oVar));
        }
        return map.get(strB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void i(f fVar) throws Exception {
        return this.f26614b.e(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task j(boolean z10, f fVar, Void r32) throws Exception {
        if (z10) {
            m(fVar);
        }
        return Tasks.e(fVar);
    }

    private synchronized void m(f fVar) {
        this.f26615c = Tasks.e(fVar);
    }

    public void d() {
        synchronized (this) {
            this.f26615c = Tasks.e(null);
        }
        this.f26614b.a();
    }

    public synchronized Task<f> e() {
        Task<f> task = this.f26615c;
        if (task == null || (task.s() && !this.f26615c.t())) {
            ExecutorService executorService = this.f26613a;
            final o oVar = this.f26614b;
            Objects.requireNonNull(oVar);
            this.f26615c = Tasks.c(executorService, new Callable() { // from class: com.google.firebase.remoteconfig.internal.c
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return oVar.d();
                }
            });
        }
        return this.f26615c;
    }

    public f f() {
        return g(5L);
    }

    f g(long j10) {
        synchronized (this) {
            Task<f> task = this.f26615c;
            if (task != null && task.t()) {
                return this.f26615c.p();
            }
            try {
                return (f) c(e(), j10, TimeUnit.SECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException e10) {
                Log.d("FirebaseRemoteConfig", "Reading from storage file failed.", e10);
                return null;
            }
        }
    }

    public Task<f> k(f fVar) {
        return l(fVar, true);
    }

    public Task<f> l(final f fVar, final boolean z10) {
        return Tasks.c(this.f26613a, new Callable() { // from class: com.google.firebase.remoteconfig.internal.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26607a.i(fVar);
            }
        }).v(this.f26613a, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.a
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task a(Object obj) {
                return this.f26604a.j(z10, fVar, (Void) obj);
            }
        });
    }
}
