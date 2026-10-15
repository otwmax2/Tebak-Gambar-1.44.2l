package com.vungle.warren.tasks;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class ReconfigJob implements Job {
    public static final String TAG = "com.vungle.warren.tasks.ReconfigJob";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ReconfigCall f28361a;

    public interface ReconfigCall {
        void reConfigVungle();
    }

    public ReconfigJob(ReconfigCall reconfigCall) {
        this.f28361a = reconfigCall;
    }

    public static JobInfo makeJobInfo(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("appId", str);
        return new JobInfo(TAG).setExtras(bundle).setUpdateCurrent(true).setPriority(4);
    }

    @Override // com.vungle.warren.tasks.Job
    public int onRunJob(Bundle bundle, JobRunner jobRunner) {
        if (bundle.getString("appId", null) == null) {
            return 1;
        }
        this.f28361a.reConfigVungle();
        return 0;
    }
}
