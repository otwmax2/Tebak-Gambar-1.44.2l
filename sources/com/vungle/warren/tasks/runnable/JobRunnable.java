package com.vungle.warren.tasks.runnable;

import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import com.vungle.warren.tasks.JobCreator;
import com.vungle.warren.tasks.JobInfo;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.tasks.UnknownTagException;
import com.vungle.warren.tasks.utility.ThreadPriorityHelper;
import com.vungle.warren.utility.PriorityRunnable;

/* JADX INFO: loaded from: classes2.dex */
public class JobRunnable extends PriorityRunnable {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f28376s = JobRunnable.class.getSimpleName();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final JobInfo f28377o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final JobCreator f28378p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final JobRunner f28379q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ThreadPriorityHelper f28380r;

    public JobRunnable(JobInfo jobInfo, JobCreator jobCreator, JobRunner jobRunner, ThreadPriorityHelper threadPriorityHelper) {
        this.f28377o = jobInfo;
        this.f28378p = jobCreator;
        this.f28379q = jobRunner;
        this.f28380r = threadPriorityHelper;
    }

    @Override // com.vungle.warren.utility.PriorityRunnable
    public Integer getPriority() {
        return Integer.valueOf(this.f28377o.getPriority());
    }

    @Override // java.lang.Runnable
    public void run() {
        ThreadPriorityHelper threadPriorityHelper = this.f28380r;
        if (threadPriorityHelper != null) {
            try {
                int iMakeAndroidThreadPriority = threadPriorityHelper.makeAndroidThreadPriority(this.f28377o);
                Process.setThreadPriority(iMakeAndroidThreadPriority);
                Log.d(f28376s, "Setting process thread prio = " + iMakeAndroidThreadPriority + " for " + this.f28377o.getJobTag());
            } catch (Throwable unused) {
                Log.e(f28376s, "Error on setting process thread priority");
            }
        }
        try {
            String jobTag = this.f28377o.getJobTag();
            Bundle extras = this.f28377o.getExtras();
            String str = f28376s;
            Log.d(str, "Start job " + jobTag + "Thread " + Thread.currentThread().getName());
            int iOnRunJob = this.f28378p.create(jobTag).onRunJob(extras, this.f28379q);
            Log.d(str, "On job finished " + jobTag + " with result " + iOnRunJob);
            if (iOnRunJob == 2) {
                long jMakeNextRescedule = this.f28377o.makeNextRescedule();
                if (jMakeNextRescedule > 0) {
                    this.f28377o.setDelay(jMakeNextRescedule);
                    this.f28379q.execute(this.f28377o);
                    Log.d(str, "Rescheduling " + jobTag + " in " + jMakeNextRescedule);
                }
            }
        } catch (UnknownTagException e10) {
            Log.e(f28376s, "Cannot create job" + e10.getLocalizedMessage());
        } catch (Throwable th) {
            Log.e(f28376s, "Can't start job", th);
        }
    }
}
