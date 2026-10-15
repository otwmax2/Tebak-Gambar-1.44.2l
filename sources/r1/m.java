package r1;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import i1.o;
import i1.s;
import java.util.UUID;
import q1.p;

/* JADX INFO: compiled from: WorkProgressUpdater.java */
/* JADX INFO: loaded from: classes.dex */
public class m implements o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f34204c = i1.j.f("WorkProgressUpdater");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final WorkDatabase f34205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final s1.a f34206b;

    /* JADX INFO: compiled from: WorkProgressUpdater.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ UUID f34207o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ androidx.work.b f34208p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ androidx.work.impl.utils.futures.c f34209q;

        a(UUID uuid, androidx.work.b bVar, androidx.work.impl.utils.futures.c cVar) {
            this.f34207o = uuid;
            this.f34208p = bVar;
            this.f34209q = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVarN;
            String string = this.f34207o.toString();
            i1.j jVarC = i1.j.c();
            String str = m.f34204c;
            jVarC.a(str, String.format("Updating progress for %s (%s)", this.f34207o, this.f34208p), new Throwable[0]);
            m.this.f34205a.e();
            try {
                pVarN = m.this.f34205a.L().n(string);
            } finally {
                try {
                } finally {
                }
            }
            if (pVarN == null) {
                throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
            }
            if (pVarN.f33779b == s.a.RUNNING) {
                m.this.f34205a.K().b(new q1.m(string, this.f34208p));
            } else {
                i1.j.c().h(str, String.format("Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state.", string), new Throwable[0]);
            }
            this.f34209q.q(null);
            m.this.f34205a.A();
        }
    }

    public m(WorkDatabase workDatabase, s1.a aVar) {
        this.f34205a = workDatabase;
        this.f34206b = aVar;
    }

    @Override // i1.o
    public a5.a<Void> a(Context context, UUID uuid, androidx.work.b bVar) {
        androidx.work.impl.utils.futures.c cVarU = androidx.work.impl.utils.futures.c.u();
        this.f34206b.b(new a(uuid, bVar, cVarU));
        return cVarU;
    }
}
