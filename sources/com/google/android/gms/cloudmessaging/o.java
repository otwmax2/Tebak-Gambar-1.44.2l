package com.google.android.gms.cloudmessaging;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class o implements Continuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Continuation f6874a = new o();

    private o() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object a(Task task) {
        return Rpc.b(task);
    }
}
