package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f26497c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private static c1 f26498d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f26499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f26500b = h.f26448o;

    public o(Context context) {
        this.f26499a = context;
    }

    private static Task<Integer> a(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        return b(context, "com.google.firebase.MESSAGING_EVENT").c(intent).l(k.f26484o, l.f26487a);
    }

    private static c1 b(Context context, String str) {
        c1 c1Var;
        synchronized (f26497c) {
            if (f26498d == null) {
                f26498d = new c1(context, "com.google.firebase.MESSAGING_EVENT");
            }
            c1Var = f26498d;
        }
        return c1Var;
    }

    static final /* synthetic */ Integer c(Task task) throws Exception {
        return -1;
    }

    static final /* synthetic */ Integer e(Task task) throws Exception {
        return 403;
    }

    static final /* synthetic */ Task f(Context context, Intent intent, Task task) throws Exception {
        return (PlatformVersion.j() && ((Integer) task.p()).intValue() == 402) ? a(context, intent).l(m.f26489o, n.f26495a) : task;
    }

    @KeepForSdk
    public Task<Integer> g(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return h(this.f26499a, intent);
    }

    @SuppressLint({"InlinedApi"})
    public Task<Integer> h(final Context context, final Intent intent) {
        boolean z10 = false;
        if (PlatformVersion.j() && context.getApplicationInfo().targetSdkVersion >= 26) {
            z10 = true;
        }
        return (z10 && (intent.getFlags() & 268435456) == 0) ? a(context, intent) : Tasks.c(this.f26500b, new Callable(context, intent) { // from class: com.google.firebase.messaging.i

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Context f26478a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Intent f26479b;

            {
                this.f26478a = context;
                this.f26479b = intent;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return Integer.valueOf(m0.b().g(this.f26478a, this.f26479b));
            }
        }).n(this.f26500b, new Continuation(context, intent) { // from class: com.google.firebase.messaging.j

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Context f26480a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Intent f26481b;

            {
                this.f26480a = context;
                this.f26481b = intent;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public Object a(Task task) {
                return o.f(this.f26480a, this.f26481b, task);
            }
        });
    }
}
