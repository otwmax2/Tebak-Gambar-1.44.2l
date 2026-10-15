package com.vungle.warren;

import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.vungle.warren.tasks.CacheBustJob;
import com.vungle.warren.tasks.CleanupJob;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.utility.ActivityManager;

/* JADX INFO: loaded from: classes2.dex */
public class CacheBustManager implements CacheBustCallback {
    public static final String CACHE_BUST_INTERVAL = "cache_bust_interval";
    public static final String NEXT_CACHE_BUST = "next_cache_bust";
    public static final int NO_VALUE = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JobRunner f27772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f27773b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f27774c = -2147483648L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f27775d;

    protected CacheBustManager(JobRunner jobRunner) {
        this.f27772a = jobRunner;
        if (ActivityManager.getInstance().isInitialized()) {
            d();
            return;
        }
        Log.e(CacheBustManager.class.getSimpleName(), "No lifecycle listener set");
        VungleLogger.error(CacheBustManager.class.getSimpleName() + "#deliverError", "No lifecycle listener set");
    }

    private void d() {
        ActivityManager.getInstance().addListener(new ActivityManager.LifeCycleCallback() { // from class: com.vungle.warren.CacheBustManager.1
            @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
            public void onStart() {
                super.onStart();
                if (CacheBustManager.this.f27775d) {
                    CacheBustManager cacheBustManager = CacheBustManager.this;
                    if (cacheBustManager.f27773b != 0) {
                        cacheBustManager.f27775d = false;
                        Bundle bundle = new Bundle();
                        bundle.putLong(CacheBustManager.CACHE_BUST_INTERVAL, CacheBustManager.this.f27773b);
                        bundle.putLong(CacheBustManager.NEXT_CACHE_BUST, SystemClock.elapsedRealtime() + CacheBustManager.this.f27773b);
                        CacheBustManager.this.f27772a.execute(CacheBustJob.makeJobInfo().setDelay(CacheBustManager.this.f27773b).setReschedulePolicy(CacheBustManager.this.f27773b, 0).setExtras(bundle));
                    }
                }
            }

            @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
            public void onStop() {
                super.onStop();
                CacheBustManager.this.f27772a.cancelPendingJob(CacheBustJob.TAG);
                CacheBustManager.this.f27775d = true;
            }
        });
    }

    @Override // com.vungle.warren.CacheBustCallback
    public void onCacheBust() {
        this.f27772a.execute(CleanupJob.makeJobInfo());
    }

    public void setRefreshRate(long j10) {
        long j11 = this.f27774c;
        if (j11 != -2147483648L) {
            this.f27773b = j11;
        } else {
            this.f27773b = j10 > 0 ? Math.max(j10, 900000L) : 0L;
        }
    }

    public void startBust() {
        if (this.f27773b == 0) {
            this.f27772a.execute(CacheBustJob.makeJobInfo());
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong(CACHE_BUST_INTERVAL, this.f27773b);
        bundle.putLong(NEXT_CACHE_BUST, SystemClock.elapsedRealtime() + this.f27773b);
        this.f27772a.execute(CacheBustJob.makeJobInfo().setReschedulePolicy(this.f27773b, 0).setExtras(bundle));
    }
}
