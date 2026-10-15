package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.k0;
import com.google.firebase.messaging.p0;
import com.vungle.mediation.BuildConfig;
import j6.a;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class FirebaseMessaging {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f26378n = TimeUnit.HOURS.toSeconds(8);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static p0 f26379o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SuppressLint({"FirebaseUnknownNullness"})
    static j3.g f26380p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @GuardedBy("FirebaseMessaging.class")
    static ScheduledExecutorService f26381q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b5.g f26382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j6.a f26383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l6.e f26384c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f26385d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a0 f26386e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k0 f26387f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f26388g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Executor f26389h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Executor f26390i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Task<u0> f26391j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final f0 f26392k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f26393l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f26394m;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final h6.d f26395a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @GuardedBy("this")
        private boolean f26396b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @GuardedBy("this")
        private h6.b<b5.b> f26397c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @GuardedBy("this")
        private Boolean f26398d;

        a(h6.d dVar) {
            this.f26395a = dVar;
        }

        private Boolean d() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context contextL = FirebaseMessaging.this.f26382a.l();
            SharedPreferences sharedPreferences = contextL.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = contextL.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(contextL.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void a() {
            if (this.f26396b) {
                return;
            }
            Boolean boolD = d();
            this.f26398d = boolD;
            if (boolD == null) {
                h6.b<b5.b> bVar = new h6.b(this) { // from class: com.google.firebase.messaging.w

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final FirebaseMessaging.a f26560a;

                    {
                        this.f26560a = this;
                    }

                    @Override // h6.b
                    public void a(h6.a aVar) {
                        this.f26560a.c(aVar);
                    }
                };
                this.f26397c = bVar;
                this.f26395a.b(b5.b.class, bVar);
            }
            this.f26396b = true;
        }

        synchronized boolean b() {
            Boolean bool;
            a();
            bool = this.f26398d;
            return bool != null ? bool.booleanValue() : FirebaseMessaging.this.f26382a.v();
        }

        final /* synthetic */ void c(h6.a aVar) {
            if (b()) {
                FirebaseMessaging.this.r();
            }
        }
    }

    FirebaseMessaging(b5.g gVar, j6.a aVar, k6.b<t6.i> bVar, k6.b<i6.j> bVar2, l6.e eVar, j3.g gVar2, h6.d dVar) {
        this(gVar, aVar, bVar, bVar2, eVar, gVar2, dVar, new f0(gVar.l()));
    }

    private String f() {
        return "[DEFAULT]".equals(this.f26382a.o()) ? BuildConfig.FLAVOR : this.f26382a.q();
    }

    @Keep
    static synchronized FirebaseMessaging getInstance(b5.g gVar) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) gVar.j(FirebaseMessaging.class);
        Preconditions.l(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    public static j3.g h() {
        return f26380p;
    }

    private void i(String str) {
        if ("[DEFAULT]".equals(this.f26382a.o())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String strValueOf = String.valueOf(this.f26382a.o());
                Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Invoking onNewToken for app: ".concat(strValueOf) : new String("Invoking onNewToken for app: "));
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new o(this.f26385d).g(intent);
        }
    }

    private synchronized void q() {
        if (this.f26393l) {
            return;
        }
        s(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        j6.a aVar = this.f26383b;
        if (aVar != null) {
            aVar.c();
        } else if (t(g())) {
            q();
        }
    }

    String c() throws IOException {
        j6.a aVar = this.f26383b;
        if (aVar != null) {
            try {
                return (String) Tasks.a(aVar.a());
            } catch (InterruptedException | ExecutionException e10) {
                throw new IOException(e10);
            }
        }
        p0.a aVarG = g();
        if (!t(aVarG)) {
            return aVarG.f26510a;
        }
        final String strC = f0.c(this.f26382a);
        try {
            String str = (String) Tasks.a(this.f26384c.a().n(p.d(), new Continuation(this, strC) { // from class: com.google.firebase.messaging.u

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final FirebaseMessaging f26536a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final String f26537b;

                {
                    this.f26536a = this;
                    this.f26537b = strC;
                }

                @Override // com.google.android.gms.tasks.Continuation
                public Object a(Task task) {
                    return this.f26536a.m(this.f26537b, task);
                }
            }));
            f26379o.f(f(), strC, str, this.f26392k.a());
            if (aVarG == null || !str.equals(aVarG.f26510a)) {
                i(str);
            }
            return str;
        } catch (InterruptedException | ExecutionException e11) {
            throw new IOException(e11);
        }
    }

    void d(Runnable runnable, long j10) {
        synchronized (FirebaseMessaging.class) {
            if (f26381q == null) {
                f26381q = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
            }
            f26381q.schedule(runnable, j10, TimeUnit.SECONDS);
        }
    }

    Context e() {
        return this.f26385d;
    }

    p0.a g() {
        return f26379o.d(f(), f0.c(this.f26382a));
    }

    public boolean j() {
        return this.f26388g.b();
    }

    boolean k() {
        return this.f26392k.g();
    }

    final /* synthetic */ Task l(Task task) {
        return this.f26386e.d((String) task.p());
    }

    final /* synthetic */ Task m(String str, final Task task) throws Exception {
        return this.f26387f.a(str, new k0.a(this, task) { // from class: com.google.firebase.messaging.v

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final FirebaseMessaging f26548a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Task f26549b;

            {
                this.f26548a = this;
                this.f26549b = task;
            }

            @Override // com.google.firebase.messaging.k0.a
            public Task start() {
                return this.f26548a.l(this.f26549b);
            }
        });
    }

    final /* synthetic */ void n() {
        if (j()) {
            r();
        }
    }

    final /* synthetic */ void o(u0 u0Var) {
        if (j()) {
            u0Var.n();
        }
    }

    synchronized void p(boolean z10) {
        this.f26393l = z10;
    }

    synchronized void s(long j10) {
        d(new q0(this, Math.min(Math.max(30L, j10 + j10), f26378n)), j10);
        this.f26393l = true;
    }

    boolean t(p0.a aVar) {
        return aVar == null || aVar.b(this.f26392k.a());
    }

    FirebaseMessaging(b5.g gVar, j6.a aVar, k6.b<t6.i> bVar, k6.b<i6.j> bVar2, l6.e eVar, j3.g gVar2, h6.d dVar, f0 f0Var) {
        this(gVar, aVar, eVar, gVar2, dVar, f0Var, new a0(gVar, f0Var, bVar, bVar2, eVar), p.e(), p.b());
    }

    FirebaseMessaging(b5.g gVar, j6.a aVar, l6.e eVar, j3.g gVar2, h6.d dVar, f0 f0Var, a0 a0Var, Executor executor, Executor executor2) {
        this.f26393l = false;
        f26380p = gVar2;
        this.f26382a = gVar;
        this.f26383b = aVar;
        this.f26384c = eVar;
        this.f26388g = new a(dVar);
        Context contextL = gVar.l();
        this.f26385d = contextL;
        q qVar = new q();
        this.f26394m = qVar;
        this.f26392k = f0Var;
        this.f26390i = executor;
        this.f26386e = a0Var;
        this.f26387f = new k0(executor);
        this.f26389h = executor2;
        Context contextL2 = gVar.l();
        if (contextL2 instanceof Application) {
            ((Application) contextL2).registerActivityLifecycleCallbacks(qVar);
        } else {
            String strValueOf = String.valueOf(contextL2);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 125);
            sb.append("Context ");
            sb.append(strValueOf);
            sb.append(" was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
            Log.w("FirebaseMessaging", sb.toString());
        }
        if (aVar != null) {
            aVar.b(new a.InterfaceC0181a(this) { // from class: com.google.firebase.messaging.r

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final FirebaseMessaging f26519a;

                {
                    this.f26519a = this;
                }
            });
        }
        synchronized (FirebaseMessaging.class) {
            if (f26379o == null) {
                f26379o = new p0(contextL);
            }
        }
        executor2.execute(new Runnable(this) { // from class: com.google.firebase.messaging.s

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final FirebaseMessaging f26524o;

            {
                this.f26524o = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f26524o.n();
            }
        });
        Task<u0> taskD = u0.d(this, eVar, f0Var, a0Var, contextL, p.f());
        this.f26391j = taskD;
        taskD.j(p.g(), new OnSuccessListener(this) { // from class: com.google.firebase.messaging.t

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final FirebaseMessaging f26529a;

            {
                this.f26529a = this;
            }

            @Override // com.google.android.gms.tasks.OnSuccessListener
            public void onSuccess(Object obj) {
                this.f26529a.o((u0) obj);
            }
        });
    }
}
