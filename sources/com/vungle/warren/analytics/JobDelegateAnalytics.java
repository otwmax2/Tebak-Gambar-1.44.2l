package com.vungle.warren.analytics;

import com.google.gson.o;
import com.vungle.warren.tasks.AnalyticsJob;
import com.vungle.warren.tasks.JobRunner;

/* JADX INFO: loaded from: classes2.dex */
public class JobDelegateAnalytics implements AdAnalytics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JobRunner f28006a;

    public JobDelegateAnalytics(JobRunner jobRunner) {
        this.f28006a = jobRunner;
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public String[] ping(String[] strArr) {
        this.f28006a.execute(AnalyticsJob.makeJob(3, null, strArr, 0));
        this.f28006a.execute(AnalyticsJob.makeJob(1, null, strArr, 1));
        return new String[0];
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public String[] retryUnsent() {
        this.f28006a.execute(AnalyticsJob.makeJob(2, null, null, 1));
        return new String[0];
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public void ri(o oVar) {
        this.f28006a.execute(AnalyticsJob.makeJob(0, oVar.toString(), null, 1));
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public void saveVungleUrls(String[] strArr) {
    }
}
