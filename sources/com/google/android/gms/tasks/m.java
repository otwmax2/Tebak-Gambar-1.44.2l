package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes.dex */
final class m implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f24983b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    @Nullable
    private OnCompleteListener f24984c;

    public m(Executor executor, OnCompleteListener onCompleteListener) {
        this.f24982a = executor;
        this.f24984c = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.u
    public final void a() {
        synchronized (this.f24983b) {
            this.f24984c = null;
        }
    }

    @Override // com.google.android.gms.tasks.u
    public final void c(Task task) {
        synchronized (this.f24983b) {
            if (this.f24984c == null) {
                return;
            }
            this.f24982a.execute(new l(this, task));
        }
    }
}
