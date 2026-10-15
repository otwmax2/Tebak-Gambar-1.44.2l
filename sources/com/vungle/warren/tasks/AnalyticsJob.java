package com.vungle.warren.tasks;

import android.os.Bundle;
import com.google.gson.f;
import com.google.gson.l;
import com.vungle.warren.AdLoader;
import com.vungle.warren.analytics.AdAnalytics;
import com.vungle.warren.tasks.JobInfo;

/* JADX INFO: loaded from: classes2.dex */
public class AnalyticsJob implements Job {
    public static final String EXTRA_ACTION = "action_extra";
    public static final String TAG = "AnalyticsJob";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdAnalytics f28339a;

    public @interface Action {
        public static final int PING = 1;
        public static final int RETRY_UNSENT = 2;
        public static final int RI = 0;
        public static final int STORE_URL = 3;
    }

    public AnalyticsJob(AdAnalytics adAnalytics) {
        this.f28339a = adAnalytics;
    }

    public static JobInfo makeJob(@Action int i10, String str, String[] strArr, @JobInfo.NetworkType int i11) {
        Bundle bundle = new Bundle();
        bundle.putInt(EXTRA_ACTION, i10);
        bundle.putString("extra_body", str);
        bundle.putStringArray("extra_urls", strArr);
        return new JobInfo(TAG).setUpdateCurrent(false).setExtras(bundle).setReschedulePolicy(AdLoader.RETRY_DELAY, 1).setRequiredNetworkType(i11).setPriority(5);
    }

    @Override // com.vungle.warren.tasks.Job
    public int onRunJob(Bundle bundle, JobRunner jobRunner) {
        String[] stringArray;
        int i10 = bundle.getInt(EXTRA_ACTION, -1);
        if (i10 == 0) {
            this.f28339a.ri(((l) new f().k(bundle.getString("extra_body"), l.class)).l());
            return 0;
        }
        if (i10 == 1) {
            String[] stringArray2 = bundle.getStringArray("extra_urls");
            if (stringArray2 == null) {
                return 0;
            }
            String[] strArrPing = this.f28339a.ping(stringArray2);
            if (strArrPing.length == 0) {
                return 0;
            }
            bundle.putStringArray("extra_urls", strArrPing);
            return 2;
        }
        if (i10 == 2) {
            String[] strArrRetryUnsent = this.f28339a.retryUnsent();
            if (strArrRetryUnsent.length == 0) {
                return 0;
            }
            bundle.putStringArray("extra_urls", strArrRetryUnsent);
            return 2;
        }
        if (i10 != 3 || (stringArray = bundle.getStringArray("extra_urls")) == null) {
            return 0;
        }
        this.f28339a.saveVungleUrls(stringArray);
        return 0;
    }
}
