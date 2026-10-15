package l1;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import i1.j;
import i1.n;
import i1.s;
import j1.e;
import j1.i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import q1.g;
import q1.p;
import q1.q;
import r1.c;

/* JADX INFO: compiled from: SystemJobScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements e {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f31873s = j.f("SystemJobScheduler");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f31874o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final JobScheduler f31875p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final i f31876q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final a f31877r;

    public b(Context context, i iVar) {
        this(context, iVar, (JobScheduler) context.getSystemService("jobscheduler"), new a(context));
    }

    public static void b(Context context) {
        List<JobInfo> listF;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (listF = f(context, jobScheduler)) == null || listF.isEmpty()) {
            return;
        }
        Iterator<JobInfo> it = listF.iterator();
        while (it.hasNext()) {
            c(jobScheduler, it.next().getId());
        }
    }

    private static void c(JobScheduler jobScheduler, int i10) {
        try {
            jobScheduler.cancel(i10);
        } catch (Throwable th) {
            j.c().b(f31873s, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i10)), th);
        }
    }

    private static List<Integer> e(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> listF = f(context, jobScheduler);
        if (listF == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : listF) {
            if (str.equals(g(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    private static List<JobInfo> f(Context context, JobScheduler jobScheduler) {
        List<JobInfo> allPendingJobs;
        try {
            allPendingJobs = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            j.c().b(f31873s, "getAllPendingJobs() is not reliable on this device.", th);
            allPendingJobs = null;
        }
        if (allPendingJobs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allPendingJobs.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : allPendingJobs) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    private static String g(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return extras.getString("EXTRA_WORK_SPEC_ID");
            }
            return null;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public static boolean h(Context context, i iVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> listF = f(context, jobScheduler);
        List<String> listA = iVar.p().I().a();
        boolean z10 = false;
        HashSet hashSet = new HashSet(listF != null ? listF.size() : 0);
        if (listF != null && !listF.isEmpty()) {
            for (JobInfo jobInfo : listF) {
                String strG = g(jobInfo);
                if (TextUtils.isEmpty(strG)) {
                    c(jobScheduler, jobInfo.getId());
                } else {
                    hashSet.add(strG);
                }
            }
        }
        Iterator<String> it = listA.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (!hashSet.contains(it.next())) {
                j.c().a(f31873s, "Reconciling jobs", new Throwable[0]);
                z10 = true;
                break;
            }
        }
        if (z10) {
            WorkDatabase workDatabaseP = iVar.p();
            workDatabaseP.e();
            try {
                q qVarL = workDatabaseP.L();
                Iterator<String> it2 = listA.iterator();
                while (it2.hasNext()) {
                    qVarL.c(it2.next(), -1L);
                }
                workDatabaseP.A();
            } finally {
                workDatabaseP.i();
            }
        }
        return z10;
    }

    @Override // j1.e
    public boolean a() {
        return true;
    }

    @Override // j1.e
    public void cancel(String str) {
        List<Integer> listE = e(this.f31874o, this.f31875p, str);
        if (listE == null || listE.isEmpty()) {
            return;
        }
        Iterator<Integer> it = listE.iterator();
        while (it.hasNext()) {
            c(this.f31875p, it.next().intValue());
        }
        this.f31876q.p().I().d(str);
    }

    @Override // j1.e
    public void d(p... pVarArr) {
        List<Integer> listE;
        WorkDatabase workDatabaseP = this.f31876q.p();
        c cVar = new c(workDatabaseP);
        for (p pVar : pVarArr) {
            workDatabaseP.e();
            try {
                p pVarN = workDatabaseP.L().n(pVar.f33778a);
                if (pVarN == null) {
                    j.c().h(f31873s, "Skipping scheduling " + pVar.f33778a + " because it's no longer in the DB", new Throwable[0]);
                    workDatabaseP.A();
                } else if (pVarN.f33779b != s.a.ENQUEUED) {
                    j.c().h(f31873s, "Skipping scheduling " + pVar.f33778a + " because it is no longer enqueued", new Throwable[0]);
                    workDatabaseP.A();
                } else {
                    g gVarC = workDatabaseP.I().c(pVar.f33778a);
                    int iD = gVarC != null ? gVarC.f33756b : cVar.d(this.f31876q.j().i(), this.f31876q.j().g());
                    if (gVarC == null) {
                        this.f31876q.p().I().b(new g(pVar.f33778a, iD));
                    }
                    i(pVar, iD);
                    if (Build.VERSION.SDK_INT == 23 && (listE = e(this.f31874o, this.f31875p, pVar.f33778a)) != null) {
                        int iIndexOf = listE.indexOf(Integer.valueOf(iD));
                        if (iIndexOf >= 0) {
                            listE.remove(iIndexOf);
                        }
                        i(pVar, !listE.isEmpty() ? listE.get(0).intValue() : cVar.d(this.f31876q.j().i(), this.f31876q.j().g()));
                    }
                    workDatabaseP.A();
                }
                workDatabaseP.i();
            } catch (Throwable th) {
                workDatabaseP.i();
                throw th;
            }
        }
    }

    public void i(p pVar, int i10) {
        JobInfo jobInfoA = this.f31877r.a(pVar, i10);
        j jVarC = j.c();
        String str = f31873s;
        jVarC.a(str, String.format("Scheduling work ID %s Job ID %s", pVar.f33778a, Integer.valueOf(i10)), new Throwable[0]);
        try {
            if (this.f31875p.schedule(jobInfoA) == 0) {
                j.c().h(str, String.format("Unable to schedule work ID %s", pVar.f33778a), new Throwable[0]);
                if (pVar.f33794q && pVar.f33795r == n.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    pVar.f33794q = false;
                    j.c().a(str, String.format("Scheduling a non-expedited job (work ID %s)", pVar.f33778a), new Throwable[0]);
                    i(pVar, i10);
                }
            }
        } catch (IllegalStateException e10) {
            List<JobInfo> listF = f(this.f31874o, this.f31875p);
            String str2 = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(listF != null ? listF.size() : 0), Integer.valueOf(this.f31876q.p().L().h().size()), Integer.valueOf(this.f31876q.j().h()));
            j.c().b(f31873s, str2, new Throwable[0]);
            throw new IllegalStateException(str2, e10);
        } catch (Throwable th) {
            j.c().b(f31873s, String.format("Unable to schedule %s", pVar), th);
        }
    }

    public b(Context context, i iVar, JobScheduler jobScheduler, a aVar) {
        this.f31874o = context;
        this.f31876q = iVar;
        this.f31875p = jobScheduler;
        this.f31877r = aVar;
    }
}
