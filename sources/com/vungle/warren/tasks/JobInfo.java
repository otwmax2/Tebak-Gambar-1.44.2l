package com.vungle.warren.tasks;

import android.os.Bundle;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class JobInfo implements Cloneable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f28352o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f28353p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f28354q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f28355r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f28356s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Bundle f28357t = new Bundle();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f28358u = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f28359v = 2;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NetworkType
    private int f28360w = 0;

    public @interface NetworkType {
        public static final int ANY = 0;
        public static final int CONNECTED = 1;
    }

    /* JADX INFO: loaded from: classes.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface Priority {
        public static final int CRITICAL = 5;
        public static final int HIGH = 3;
        public static final int HIGHEST = 4;
        public static final int LOW = 1;
        public static final int LOWEST = 0;
        public static final int NORMAL = 2;
    }

    /* JADX INFO: loaded from: classes.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ReschedulePolicy {
        public static final int EXPONENTIAL = 1;
        public static final int LINEAR = 0;
    }

    public JobInfo(String str) {
        this.f28352o = str;
    }

    public JobInfo copy() {
        try {
            return (JobInfo) super.clone();
        } catch (CloneNotSupportedException e10) {
            Log.e("JobInfo", Log.getStackTraceString(e10));
            return null;
        }
    }

    public long getDelay() {
        return this.f28354q;
    }

    public Bundle getExtras() {
        return this.f28357t;
    }

    public String getJobTag() {
        return this.f28352o;
    }

    public int getPriority() {
        return this.f28359v;
    }

    public int getRequiredNetworkType() {
        return this.f28360w;
    }

    public boolean getUpdateCurrent() {
        return this.f28353p;
    }

    public long makeNextRescedule() {
        long j10 = this.f28355r;
        if (j10 == 0) {
            return 0L;
        }
        long j11 = this.f28356s;
        if (j11 == 0) {
            this.f28356s = j10;
        } else if (this.f28358u == 1) {
            this.f28356s = j11 * 2;
        }
        return this.f28356s;
    }

    public JobInfo setDelay(long j10) {
        this.f28354q = j10;
        return this;
    }

    public JobInfo setExtras(Bundle bundle) {
        if (bundle != null) {
            this.f28357t = bundle;
        }
        return this;
    }

    public JobInfo setPriority(int i10) {
        this.f28359v = i10;
        return this;
    }

    public JobInfo setRequiredNetworkType(@NetworkType int i10) {
        this.f28360w = i10;
        return this;
    }

    public JobInfo setReschedulePolicy(long j10, int i10) {
        this.f28355r = j10;
        this.f28358u = i10;
        return this;
    }

    public JobInfo setUpdateCurrent(boolean z10) {
        this.f28353p = z10;
        return this;
    }
}
