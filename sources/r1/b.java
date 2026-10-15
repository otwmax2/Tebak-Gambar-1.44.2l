package r1;

import android.text.TextUtils;
import androidx.work.b;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import i1.m;
import java.util.Iterator;
import java.util.List;
import q1.p;

/* JADX INFO: compiled from: EnqueueRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements Runnable {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f34162q = i1.j.f("EnqueueRunnable");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final j1.g f34163o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final j1.c f34164p = new j1.c();

    public b(j1.g gVar) {
        this.f34163o = gVar;
    }

    private static boolean b(j1.g gVar) {
        boolean zC = c(gVar.g(), gVar.f(), (String[]) j1.g.l(gVar).toArray(new String[0]), gVar.d(), gVar.b());
        gVar.k();
        return zC;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01e1 A[LOOP:5: B:125:0x01db->B:127:0x01e1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x020a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x014e A[PHI: r1 r9 r12 r13 r14
      0x014e: PHI (r1v1 java.lang.String[]) = (r1v0 java.lang.String[]), (r1v0 java.lang.String[]), (r1v4 java.lang.String[]) binds: [B:32:0x006c, B:34:0x007a, B:88:0x014d] A[DONT_GENERATE, DONT_INLINE]
      0x014e: PHI (r9v2 boolean) = (r9v1 boolean), (r9v1 boolean), (r9v7 boolean) binds: [B:32:0x006c, B:34:0x007a, B:88:0x014d] A[DONT_GENERATE, DONT_INLINE]
      0x014e: PHI (r12v2 boolean) = (r12v1 boolean), (r12v1 boolean), (r12v4 boolean) binds: [B:32:0x006c, B:34:0x007a, B:88:0x014d] A[DONT_GENERATE, DONT_INLINE]
      0x014e: PHI (r13v2 boolean) = (r13v1 boolean), (r13v1 boolean), (r13v5 boolean) binds: [B:32:0x006c, B:34:0x007a, B:88:0x014d] A[DONT_GENERATE, DONT_INLINE]
      0x014e: PHI (r14v2 boolean) = (r14v1 boolean), (r14v1 boolean), (r14v5 boolean) binds: [B:32:0x006c, B:34:0x007a, B:88:0x014d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean c(j1.i r19, java.util.List<? extends i1.u> r20, java.lang.String[] r21, java.lang.String r22, i1.d r23) {
        /*
            Method dump skipped, instruction units count: 529
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: r1.b.c(j1.i, java.util.List, java.lang.String[], java.lang.String, i1.d):boolean");
    }

    private static boolean e(j1.g gVar) {
        List<j1.g> listE = gVar.e();
        boolean z10 = false;
        if (listE != null) {
            boolean zE = false;
            for (j1.g gVar2 : listE) {
                if (gVar2.j()) {
                    i1.j.c().h(f34162q, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", gVar2.c())), new Throwable[0]);
                } else {
                    zE |= e(gVar2);
                }
            }
            z10 = zE;
        }
        return b(gVar) | z10;
    }

    private static void g(p pVar) {
        i1.b bVar = pVar.f33787j;
        String str = pVar.f33780c;
        if (str.equals(ConstraintTrackingWorker.class.getName())) {
            return;
        }
        if (bVar.f() || bVar.i()) {
            b.a aVar = new b.a();
            aVar.c(pVar.f33782e).e("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            pVar.f33780c = ConstraintTrackingWorker.class.getName();
            pVar.f33782e = aVar.a();
        }
    }

    private static boolean h(j1.i iVar, String str) {
        try {
            Class<?> cls = Class.forName(str);
            Iterator<j1.e> it = iVar.o().iterator();
            while (it.hasNext()) {
                if (cls.isAssignableFrom(it.next().getClass())) {
                    return true;
                }
            }
        } catch (ClassNotFoundException unused) {
        }
        return false;
    }

    public boolean a() {
        WorkDatabase workDatabaseP = this.f34163o.g().p();
        workDatabaseP.e();
        try {
            boolean zE = e(this.f34163o);
            workDatabaseP.A();
            return zE;
        } finally {
            workDatabaseP.i();
        }
    }

    public i1.m d() {
        return this.f34164p;
    }

    public void f() {
        j1.i iVarG = this.f34163o.g();
        j1.f.b(iVarG.j(), iVarG.p(), iVarG.o());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f34163o.h()) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f34163o));
            }
            if (a()) {
                d.a(this.f34163o.g().i(), RescheduleReceiver.class, true);
                f();
            }
            this.f34164p.a(i1.m.f30362a);
        } catch (Throwable th) {
            this.f34164p.a(new m.b.a(th));
        }
    }
}
