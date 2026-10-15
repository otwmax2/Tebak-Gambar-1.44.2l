package j1;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import j1.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: Processor.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements b, p1.a {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f30589z = i1.j.f("Processor");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Context f30591p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private androidx.work.a f30592q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private s1.a f30593r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private WorkDatabase f30594s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List<e> f30597v;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Map<String, j> f30596u = new HashMap();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map<String, j> f30595t = new HashMap();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Set<String> f30598w = new HashSet();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final List<b> f30599x = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private PowerManager.WakeLock f30590o = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Object f30600y = new Object();

    /* JADX INFO: compiled from: Processor.java */
    private static class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private b f30601o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f30602p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private a5.a<Boolean> f30603q;

        a(b bVar, String str, a5.a<Boolean> aVar) {
            this.f30601o = bVar;
            this.f30602p = str;
            this.f30603q = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zBooleanValue;
            try {
                zBooleanValue = this.f30603q.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                zBooleanValue = true;
            }
            this.f30601o.c(this.f30602p, zBooleanValue);
        }
    }

    public d(Context context, androidx.work.a aVar, s1.a aVar2, WorkDatabase workDatabase, List<e> list) {
        this.f30591p = context;
        this.f30592q = aVar;
        this.f30593r = aVar2;
        this.f30594s = workDatabase;
        this.f30597v = list;
    }

    private static boolean e(String str, j jVar) {
        if (jVar == null) {
            i1.j.c().a(f30589z, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            return false;
        }
        jVar.d();
        i1.j.c().a(f30589z, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
        return true;
    }

    private void m() {
        synchronized (this.f30600y) {
            if (!(!this.f30595t.isEmpty())) {
                try {
                    this.f30591p.startService(androidx.work.impl.foreground.a.f(this.f30591p));
                } catch (Throwable th) {
                    i1.j.c().b(f30589z, "Unable to stop foreground service", th);
                }
                PowerManager.WakeLock wakeLock = this.f30590o;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f30590o = null;
                }
            }
        }
    }

    @Override // p1.a
    public void a(String str) {
        synchronized (this.f30600y) {
            this.f30595t.remove(str);
            m();
        }
    }

    @Override // p1.a
    public void b(String str, i1.e eVar) {
        synchronized (this.f30600y) {
            i1.j.c().d(f30589z, String.format("Moving WorkSpec (%s) to the foreground", str), new Throwable[0]);
            j jVarRemove = this.f30596u.remove(str);
            if (jVarRemove != null) {
                if (this.f30590o == null) {
                    PowerManager.WakeLock wakeLockB = r1.j.b(this.f30591p, "ProcessorForegroundLck");
                    this.f30590o = wakeLockB;
                    wakeLockB.acquire();
                }
                this.f30595t.put(str, jVarRemove);
                androidx.core.content.a.m(this.f30591p, androidx.work.impl.foreground.a.d(this.f30591p, str, eVar));
            }
        }
    }

    @Override // j1.b
    public void c(String str, boolean z10) {
        synchronized (this.f30600y) {
            this.f30596u.remove(str);
            i1.j.c().a(f30589z, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z10)), new Throwable[0]);
            Iterator<b> it = this.f30599x.iterator();
            while (it.hasNext()) {
                it.next().c(str, z10);
            }
        }
    }

    public void d(b bVar) {
        synchronized (this.f30600y) {
            this.f30599x.add(bVar);
        }
    }

    public boolean f(String str) {
        boolean zContains;
        synchronized (this.f30600y) {
            zContains = this.f30598w.contains(str);
        }
        return zContains;
    }

    public boolean g(String str) {
        boolean z10;
        synchronized (this.f30600y) {
            z10 = this.f30596u.containsKey(str) || this.f30595t.containsKey(str);
        }
        return z10;
    }

    public boolean h(String str) {
        boolean zContainsKey;
        synchronized (this.f30600y) {
            zContainsKey = this.f30595t.containsKey(str);
        }
        return zContainsKey;
    }

    public void i(b bVar) {
        synchronized (this.f30600y) {
            this.f30599x.remove(bVar);
        }
    }

    public boolean j(String str) {
        return k(str, null);
    }

    public boolean k(String str, WorkerParameters.a aVar) {
        synchronized (this.f30600y) {
            if (g(str)) {
                i1.j.c().a(f30589z, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            j jVarA = new j.c(this.f30591p, this.f30592q, this.f30593r, this, this.f30594s, str).c(this.f30597v).b(aVar).a();
            a5.a<Boolean> aVarB = jVarA.b();
            aVarB.e(new a(this, str, aVarB), this.f30593r.a());
            this.f30596u.put(str, jVarA);
            this.f30593r.getBackgroundExecutor().execute(jVarA);
            i1.j.c().a(f30589z, String.format("%s: processing %s", getClass().getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    public boolean l(String str) {
        boolean zE;
        synchronized (this.f30600y) {
            boolean z10 = true;
            i1.j.c().a(f30589z, String.format("Processor cancelling %s", str), new Throwable[0]);
            this.f30598w.add(str);
            j jVarRemove = this.f30595t.remove(str);
            if (jVarRemove == null) {
                z10 = false;
            }
            if (jVarRemove == null) {
                jVarRemove = this.f30596u.remove(str);
            }
            zE = e(str, jVarRemove);
            if (z10) {
                m();
            }
        }
        return zE;
    }

    public boolean n(String str) {
        boolean zE;
        synchronized (this.f30600y) {
            i1.j.c().a(f30589z, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            zE = e(str, this.f30595t.remove(str));
        }
        return zE;
    }

    public boolean o(String str) {
        boolean zE;
        synchronized (this.f30600y) {
            i1.j.c().a(f30589z, String.format("Processor stopping background work %s", str), new Throwable[0]);
            zE = e(str, this.f30596u.remove(str));
        }
        return zE;
    }
}
