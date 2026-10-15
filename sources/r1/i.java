package r1;

import androidx.work.impl.WorkDatabase;
import i1.s;
import q1.q;

/* JADX INFO: compiled from: StopWorkRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public class i implements Runnable {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f34178r = i1.j.f("StopWorkRunnable");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final j1.i f34179o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f34180p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f34181q;

    public i(j1.i iVar, String str, boolean z10) {
        this.f34179o = iVar;
        this.f34180p = str;
        this.f34181q = z10;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zO;
        WorkDatabase workDatabaseP = this.f34179o.p();
        j1.d dVarN = this.f34179o.n();
        q qVarL = workDatabaseP.L();
        workDatabaseP.e();
        try {
            boolean zH = dVarN.h(this.f34180p);
            if (this.f34181q) {
                zO = this.f34179o.n().n(this.f34180p);
            } else {
                if (!zH && qVarL.m(this.f34180p) == s.a.RUNNING) {
                    qVarL.g(s.a.ENQUEUED, this.f34180p);
                }
                zO = this.f34179o.n().o(this.f34180p);
            }
            i1.j.c().a(f34178r, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f34180p, Boolean.valueOf(zO)), new Throwable[0]);
            workDatabaseP.A();
        } finally {
            workDatabaseP.i();
        }
    }
}
