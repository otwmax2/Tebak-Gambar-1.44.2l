package com.google.android.gms.tasks;

import android.app.Activity;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class z<TResult> extends Task<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f25005a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f25006b = new v();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f25007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f25008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("mLock")
    private Object f25009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("mLock")
    private Exception f25010f;

    z() {
    }

    @GuardedBy("mLock")
    private final void B() {
        Preconditions.o(this.f25007c, "Task is not yet complete");
    }

    @GuardedBy("mLock")
    private final void C() {
        if (this.f25008d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    @GuardedBy("mLock")
    private final void D() {
        if (this.f25007c) {
            throw DuplicateTaskCompletionException.a(this);
        }
    }

    private final void E() {
        synchronized (this.f25005a) {
            if (this.f25007c) {
                this.f25006b.b(this);
            }
        }
    }

    public final boolean A(Object obj) {
        synchronized (this.f25005a) {
            if (this.f25007c) {
                return false;
            }
            this.f25007c = true;
            this.f25009e = obj;
            this.f25006b.b(this);
            return true;
        }
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> a(Executor executor, OnCanceledListener onCanceledListener) {
        this.f25006b.a(new k(executor, onCanceledListener));
        E();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> b(Activity activity, OnCompleteListener<TResult> onCompleteListener) {
        m mVar = new m(TaskExecutors.f24951a, onCompleteListener);
        this.f25006b.a(mVar);
        y.l(activity).m(mVar);
        E();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> c(OnCompleteListener<TResult> onCompleteListener) {
        this.f25006b.a(new m(TaskExecutors.f24951a, onCompleteListener));
        E();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> d(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.f25006b.a(new m(executor, onCompleteListener));
        E();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> e(Activity activity, OnFailureListener onFailureListener) {
        o oVar = new o(TaskExecutors.f24951a, onFailureListener);
        this.f25006b.a(oVar);
        y.l(activity).m(oVar);
        E();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> f(OnFailureListener onFailureListener) {
        g(TaskExecutors.f24951a, onFailureListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> g(Executor executor, OnFailureListener onFailureListener) {
        this.f25006b.a(new o(executor, onFailureListener));
        E();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> h(Activity activity, OnSuccessListener<? super TResult> onSuccessListener) {
        q qVar = new q(TaskExecutors.f24951a, onSuccessListener);
        this.f25006b.a(qVar);
        y.l(activity).m(qVar);
        E();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> i(OnSuccessListener<? super TResult> onSuccessListener) {
        j(TaskExecutors.f24951a, onSuccessListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> j(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.f25006b.a(new q(executor, onSuccessListener));
        E();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> k(Continuation<TResult, TContinuationResult> continuation) {
        return l(TaskExecutors.f24951a, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> l(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        z zVar = new z();
        this.f25006b.a(new g(executor, continuation, zVar));
        E();
        return zVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> m(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return n(TaskExecutors.f24951a, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> n(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        z zVar = new z();
        this.f25006b.a(new i(executor, continuation, zVar));
        E();
        return zVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Exception o() {
        Exception exc;
        synchronized (this.f25005a) {
            exc = this.f25010f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    public final TResult p() {
        TResult tresult;
        synchronized (this.f25005a) {
            B();
            C();
            Exception exc = this.f25010f;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            tresult = (TResult) this.f25009e;
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <X extends Throwable> TResult q(Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f25005a) {
            B();
            C();
            if (cls.isInstance(this.f25010f)) {
                throw cls.cast(this.f25010f);
            }
            Exception exc = this.f25010f;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            tresult = (TResult) this.f25009e;
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean r() {
        return this.f25008d;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean s() {
        boolean z10;
        synchronized (this.f25005a) {
            z10 = this.f25007c;
        }
        return z10;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean t() {
        boolean z10;
        synchronized (this.f25005a) {
            z10 = false;
            if (this.f25007c && !this.f25008d && this.f25010f == null) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> u(SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        Executor executor = TaskExecutors.f24951a;
        z zVar = new z();
        this.f25006b.a(new t(executor, successContinuation, zVar));
        E();
        return zVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> v(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        z zVar = new z();
        this.f25006b.a(new t(executor, successContinuation, zVar));
        E();
        return zVar;
    }

    public final void w(Exception exc) {
        Preconditions.l(exc, "Exception must not be null");
        synchronized (this.f25005a) {
            D();
            this.f25007c = true;
            this.f25010f = exc;
        }
        this.f25006b.b(this);
    }

    public final void x(Object obj) {
        synchronized (this.f25005a) {
            D();
            this.f25007c = true;
            this.f25009e = obj;
        }
        this.f25006b.b(this);
    }

    public final boolean y() {
        synchronized (this.f25005a) {
            if (this.f25007c) {
                return false;
            }
            this.f25007c = true;
            this.f25008d = true;
            this.f25006b.b(this);
            return true;
        }
    }

    public final boolean z(Exception exc) {
        Preconditions.l(exc, "Exception must not be null");
        synchronized (this.f25005a) {
            if (this.f25007c) {
                return false;
            }
            this.f25007c = true;
            this.f25010f = exc;
            this.f25006b.b(this);
            return true;
        }
    }
}
