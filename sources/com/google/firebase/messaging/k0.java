package com.google.firebase.messaging;

import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f26485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<String, Task<String>> f26486b = new o.a();

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    interface a {
        Task<String> start();
    }

    k0(Executor executor) {
        this.f26485a = executor;
    }

    synchronized Task<String> a(final String str, a aVar) {
        Task<String> task = this.f26486b.get(str);
        if (task != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String strValueOf = String.valueOf(str);
                Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Joining ongoing request for: ".concat(strValueOf) : new String("Joining ongoing request for: "));
            }
            return task;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String strValueOf2 = String.valueOf(str);
            Log.d("FirebaseMessaging", strValueOf2.length() != 0 ? "Making new request for: ".concat(strValueOf2) : new String("Making new request for: "));
        }
        Task taskN = aVar.start().n(this.f26485a, new Continuation(this, str) { // from class: com.google.firebase.messaging.j0

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final k0 f26482a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final String f26483b;

            {
                this.f26482a = this;
                this.f26483b = str;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public Object a(Task task2) throws Exception {
                this.f26482a.b(this.f26483b, task2);
                return task2;
            }
        });
        this.f26486b.put(str, (Task<String>) taskN);
        return taskN;
    }

    final /* synthetic */ Task b(String str, Task task) throws Exception {
        synchronized (this) {
            this.f26486b.remove(str);
        }
        return task;
    }
}
