package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.WorkerParameters;
import i1.j;
import j1.b;
import j1.i;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SystemJobService extends JobService implements b {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f4455q = j.f("SystemJobService");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private i f4456o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map<String, JobParameters> f4457p = new HashMap();

    private static String a(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return extras.getString("EXTRA_WORK_SPEC_ID");
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // j1.b
    public void c(String str, boolean z10) {
        JobParameters jobParametersRemove;
        j.c().a(f4455q, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f4457p) {
            jobParametersRemove = this.f4457p.remove(str);
        }
        if (jobParametersRemove != null) {
            jobFinished(jobParametersRemove, z10);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            i iVarL = i.l(getApplicationContext());
            this.f4456o = iVarL;
            iVarL.n().d(this);
        } catch (IllegalStateException unused) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            j.c().h(f4455q, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        i iVar = this.f4456o;
        if (iVar != null) {
            iVar.n().i(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.f4456o == null) {
            j.c().a(f4455q, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String strA = a(jobParameters);
        if (TextUtils.isEmpty(strA)) {
            j.c().b(f4455q, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f4457p) {
            if (this.f4457p.containsKey(strA)) {
                j.c().a(f4455q, String.format("Job is already being executed by SystemJobService: %s", strA), new Throwable[0]);
                return false;
            }
            j.c().a(f4455q, String.format("onStartJob for %s", strA), new Throwable[0]);
            this.f4457p.put(strA, jobParameters);
            WorkerParameters.a aVar = null;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 24) {
                aVar = new WorkerParameters.a();
                if (jobParameters.getTriggeredContentUris() != null) {
                    aVar.f4356b = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    aVar.f4355a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                if (i10 >= 28) {
                    aVar.f4357c = jobParameters.getNetwork();
                }
            }
            this.f4456o.w(strA, aVar);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f4456o == null) {
            j.c().a(f4455q, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String strA = a(jobParameters);
        if (TextUtils.isEmpty(strA)) {
            j.c().b(f4455q, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        j.c().a(f4455q, String.format("onStopJob for %s", strA), new Throwable[0]);
        synchronized (this.f4457p) {
            this.f4457p.remove(strA);
        }
        this.f4456o.y(strA);
        return !this.f4456o.n().f(strA);
    }
}
