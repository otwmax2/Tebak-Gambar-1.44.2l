package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.c1;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class c1 implements ServiceConnection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f26421o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Intent f26422p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ScheduledExecutorService f26423q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Queue<a> f26424r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private z0 f26425s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f26426t;

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f26427a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TaskCompletionSource<Void> f26428b = new TaskCompletionSource<>();

        a(Intent intent) {
            this.f26427a = intent;
        }

        void a(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.firebase.messaging.a1

                /* JADX INFO: renamed from: o, reason: collision with root package name */
                private final c1.a f26411o;

                {
                    this.f26411o = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.f26411o.d();
                }
            }, 9000L, TimeUnit.MILLISECONDS);
            c().d(scheduledExecutorService, new OnCompleteListener(scheduledFutureSchedule) { // from class: com.google.firebase.messaging.b1

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final ScheduledFuture f26414a;

                {
                    this.f26414a = scheduledFutureSchedule;
                }

                @Override // com.google.android.gms.tasks.OnCompleteListener
                public void a(Task task) {
                    this.f26414a.cancel(false);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            this.f26428b.e(null);
        }

        Task<Void> c() {
            return this.f26428b.a();
        }

        final /* synthetic */ void d() {
            String action = this.f26427a.getAction();
            StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
            sb.append("Service took too long to process intent: ");
            sb.append(action);
            sb.append(" App may get closed.");
            Log.w("FirebaseMessaging", sb.toString());
            b();
        }
    }

    c1(Context context, String str) {
        this(context, "com.google.firebase.MESSAGING_EVENT", new ScheduledThreadPoolExecutor(0, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    private void a() {
        while (!this.f26424r.isEmpty()) {
            this.f26424r.poll().b();
        }
    }

    private synchronized void b() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "flush queue called");
        }
        while (!this.f26424r.isEmpty()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "found intent to be delivered");
            }
            z0 z0Var = this.f26425s;
            if (z0Var == null || !z0Var.isBinderAlive()) {
                d();
                return;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
            }
            this.f26425s.b(this.f26424r.poll());
        }
    }

    private void d() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            boolean z10 = this.f26426t;
            StringBuilder sb = new StringBuilder(39);
            sb.append("binder is dead. start connection? ");
            sb.append(!z10);
            Log.d("FirebaseMessaging", sb.toString());
        }
        if (this.f26426t) {
            return;
        }
        this.f26426t = true;
        try {
            if (ConnectionTracker.b().a(this.f26421o, this.f26422p, this, 65)) {
                return;
            } else {
                Log.e("FirebaseMessaging", "binding to the service failed");
            }
        } catch (SecurityException e10) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e10);
        }
        this.f26426t = false;
        a();
    }

    synchronized Task<Void> c(Intent intent) {
        a aVar;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
        }
        aVar = new a(intent);
        aVar.a(this.f26423q);
        this.f26424r.add(aVar);
        b();
        return aVar.c();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String strValueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 20);
            sb.append("onServiceConnected: ");
            sb.append(strValueOf);
            Log.d("FirebaseMessaging", sb.toString());
        }
        this.f26426t = false;
        if (iBinder instanceof z0) {
            this.f26425s = (z0) iBinder;
            b();
            return;
        }
        String strValueOf2 = String.valueOf(iBinder);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 28);
        sb2.append("Invalid service connection: ");
        sb2.append(strValueOf2);
        Log.e("FirebaseMessaging", sb2.toString());
        a();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String strValueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(strValueOf);
            Log.d("FirebaseMessaging", sb.toString());
        }
        b();
    }

    c1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f26424r = new ArrayDeque();
        this.f26426t = false;
        Context applicationContext = context.getApplicationContext();
        this.f26421o = applicationContext;
        this.f26422p = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.f26423q = scheduledExecutorService;
    }
}
