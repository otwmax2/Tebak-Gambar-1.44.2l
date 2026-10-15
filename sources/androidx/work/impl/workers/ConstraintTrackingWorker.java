package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import i1.j;
import j1.i;
import java.util.Collections;
import java.util.List;
import m1.c;
import m1.d;
import q1.p;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements c {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String f4523y = j.f("ConstraintTrkngWrkr");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private WorkerParameters f4524t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final Object f4525u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    volatile boolean f4526v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    androidx.work.impl.utils.futures.c<ListenableWorker.a> f4527w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ListenableWorker f4528x;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConstraintTrackingWorker.this.f();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ a5.a f4530o;

        b(a5.a aVar) {
            this.f4530o = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ConstraintTrackingWorker.this.f4525u) {
                if (ConstraintTrackingWorker.this.f4526v) {
                    ConstraintTrackingWorker.this.d();
                } else {
                    ConstraintTrackingWorker.this.f4527w.s(this.f4530o);
                }
            }
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f4524t = workerParameters;
        this.f4525u = new Object();
        this.f4526v = false;
        this.f4527w = androidx.work.impl.utils.futures.c.u();
    }

    public WorkDatabase a() {
        return i.l(getApplicationContext()).p();
    }

    @Override // m1.c
    public void b(List<String> list) {
        j.c().a(f4523y, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.f4525u) {
            this.f4526v = true;
        }
    }

    void c() {
        this.f4527w.q(ListenableWorker.a.a());
    }

    void d() {
        this.f4527w.q(ListenableWorker.a.b());
    }

    @Override // m1.c
    public void e(List<String> list) {
    }

    void f() {
        String strI = getInputData().i("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        if (TextUtils.isEmpty(strI)) {
            j.c().b(f4523y, "No worker to delegate to.", new Throwable[0]);
            c();
            return;
        }
        ListenableWorker listenableWorkerB = getWorkerFactory().b(getApplicationContext(), strI, this.f4524t);
        this.f4528x = listenableWorkerB;
        if (listenableWorkerB == null) {
            j.c().a(f4523y, "No worker to delegate to.", new Throwable[0]);
            c();
            return;
        }
        p pVarN = a().L().n(getId().toString());
        if (pVarN == null) {
            c();
            return;
        }
        d dVar = new d(getApplicationContext(), getTaskExecutor(), this);
        dVar.d(Collections.singletonList(pVarN));
        if (!dVar.c(getId().toString())) {
            j.c().a(f4523y, String.format("Constraints not met for delegate %s. Requesting retry.", strI), new Throwable[0]);
            d();
            return;
        }
        j.c().a(f4523y, String.format("Constraints met for delegate %s", strI), new Throwable[0]);
        try {
            a5.a<ListenableWorker.a> aVarStartWork = this.f4528x.startWork();
            aVarStartWork.e(new b(aVarStartWork), getBackgroundExecutor());
        } catch (Throwable th) {
            j jVarC = j.c();
            String str = f4523y;
            jVarC.a(str, String.format("Delegated worker %s threw exception in startWork.", strI), th);
            synchronized (this.f4525u) {
                if (this.f4526v) {
                    j.c().a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                    d();
                } else {
                    c();
                }
            }
        }
    }

    @Override // androidx.work.ListenableWorker
    public s1.a getTaskExecutor() {
        return i.l(getApplicationContext()).q();
    }

    @Override // androidx.work.ListenableWorker
    public boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.f4528x;
        return listenableWorker != null && listenableWorker.isRunInForeground();
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.f4528x;
        if (listenableWorker == null || listenableWorker.isStopped()) {
            return;
        }
        this.f4528x.stop();
    }

    @Override // androidx.work.ListenableWorker
    public a5.a<ListenableWorker.a> startWork() {
        getBackgroundExecutor().execute(new a());
        return this.f4527w;
    }
}
