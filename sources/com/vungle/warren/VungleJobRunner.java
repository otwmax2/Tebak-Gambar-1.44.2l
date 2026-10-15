package com.vungle.warren;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.vungle.warren.tasks.JobCreator;
import com.vungle.warren.tasks.JobInfo;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.tasks.runnable.JobRunnable;
import com.vungle.warren.tasks.utility.ThreadPriorityHelper;
import com.vungle.warren.utility.NetworkProvider;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
class VungleJobRunner implements JobRunner {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static Handler f27978i = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f27979j = VungleJobRunner.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadPriorityHelper f27980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NetworkProvider f27981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JobCreator f27982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f27983d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f27986g = Long.MAX_VALUE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final NetworkProvider.NetworkListener f27987h = new NetworkProvider.NetworkListener() { // from class: com.vungle.warren.VungleJobRunner.1
        @Override // com.vungle.warren.utility.NetworkProvider.NetworkListener
        public void onChanged(int i10) {
            VungleJobRunner.this.b();
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<PendingJob> f27984e = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f27985f = new PendingRunnable(new WeakReference(this));

    private static class PendingJob {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f27989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        JobInfo f27990b;

        PendingJob(long j10, JobInfo jobInfo) {
            this.f27989a = j10;
            this.f27990b = jobInfo;
        }
    }

    private static class PendingRunnable implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        WeakReference<VungleJobRunner> f27991o;

        PendingRunnable(WeakReference<VungleJobRunner> weakReference) {
            this.f27991o = weakReference;
        }

        @Override // java.lang.Runnable
        public void run() {
            VungleJobRunner vungleJobRunner = this.f27991o.get();
            if (vungleJobRunner != null) {
                vungleJobRunner.b();
            }
        }
    }

    VungleJobRunner(JobCreator jobCreator, Executor executor, ThreadPriorityHelper threadPriorityHelper, NetworkProvider networkProvider) {
        this.f27982c = jobCreator;
        this.f27983d = executor;
        this.f27980a = threadPriorityHelper;
        this.f27981b = networkProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jMin = Long.MAX_VALUE;
        long j10 = 0;
        for (PendingJob pendingJob : this.f27984e) {
            if (jUptimeMillis >= pendingJob.f27989a) {
                boolean z10 = true;
                if (pendingJob.f27990b.getRequiredNetworkType() == 1 && this.f27981b.getCurrentNetworkType() == -1) {
                    z10 = false;
                    j10++;
                }
                if (z10) {
                    this.f27984e.remove(pendingJob);
                    this.f27983d.execute(new JobRunnable(pendingJob.f27990b, this.f27982c, this, this.f27980a));
                }
            } else {
                jMin = Math.min(jMin, pendingJob.f27989a);
            }
        }
        if (jMin != Long.MAX_VALUE && jMin != this.f27986g) {
            f27978i.removeCallbacks(this.f27985f);
            f27978i.postAtTime(this.f27985f, f27979j, jMin);
        }
        this.f27986g = jMin;
        if (j10 > 0) {
            this.f27981b.addListener(this.f27987h);
        } else {
            this.f27981b.removeListener(this.f27987h);
        }
    }

    @Override // com.vungle.warren.tasks.JobRunner
    public synchronized void cancelPendingJob(String str) {
        ArrayList arrayList = new ArrayList();
        for (PendingJob pendingJob : this.f27984e) {
            if (pendingJob.f27990b.getJobTag().equals(str)) {
                arrayList.add(pendingJob);
            }
        }
        this.f27984e.removeAll(arrayList);
    }

    @Override // com.vungle.warren.tasks.JobRunner
    public synchronized void execute(JobInfo jobInfo) {
        JobInfo jobInfoCopy = jobInfo.copy();
        String jobTag = jobInfoCopy.getJobTag();
        long delay = jobInfoCopy.getDelay();
        jobInfoCopy.setDelay(0L);
        if (jobInfoCopy.getUpdateCurrent()) {
            for (PendingJob pendingJob : this.f27984e) {
                if (pendingJob.f27990b.getJobTag().equals(jobTag)) {
                    Log.d(f27979j, "replacing pending job with new " + jobTag);
                    this.f27984e.remove(pendingJob);
                }
            }
        }
        this.f27984e.add(new PendingJob(SystemClock.uptimeMillis() + delay, jobInfoCopy));
        b();
    }
}
