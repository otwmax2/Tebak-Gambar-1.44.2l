package com.vungle.warren.tasks;

import android.text.TextUtils;
import com.vungle.warren.AdLoader;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleStaticApi;
import com.vungle.warren.analytics.AdAnalytics;
import com.vungle.warren.log.LogManager;
import com.vungle.warren.persistence.Designer;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.ReconfigJob;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class VungleJobCreator implements JobCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Repository f28367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Designer f28368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ReconfigJob.ReconfigCall f28369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final VungleApiClient f28370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AdAnalytics f28371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AdLoader f28372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final VungleStaticApi f28373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LogManager f28374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ExecutorService f28375i;

    public VungleJobCreator(Repository repository, Designer designer, VungleApiClient vungleApiClient, AdAnalytics adAnalytics, ReconfigJob.ReconfigCall reconfigCall, AdLoader adLoader, VungleStaticApi vungleStaticApi, LogManager logManager, ExecutorService executorService) {
        this.f28367a = repository;
        this.f28368b = designer;
        this.f28369c = reconfigCall;
        this.f28370d = vungleApiClient;
        this.f28371e = adAnalytics;
        this.f28372f = adLoader;
        this.f28373g = vungleStaticApi;
        this.f28374h = logManager;
        this.f28375i = executorService;
    }

    @Override // com.vungle.warren.tasks.JobCreator
    public Job create(String str) throws UnknownTagException {
        if (TextUtils.isEmpty(str)) {
            throw new UnknownTagException("Job tag is null");
        }
        if (str.startsWith(ReconfigJob.TAG)) {
            return new ReconfigJob(this.f28369c);
        }
        if (str.startsWith(DownloadJob.f28349c)) {
            return new DownloadJob(this.f28372f, this.f28373g);
        }
        if (str.startsWith(SendReportsJob.f28364c)) {
            return new SendReportsJob(this.f28367a, this.f28370d);
        }
        if (str.startsWith(CleanupJob.f28345d)) {
            return new CleanupJob(this.f28368b, this.f28367a, this.f28372f);
        }
        if (str.startsWith(AnalyticsJob.TAG)) {
            return new AnalyticsJob(this.f28371e);
        }
        if (str.startsWith(SendLogsJob.f28362b)) {
            return new SendLogsJob(this.f28374h);
        }
        if (str.startsWith(CacheBustJob.TAG)) {
            return new CacheBustJob(this.f28370d, this.f28367a, this.f28375i, this.f28372f);
        }
        throw new UnknownTagException("Unknown Job Type " + str);
    }
}
