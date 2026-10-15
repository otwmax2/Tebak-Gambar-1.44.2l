package j1;

import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.Iterator;
import java.util.List;
import q1.p;
import q1.q;

/* JADX INFO: compiled from: Schedulers.java */
/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f30604a = i1.j.f("Schedulers");

    static e a(Context context, i iVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            l1.b bVar = new l1.b(context, iVar);
            r1.d.a(context, SystemJobService.class, true);
            i1.j.c().a(f30604a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
            return bVar;
        }
        e eVarC = c(context);
        if (eVarC != null) {
            return eVarC;
        }
        androidx.work.impl.background.systemalarm.f fVar = new androidx.work.impl.background.systemalarm.f(context);
        r1.d.a(context, SystemAlarmService.class, true);
        i1.j.c().a(f30604a, "Created SystemAlarmScheduler", new Throwable[0]);
        return fVar;
    }

    public static void b(androidx.work.a aVar, WorkDatabase workDatabase, List<e> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        q qVarL = workDatabase.L();
        workDatabase.e();
        try {
            List<p> listF = qVarL.f(aVar.h());
            List<p> listT = qVarL.t(200);
            if (listF != null && listF.size() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Iterator<p> it = listF.iterator();
                while (it.hasNext()) {
                    qVarL.c(it.next().f33778a, jCurrentTimeMillis);
                }
            }
            workDatabase.A();
            if (listF != null && listF.size() > 0) {
                p[] pVarArr = (p[]) listF.toArray(new p[listF.size()]);
                for (e eVar : list) {
                    if (eVar.a()) {
                        eVar.d(pVarArr);
                    }
                }
            }
            if (listT == null || listT.size() <= 0) {
                return;
            }
            p[] pVarArr2 = (p[]) listT.toArray(new p[listT.size()]);
            for (e eVar2 : list) {
                if (!eVar2.a()) {
                    eVar2.d(pVarArr2);
                }
            }
        } finally {
            workDatabase.i();
        }
    }

    private static e c(Context context) {
        try {
            e eVar = (e) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            i1.j.c().a(f30604a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
            return eVar;
        } catch (Throwable th) {
            i1.j.c().a(f30604a, "Unable to create GCM Scheduler", th);
            return null;
        }
    }
}
