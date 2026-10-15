package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes.dex */
final class q implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f24993b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    @Nullable
    private OnSuccessListener f24994c;

    public q(Executor executor, OnSuccessListener onSuccessListener) {
        this.f24992a = executor;
        this.f24994c = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.u
    public final void a() {
        synchronized (this.f24993b) {
            this.f24994c = null;
        }
    }

    @Override // com.google.android.gms.tasks.u
    public final void c(Task task) {
        if (task.t()) {
            synchronized (this.f24993b) {
                if (this.f24994c == null) {
                    return;
                }
                this.f24992a.execute(new p(this, task));
            }
        }
    }
}
