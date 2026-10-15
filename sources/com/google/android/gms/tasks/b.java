package com.google.android.gms.tasks;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class b<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CountDownLatch f24956a = new CountDownLatch(1);

    /* synthetic */ b(zzac zzacVar) {
    }

    public final void a() throws InterruptedException {
        this.f24956a.await();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void b(Exception exc) {
        this.f24956a.countDown();
    }

    public final boolean c(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f24956a.await(j10, timeUnit);
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void d() {
        this.f24956a.countDown();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t10) {
        this.f24956a.countDown();
    }
}
