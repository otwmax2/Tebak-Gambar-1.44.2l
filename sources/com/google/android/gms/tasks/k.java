package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes.dex */
final class k implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f24978b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    @Nullable
    private OnCanceledListener f24979c;

    public k(Executor executor, OnCanceledListener onCanceledListener) {
        this.f24977a = executor;
        this.f24979c = onCanceledListener;
    }

    @Override // com.google.android.gms.tasks.u
    public final void a() {
        synchronized (this.f24978b) {
            this.f24979c = null;
        }
    }

    @Override // com.google.android.gms.tasks.u
    public final void c(Task task) {
        if (task.r()) {
            synchronized (this.f24978b) {
                if (this.f24979c == null) {
                    return;
                }
                this.f24977a.execute(new j(this));
            }
        }
    }
}
