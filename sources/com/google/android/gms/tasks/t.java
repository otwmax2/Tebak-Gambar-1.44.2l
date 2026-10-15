package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class t<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SuccessContinuation f24998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z f24999c;

    public t(Executor executor, SuccessContinuation successContinuation, z zVar) {
        this.f24997a = executor;
        this.f24998b = successContinuation;
        this.f24999c = zVar;
    }

    @Override // com.google.android.gms.tasks.u
    public final void a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void b(Exception exc) {
        this.f24999c.w(exc);
    }

    @Override // com.google.android.gms.tasks.u
    public final void c(Task task) {
        this.f24997a.execute(new s(this, task));
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void d() {
        this.f24999c.y();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f24999c.x(tcontinuationresult);
    }
}
