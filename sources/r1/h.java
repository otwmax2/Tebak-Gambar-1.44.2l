package r1;

import androidx.work.WorkerParameters;

/* JADX INFO: compiled from: StartWorkRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public class h implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private j1.i f34175o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f34176p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private WorkerParameters.a f34177q;

    public h(j1.i iVar, String str, WorkerParameters.a aVar) {
        this.f34175o = iVar;
        this.f34176p = str;
        this.f34177q = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f34175o.n().k(this.f34176p, this.f34177q);
    }
}
