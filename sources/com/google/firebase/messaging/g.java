package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.z0;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
public abstract class g extends Service {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Binder f26442p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f26444r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final ExecutorService f26441o = p.c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f26443q = new Object();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f26445s = 0;

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    class a implements z0.a {
        a() {
        }

        @Override // com.google.firebase.messaging.z0.a
        @KeepForSdk
        public Task<Void> a(Intent intent) {
            return g.this.h(intent);
        }
    }

    private void b(Intent intent) {
        if (intent != null) {
            w0.b(intent);
        }
        synchronized (this.f26443q) {
            int i10 = this.f26445s - 1;
            this.f26445s = i10;
            if (i10 == 0) {
                i(this.f26444r);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<Void> h(final Intent intent) {
        if (e(intent)) {
            return Tasks.e(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f26441o.execute(new Runnable(this, intent, taskCompletionSource) { // from class: com.google.firebase.messaging.d

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final g f26429o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            private final Intent f26430p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            private final TaskCompletionSource f26431q;

            {
                this.f26429o = this;
                this.f26430p = intent;
                this.f26431q = taskCompletionSource;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f26429o.g(this.f26430p, this.f26431q);
            }
        });
        return taskCompletionSource.a();
    }

    protected Intent c(Intent intent) {
        return intent;
    }

    public abstract void d(Intent intent);

    public boolean e(Intent intent) {
        return false;
    }

    final /* synthetic */ void f(Intent intent, Task task) {
        b(intent);
    }

    final /* synthetic */ void g(Intent intent, TaskCompletionSource taskCompletionSource) {
        try {
            d(intent);
        } finally {
            taskCompletionSource.c(null);
        }
    }

    boolean i(int i10) {
        return stopSelfResult(i10);
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.f26442p == null) {
            this.f26442p = new z0(new a());
        }
        return this.f26442p;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f26441o.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i10, int i11) {
        synchronized (this.f26443q) {
            this.f26444r = i11;
            this.f26445s++;
        }
        Intent intentC = c(intent);
        if (intentC == null) {
            b(intent);
            return 2;
        }
        Task<Void> taskH = h(intentC);
        if (taskH.s()) {
            b(intent);
            return 2;
        }
        taskH.d(e.f26433o, new OnCompleteListener(this, intent) { // from class: com.google.firebase.messaging.f

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final g f26434a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Intent f26435b;

            {
                this.f26434a = this;
                this.f26435b = intent;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public void a(Task task) {
                this.f26434a.f(this.f26435b, task);
            }
        });
        return 3;
    }
}
