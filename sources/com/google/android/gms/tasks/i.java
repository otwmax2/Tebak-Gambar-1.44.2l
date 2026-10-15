package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Continuation f24974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z f24975c;

    public i(Executor executor, Continuation continuation, z zVar) {
        this.f24973a = executor;
        this.f24974b = continuation;
        this.f24975c = zVar;
    }

    @Override // com.google.android.gms.tasks.u
    public final void a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void b(Exception exc) {
        this.f24975c.w(exc);
    }

    @Override // com.google.android.gms.tasks.u
    public final void c(Task task) {
        this.f24973a.execute(new h(this, task));
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void d() {
        this.f24975c.y();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f24975c.x(tcontinuationresult);
    }
}
