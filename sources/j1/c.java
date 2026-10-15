package j1;

import androidx.lifecycle.t;
import i1.m;

/* JADX INFO: compiled from: OperationImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t<m.b> f30587c = new t<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.work.impl.utils.futures.c<m.b.c> f30588d = androidx.work.impl.utils.futures.c.u();

    public c() {
        a(m.f30363b);
    }

    public void a(m.b bVar) {
        this.f30587c.l(bVar);
        if (bVar instanceof m.b.c) {
            this.f30588d.q((m.b.c) bVar);
        } else if (bVar instanceof m.b.a) {
            this.f30588d.r(((m.b.a) bVar).a());
        }
    }
}
