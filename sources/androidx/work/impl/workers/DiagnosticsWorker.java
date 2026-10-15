package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import i1.j;
import j1.i;
import java.util.List;
import java.util.concurrent.TimeUnit;
import q1.g;
import q1.h;
import q1.k;
import q1.p;
import q1.q;
import q1.t;

/* JADX INFO: loaded from: classes.dex */
public class DiagnosticsWorker extends Worker {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f4532u = j.f("DiagnosticsWrkr");

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    private static String a(p pVar, String str, Integer num, String str2) {
        return String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", pVar.f33778a, pVar.f33780c, num, pVar.f33779b.name(), str, str2);
    }

    private static String c(k kVar, t tVar, h hVar, List<p> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id"));
        for (p pVar : list) {
            Integer numValueOf = null;
            g gVarC = hVar.c(pVar.f33778a);
            if (gVarC != null) {
                numValueOf = Integer.valueOf(gVarC.f33756b);
            }
            sb.append(a(pVar, TextUtils.join(",", kVar.b(pVar.f33778a)), numValueOf, TextUtils.join(",", tVar.b(pVar.f33778a))));
        }
        return sb.toString();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        WorkDatabase workDatabaseP = i.l(getApplicationContext()).p();
        q qVarL = workDatabaseP.L();
        k kVarJ = workDatabaseP.J();
        t tVarM = workDatabaseP.M();
        h hVarI = workDatabaseP.I();
        List<p> listE = qVarL.e(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<p> listJ = qVarL.j();
        List<p> listT = qVarL.t(200);
        if (listE != null && !listE.isEmpty()) {
            j jVarC = j.c();
            String str = f4532u;
            jVarC.d(str, "Recently completed work:\n\n", new Throwable[0]);
            j.c().d(str, c(kVarJ, tVarM, hVarI, listE), new Throwable[0]);
        }
        if (listJ != null && !listJ.isEmpty()) {
            j jVarC2 = j.c();
            String str2 = f4532u;
            jVarC2.d(str2, "Running work:\n\n", new Throwable[0]);
            j.c().d(str2, c(kVarJ, tVarM, hVarI, listJ), new Throwable[0]);
        }
        if (listT != null && !listT.isEmpty()) {
            j jVarC3 = j.c();
            String str3 = f4532u;
            jVarC3.d(str3, "Enqueued work:\n\n", new Throwable[0]);
            j.c().d(str3, c(kVarJ, tVarM, hVarI, listT), new Throwable[0]);
        }
        return ListenableWorker.a.c();
    }
}
