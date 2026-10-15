package j1;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import i1.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import q1.p;
import q1.q;
import q1.t;
import r1.k;
import r1.l;
import r1.m;

/* JADX INFO: compiled from: WorkerWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class j implements Runnable {
    static final String H = i1.j.f("WorkerWrapper");
    private q1.b A;
    private t B;
    private List<String> C;
    private String D;
    private volatile boolean G;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Context f30630o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f30631p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List<e> f30632q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private WorkerParameters.a f30633r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    p f30634s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ListenableWorker f30635t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    s1.a f30636u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private androidx.work.a f30638w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private p1.a f30639x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private WorkDatabase f30640y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private q f30641z;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    ListenableWorker.a f30637v = ListenableWorker.a.a();
    androidx.work.impl.utils.futures.c<Boolean> E = androidx.work.impl.utils.futures.c.u();
    a5.a<ListenableWorker.a> F = null;

    /* JADX INFO: compiled from: WorkerWrapper.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ a5.a f30642o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ androidx.work.impl.utils.futures.c f30643p;

        a(a5.a aVar, androidx.work.impl.utils.futures.c cVar) {
            this.f30642o = aVar;
            this.f30643p = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f30642o.get();
                i1.j.c().a(j.H, String.format("Starting work for %s", j.this.f30634s.f33780c), new Throwable[0]);
                j jVar = j.this;
                jVar.F = jVar.f30635t.startWork();
                this.f30643p.s(j.this.F);
            } catch (Throwable th) {
                this.f30643p.r(th);
            }
        }
    }

    /* JADX INFO: compiled from: WorkerWrapper.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ androidx.work.impl.utils.futures.c f30645o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ String f30646p;

        b(androidx.work.impl.utils.futures.c cVar, String str) {
            this.f30645o = cVar;
            this.f30646p = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            try {
                try {
                    ListenableWorker.a aVar = (ListenableWorker.a) this.f30645o.get();
                    if (aVar == null) {
                        i1.j.c().b(j.H, String.format("%s returned a null result. Treating it as a failure.", j.this.f30634s.f33780c), new Throwable[0]);
                    } else {
                        i1.j.c().a(j.H, String.format("%s returned a %s result.", j.this.f30634s.f33780c, aVar), new Throwable[0]);
                        j.this.f30637v = aVar;
                    }
                } catch (InterruptedException e10) {
                    e = e10;
                    i1.j.c().b(j.H, String.format("%s failed because it threw an exception/error", this.f30646p), e);
                } catch (CancellationException e11) {
                    i1.j.c().d(j.H, String.format("%s was cancelled", this.f30646p), e11);
                } catch (ExecutionException e12) {
                    e = e12;
                    i1.j.c().b(j.H, String.format("%s failed because it threw an exception/error", this.f30646p), e);
                }
            } finally {
                j.this.f();
            }
        }
    }

    /* JADX INFO: compiled from: WorkerWrapper.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Context f30648a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ListenableWorker f30649b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        p1.a f30650c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        s1.a f30651d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        androidx.work.a f30652e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        WorkDatabase f30653f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f30654g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        List<e> f30655h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        WorkerParameters.a f30656i = new WorkerParameters.a();

        public c(Context context, androidx.work.a aVar, s1.a aVar2, p1.a aVar3, WorkDatabase workDatabase, String str) {
            this.f30648a = context.getApplicationContext();
            this.f30651d = aVar2;
            this.f30650c = aVar3;
            this.f30652e = aVar;
            this.f30653f = workDatabase;
            this.f30654g = str;
        }

        public j a() {
            return new j(this);
        }

        public c b(WorkerParameters.a aVar) {
            if (aVar != null) {
                this.f30656i = aVar;
            }
            return this;
        }

        public c c(List<e> list) {
            this.f30655h = list;
            return this;
        }
    }

    j(c cVar) {
        this.f30630o = cVar.f30648a;
        this.f30636u = cVar.f30651d;
        this.f30639x = cVar.f30650c;
        this.f30631p = cVar.f30654g;
        this.f30632q = cVar.f30655h;
        this.f30633r = cVar.f30656i;
        this.f30635t = cVar.f30649b;
        this.f30638w = cVar.f30652e;
        WorkDatabase workDatabase = cVar.f30653f;
        this.f30640y = workDatabase;
        this.f30641z = workDatabase.L();
        this.A = this.f30640y.D();
        this.B = this.f30640y.M();
    }

    private String a(List<String> list) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f30631p);
        sb.append(", tags={ ");
        boolean z10 = true;
        for (String str : list) {
            if (z10) {
                z10 = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        return sb.toString();
    }

    private void c(ListenableWorker.a aVar) {
        if (aVar instanceof ListenableWorker.a.c) {
            i1.j.c().d(H, String.format("Worker result SUCCESS for %s", this.D), new Throwable[0]);
            if (this.f30634s.d()) {
                h();
                return;
            } else {
                m();
                return;
            }
        }
        if (aVar instanceof ListenableWorker.a.b) {
            i1.j.c().d(H, String.format("Worker result RETRY for %s", this.D), new Throwable[0]);
            g();
            return;
        }
        i1.j.c().d(H, String.format("Worker result FAILURE for %s", this.D), new Throwable[0]);
        if (this.f30634s.d()) {
            h();
        } else {
            l();
        }
    }

    private void e(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f30641z.m(str2) != s.a.CANCELLED) {
                this.f30641z.g(s.a.FAILED, str2);
            }
            linkedList.addAll(this.A.a(str2));
        }
    }

    private void g() {
        this.f30640y.e();
        try {
            this.f30641z.g(s.a.ENQUEUED, this.f30631p);
            this.f30641z.s(this.f30631p, System.currentTimeMillis());
            this.f30641z.c(this.f30631p, -1L);
            this.f30640y.A();
        } finally {
            this.f30640y.i();
            i(true);
        }
    }

    private void h() {
        this.f30640y.e();
        try {
            this.f30641z.s(this.f30631p, System.currentTimeMillis());
            this.f30641z.g(s.a.ENQUEUED, this.f30631p);
            this.f30641z.o(this.f30631p);
            this.f30641z.c(this.f30631p, -1L);
            this.f30640y.A();
        } finally {
            this.f30640y.i();
            i(false);
        }
    }

    private void i(boolean z10) {
        ListenableWorker listenableWorker;
        this.f30640y.e();
        try {
            if (!this.f30640y.L().k()) {
                r1.d.a(this.f30630o, RescheduleReceiver.class, false);
            }
            if (z10) {
                this.f30641z.g(s.a.ENQUEUED, this.f30631p);
                this.f30641z.c(this.f30631p, -1L);
            }
            if (this.f30634s != null && (listenableWorker = this.f30635t) != null && listenableWorker.isRunInForeground()) {
                this.f30639x.a(this.f30631p);
            }
            this.f30640y.A();
            this.f30640y.i();
            this.E.q(Boolean.valueOf(z10));
        } catch (Throwable th) {
            this.f30640y.i();
            throw th;
        }
    }

    private void j() {
        s.a aVarM = this.f30641z.m(this.f30631p);
        if (aVarM == s.a.RUNNING) {
            i1.j.c().a(H, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f30631p), new Throwable[0]);
            i(true);
        } else {
            i1.j.c().a(H, String.format("Status for %s is %s; not doing any work", this.f30631p, aVarM), new Throwable[0]);
            i(false);
        }
    }

    private void k() {
        androidx.work.b bVarB;
        if (n()) {
            return;
        }
        this.f30640y.e();
        try {
            p pVarN = this.f30641z.n(this.f30631p);
            this.f30634s = pVarN;
            if (pVarN == null) {
                i1.j.c().b(H, String.format("Didn't find WorkSpec for id %s", this.f30631p), new Throwable[0]);
                i(false);
                this.f30640y.A();
                return;
            }
            if (pVarN.f33779b != s.a.ENQUEUED) {
                j();
                this.f30640y.A();
                i1.j.c().a(H, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f30634s.f33780c), new Throwable[0]);
                return;
            }
            if (pVarN.d() || this.f30634s.c()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                p pVar = this.f30634s;
                if (!(pVar.f33791n == 0) && jCurrentTimeMillis < pVar.a()) {
                    i1.j.c().a(H, String.format("Delaying execution for %s because it is being executed before schedule.", this.f30634s.f33780c), new Throwable[0]);
                    i(true);
                    this.f30640y.A();
                    return;
                }
            }
            this.f30640y.A();
            this.f30640y.i();
            if (this.f30634s.d()) {
                bVarB = this.f30634s.f33782e;
            } else {
                i1.h hVarB = this.f30638w.f().b(this.f30634s.f33781d);
                if (hVarB == null) {
                    i1.j.c().b(H, String.format("Could not create Input Merger %s", this.f30634s.f33781d), new Throwable[0]);
                    l();
                    return;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f30634s.f33782e);
                    arrayList.addAll(this.f30641z.q(this.f30631p));
                    bVarB = hVarB.b(arrayList);
                }
            }
            WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.f30631p), bVarB, this.C, this.f30633r, this.f30634s.f33788k, this.f30638w.e(), this.f30636u, this.f30638w.m(), new m(this.f30640y, this.f30636u), new l(this.f30640y, this.f30639x, this.f30636u));
            if (this.f30635t == null) {
                this.f30635t = this.f30638w.m().b(this.f30630o, this.f30634s.f33780c, workerParameters);
            }
            ListenableWorker listenableWorker = this.f30635t;
            if (listenableWorker == null) {
                i1.j.c().b(H, String.format("Could not create Worker %s", this.f30634s.f33780c), new Throwable[0]);
                l();
                return;
            }
            if (listenableWorker.isUsed()) {
                i1.j.c().b(H, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f30634s.f33780c), new Throwable[0]);
                l();
                return;
            }
            this.f30635t.setUsed();
            if (!o()) {
                j();
                return;
            }
            if (n()) {
                return;
            }
            androidx.work.impl.utils.futures.c cVarU = androidx.work.impl.utils.futures.c.u();
            k kVar = new k(this.f30630o, this.f30634s, this.f30635t, workerParameters.b(), this.f30636u);
            this.f30636u.a().execute(kVar);
            a5.a<Void> aVarA = kVar.a();
            aVarA.e(new a(aVarA, cVarU), this.f30636u.a());
            cVarU.e(new b(cVarU, this.D), this.f30636u.getBackgroundExecutor());
        } finally {
            this.f30640y.i();
        }
    }

    private void m() {
        this.f30640y.e();
        try {
            this.f30641z.g(s.a.SUCCEEDED, this.f30631p);
            this.f30641z.i(this.f30631p, ((ListenableWorker.a.c) this.f30637v).e());
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (String str : this.A.a(this.f30631p)) {
                if (this.f30641z.m(str) == s.a.BLOCKED && this.A.b(str)) {
                    i1.j.c().d(H, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    this.f30641z.g(s.a.ENQUEUED, str);
                    this.f30641z.s(str, jCurrentTimeMillis);
                }
            }
            this.f30640y.A();
        } finally {
            this.f30640y.i();
            i(false);
        }
    }

    private boolean n() {
        if (!this.G) {
            return false;
        }
        i1.j.c().a(H, String.format("Work interrupted for %s", this.D), new Throwable[0]);
        if (this.f30641z.m(this.f30631p) == null) {
            i(false);
        } else {
            i(!r0.c());
        }
        return true;
    }

    private boolean o() {
        this.f30640y.e();
        try {
            boolean z10 = true;
            if (this.f30641z.m(this.f30631p) == s.a.ENQUEUED) {
                this.f30641z.g(s.a.RUNNING, this.f30631p);
                this.f30641z.r(this.f30631p);
            } else {
                z10 = false;
            }
            this.f30640y.A();
            return z10;
        } finally {
            this.f30640y.i();
        }
    }

    public a5.a<Boolean> b() {
        return this.E;
    }

    public void d() {
        boolean zIsDone;
        this.G = true;
        n();
        a5.a<ListenableWorker.a> aVar = this.F;
        if (aVar != null) {
            zIsDone = aVar.isDone();
            this.F.cancel(true);
        } else {
            zIsDone = false;
        }
        ListenableWorker listenableWorker = this.f30635t;
        if (listenableWorker == null || zIsDone) {
            i1.j.c().a(H, String.format("WorkSpec %s is already done. Not interrupting.", this.f30634s), new Throwable[0]);
        } else {
            listenableWorker.stop();
        }
    }

    void f() {
        if (!n()) {
            this.f30640y.e();
            try {
                s.a aVarM = this.f30641z.m(this.f30631p);
                this.f30640y.K().a(this.f30631p);
                if (aVarM == null) {
                    i(false);
                } else if (aVarM == s.a.RUNNING) {
                    c(this.f30637v);
                } else if (!aVarM.c()) {
                    g();
                }
                this.f30640y.A();
            } finally {
                this.f30640y.i();
            }
        }
        List<e> list = this.f30632q;
        if (list != null) {
            Iterator<e> it = list.iterator();
            while (it.hasNext()) {
                it.next().cancel(this.f30631p);
            }
            f.b(this.f30638w, this.f30640y, this.f30632q);
        }
    }

    void l() {
        this.f30640y.e();
        try {
            e(this.f30631p);
            this.f30641z.i(this.f30631p, ((ListenableWorker.a.C0071a) this.f30637v).e());
            this.f30640y.A();
        } finally {
            this.f30640y.i();
            i(false);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> listB = this.B.b(this.f30631p);
        this.C = listB;
        this.D = a(listB);
        k();
    }
}
