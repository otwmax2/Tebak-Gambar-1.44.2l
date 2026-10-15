package com.vungle.warren.tasks;

import android.os.Bundle;
import com.vungle.warren.log.LogManager;

/* JADX INFO: loaded from: classes2.dex */
public class SendLogsJob implements Job {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f28362b = "SendLogsJob";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LogManager f28363a;

    public SendLogsJob(LogManager logManager) {
        this.f28363a = logManager;
    }

    public static JobInfo makeJobInfo() {
        return new JobInfo(f28362b).setPriority(2);
    }

    @Override // com.vungle.warren.tasks.Job
    public int onRunJob(Bundle bundle, JobRunner jobRunner) {
        this.f28363a.sendSdkLogs();
        return 0;
    }
}
