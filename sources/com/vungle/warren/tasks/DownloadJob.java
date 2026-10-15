package com.vungle.warren.tasks;

import android.os.Bundle;
import com.vungle.warren.AdLoader;
import com.vungle.warren.AdRequest;
import com.vungle.warren.VungleStaticApi;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadJob implements Job {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f28349c = "com.vungle.warren.tasks.DownloadJob";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdLoader f28350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final VungleStaticApi f28351b;

    public DownloadJob(AdLoader adLoader, VungleStaticApi vungleStaticApi) {
        this.f28350a = adLoader;
        this.f28351b = vungleStaticApi;
    }

    public static JobInfo makeJobInfo(AdRequest adRequest) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("request", adRequest);
        return new JobInfo(f28349c + " " + adRequest).setUpdateCurrent(true).setExtras(bundle).setPriority(4);
    }

    @Override // com.vungle.warren.tasks.Job
    public int onRunJob(Bundle bundle, JobRunner jobRunner) {
        AdRequest adRequest = (AdRequest) bundle.getSerializable("request");
        Collection<String> validPlacements = this.f28351b.getValidPlacements();
        if (adRequest == null || !validPlacements.contains(adRequest.getPlacementId())) {
            return 1;
        }
        this.f28350a.loadPendingInternal(adRequest);
        return 0;
    }
}
