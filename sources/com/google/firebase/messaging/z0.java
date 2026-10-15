package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.c1;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class z0 extends Binder {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final a f26569o;

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    interface a {
        Task<Void> a(Intent intent);
    }

    z0(a aVar) {
        this.f26569o = aVar;
    }

    void b(final c1.a aVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "service received new intent via bind strategy");
        }
        this.f26569o.a(aVar.f26427a).d(x0.f26565o, new OnCompleteListener(aVar) { // from class: com.google.firebase.messaging.y0

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final c1.a f26567a;

            {
                this.f26567a = aVar;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public void a(Task task) {
                this.f26567a.b();
            }
        });
    }
}
