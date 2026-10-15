package com.vungle.warren.tasks;

import android.os.Bundle;
import android.util.Log;
import com.google.gson.o;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.model.Report;
import com.vungle.warren.network.Response;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SendReportsJob implements Job {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f28364c = "com.vungle.warren.tasks.SendReportsJob";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Repository f28365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private VungleApiClient f28366b;

    public SendReportsJob(Repository repository, VungleApiClient vungleApiClient) {
        this.f28365a = repository;
        this.f28366b = vungleApiClient;
    }

    public static JobInfo makeJobInfo(boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("sendAll", z10);
        return new JobInfo(f28364c).setExtras(bundle).setPriority(5).setReschedulePolicy(30000L, 1);
    }

    @Override // com.vungle.warren.tasks.Job
    public int onRunJob(Bundle bundle, JobRunner jobRunner) {
        Response<o> responseExecute;
        List<Report> list = bundle.getBoolean("sendAll", false) ? this.f28365a.loadAllReportToSend().get() : this.f28365a.loadReadyOrFailedReportToSend().get();
        if (list == null) {
            return 1;
        }
        for (Report report : list) {
            try {
                responseExecute = this.f28366b.reportAd(report.toReportBody()).execute();
            } catch (DatabaseHelper.DBException unused) {
            } catch (IOException e10) {
                Log.d(f28364c, "SendReportsJob: IOEx");
                for (Report report2 : list) {
                    report2.setStatus(3);
                    try {
                        this.f28365a.save(report2);
                    } catch (DatabaseHelper.DBException unused2) {
                        return 1;
                    }
                }
                Log.e(f28364c, Log.getStackTraceString(e10));
                return 2;
            }
            if (responseExecute.code() != 200) {
                report.setStatus(3);
                this.f28365a.save(report);
                long retryAfterHeaderValue = this.f28366b.getRetryAfterHeaderValue(responseExecute);
                if (retryAfterHeaderValue > 0) {
                    jobRunner.execute(makeJobInfo(false).setDelay(retryAfterHeaderValue));
                }
                return 1;
            }
            this.f28365a.delete(report);
        }
        return 0;
    }
}
