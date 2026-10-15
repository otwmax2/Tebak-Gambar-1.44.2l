package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes.dex */
final class o implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f24988b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    @Nullable
    private OnFailureListener f24989c;

    public o(Executor executor, OnFailureListener onFailureListener) {
        this.f24987a = executor;
        this.f24989c = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.u
    public final void a() {
        synchronized (this.f24988b) {
            this.f24989c = null;
        }
    }

    @Override // com.google.android.gms.tasks.u
    public final void c(Task task) {
        if (task.t() || task.r()) {
            return;
        }
        synchronized (this.f24988b) {
            if (this.f24989c == null) {
                return;
            }
            this.f24987a.execute(new n(this, task));
        }
    }
}
