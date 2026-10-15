package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Continuation f24969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z f24970c;

    public g(Executor executor, Continuation continuation, z zVar) {
        this.f24968a = executor;
        this.f24969b = continuation;
        this.f24970c = zVar;
    }

    @Override // com.google.android.gms.tasks.u
    public final void a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.u
    public final void c(Task task) {
        this.f24968a.execute(new f(this, task));
    }
}
