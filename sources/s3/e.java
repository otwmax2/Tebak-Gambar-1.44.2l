package s3;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

/* JADX INFO: compiled from: JobInfoScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f34494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t3.d f34495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f34496c;

    public e(Context context, t3.d dVar, g gVar) {
        this.f34494a = context;
        this.f34495b = dVar;
        this.f34496c = gVar;
    }

    private boolean d(JobScheduler jobScheduler, int i10, int i11) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i12 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i10) {
                return i12 >= i11;
            }
        }
        return false;
    }

    @Override // s3.y
    public void a(l3.p pVar, int i10, boolean z10) {
        ComponentName componentName = new ComponentName(this.f34494a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f34494a.getSystemService("jobscheduler");
        int iC = c(pVar);
        if (!z10 && d(jobScheduler, iC, i10)) {
            p3.a.b("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", pVar);
            return;
        }
        long jB1 = this.f34495b.B1(pVar);
        JobInfo.Builder builderC = this.f34496c.c(new JobInfo.Builder(iC, componentName), pVar.d(), jB1, i10);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i10);
        persistableBundle.putString("backendName", pVar.b());
        persistableBundle.putInt("priority", w3.a.a(pVar.d()));
        if (pVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(pVar.c(), 0));
        }
        builderC.setExtras(persistableBundle);
        p3.a.c("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", pVar, Integer.valueOf(iC), Long.valueOf(this.f34496c.g(pVar.d(), jB1, i10)), Long.valueOf(jB1), Integer.valueOf(i10));
        jobScheduler.schedule(builderC.build());
    }

    @Override // s3.y
    public void b(l3.p pVar, int i10) {
        a(pVar, i10, false);
    }

    int c(l3.p pVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f34494a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(pVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(w3.a.a(pVar.d())).array());
        if (pVar.c() != null) {
            adler32.update(pVar.c());
        }
        return (int) adler32.getValue();
    }
}
