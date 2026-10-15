package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import i1.j;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import r1.g;
import r1.n;

/* JADX INFO: compiled from: SystemAlarmDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements j1.b {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final String f4437y = j.f("SystemAlarmDispatcher");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Context f4438o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final s1.a f4439p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final n f4440q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final j1.d f4441r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final i f4442s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final androidx.work.impl.background.systemalarm.b f4443t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Handler f4444u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final List<Intent> f4445v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    Intent f4446w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private c f4447x;

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar;
            d dVar;
            synchronized (e.this.f4445v) {
                e eVar2 = e.this;
                eVar2.f4446w = eVar2.f4445v.get(0);
            }
            Intent intent = e.this.f4446w;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = e.this.f4446w.getIntExtra("KEY_START_ID", 0);
                j jVarC = j.c();
                String str = e.f4437y;
                jVarC.a(str, String.format("Processing command %s, %s", e.this.f4446w, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock wakeLockB = r1.j.b(e.this.f4438o, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    j.c().a(str, String.format("Acquiring operation wake lock (%s) %s", action, wakeLockB), new Throwable[0]);
                    wakeLockB.acquire();
                    e eVar3 = e.this;
                    eVar3.f4443t.p(eVar3.f4446w, intExtra, eVar3);
                    j.c().a(str, String.format("Releasing operation wake lock (%s) %s", action, wakeLockB), new Throwable[0]);
                    wakeLockB.release();
                    eVar = e.this;
                    dVar = new d(eVar);
                } catch (Throwable th) {
                    try {
                        j jVarC2 = j.c();
                        String str2 = e.f4437y;
                        jVarC2.b(str2, "Unexpected error in onHandleIntent", th);
                        j.c().a(str2, String.format("Releasing operation wake lock (%s) %s", action, wakeLockB), new Throwable[0]);
                        wakeLockB.release();
                        eVar = e.this;
                        dVar = new d(eVar);
                    } catch (Throwable th2) {
                        j.c().a(e.f4437y, String.format("Releasing operation wake lock (%s) %s", action, wakeLockB), new Throwable[0]);
                        wakeLockB.release();
                        e eVar4 = e.this;
                        eVar4.k(new d(eVar4));
                        throw th2;
                    }
                }
                eVar.k(dVar);
            }
        }
    }

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    static class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final e f4449o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Intent f4450p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final int f4451q;

        b(e eVar, Intent intent, int i10) {
            this.f4449o = eVar;
            this.f4450p = intent;
            this.f4451q = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4449o.a(this.f4450p, this.f4451q);
        }
    }

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    interface c {
        void a();
    }

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    static class d implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final e f4452o;

        d(e eVar) {
            this.f4452o = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4452o.d();
        }
    }

    e(Context context) {
        this(context, null, null);
    }

    private void b() {
        if (this.f4444u.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    private boolean i(String str) {
        b();
        synchronized (this.f4445v) {
            Iterator<Intent> it = this.f4445v.iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getAction())) {
                    return true;
                }
            }
            return false;
        }
    }

    private void l() {
        b();
        PowerManager.WakeLock wakeLockB = r1.j.b(this.f4438o, "ProcessCommand");
        try {
            wakeLockB.acquire();
            this.f4442s.q().b(new a());
        } finally {
            wakeLockB.release();
        }
    }

    public boolean a(Intent intent, int i10) {
        j jVarC = j.c();
        String str = f4437y;
        jVarC.a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i10)), new Throwable[0]);
        b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            j.c().h(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && i("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        }
        intent.putExtra("KEY_START_ID", i10);
        synchronized (this.f4445v) {
            boolean z10 = this.f4445v.isEmpty() ? false : true;
            this.f4445v.add(intent);
            if (!z10) {
                l();
            }
        }
        return true;
    }

    @Override // j1.b
    public void c(String str, boolean z10) {
        k(new b(this, androidx.work.impl.background.systemalarm.b.d(this.f4438o, str, z10), 0));
    }

    void d() {
        j jVarC = j.c();
        String str = f4437y;
        jVarC.a(str, "Checking if commands are complete.", new Throwable[0]);
        b();
        synchronized (this.f4445v) {
            if (this.f4446w != null) {
                j.c().a(str, String.format("Removing command %s", this.f4446w), new Throwable[0]);
                if (!this.f4445v.remove(0).equals(this.f4446w)) {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
                this.f4446w = null;
            }
            g backgroundExecutor = this.f4439p.getBackgroundExecutor();
            if (!this.f4443t.o() && this.f4445v.isEmpty() && !backgroundExecutor.a()) {
                j.c().a(str, "No more commands & intents.", new Throwable[0]);
                c cVar = this.f4447x;
                if (cVar != null) {
                    cVar.a();
                }
            } else if (!this.f4445v.isEmpty()) {
                l();
            }
        }
    }

    j1.d e() {
        return this.f4441r;
    }

    s1.a f() {
        return this.f4439p;
    }

    i g() {
        return this.f4442s;
    }

    n h() {
        return this.f4440q;
    }

    void j() {
        j.c().a(f4437y, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.f4441r.i(this);
        this.f4440q.a();
        this.f4447x = null;
    }

    void k(Runnable runnable) {
        this.f4444u.post(runnable);
    }

    void m(c cVar) {
        if (this.f4447x != null) {
            j.c().b(f4437y, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.f4447x = cVar;
        }
    }

    e(Context context, j1.d dVar, i iVar) {
        Context applicationContext = context.getApplicationContext();
        this.f4438o = applicationContext;
        this.f4443t = new androidx.work.impl.background.systemalarm.b(applicationContext);
        this.f4440q = new n();
        iVar = iVar == null ? i.l(context) : iVar;
        this.f4442s = iVar;
        dVar = dVar == null ? iVar.n() : dVar;
        this.f4441r = dVar;
        this.f4439p = iVar.q();
        dVar.d(this);
        this.f4445v = new ArrayList();
        this.f4446w = null;
        this.f4444u = new Handler(Looper.getMainLooper());
    }
}
