package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzku extends r3 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AlarmManager f24835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f24836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer f24837f;

    protected zzku(zzli zzliVar) {
        super(zzliVar);
        this.f24835d = (AlarmManager) this.f24394a.N0().getSystemService("alarm");
    }

    private final int j() {
        if (this.f24837f == null) {
            this.f24837f = Integer.valueOf("measurement".concat(String.valueOf(this.f24394a.N0().getPackageName())).hashCode());
        }
        return this.f24837f.intValue();
    }

    private final PendingIntent k() {
        Context contextN0 = this.f24394a.N0();
        return PendingIntent.getBroadcast(contextN0, 0, new Intent().setClassName(contextN0, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.zzbs.f23346a);
    }

    private final g l() {
        if (this.f24836e == null) {
            this.f24836e = new p3(this, this.f24263b.a0());
        }
        return this.f24836e;
    }

    @TargetApi(24)
    private final void m() {
        JobScheduler jobScheduler = (JobScheduler) this.f24394a.N0().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(j());
        }
    }

    @Override // com.google.android.gms.measurement.internal.r3
    protected final boolean g() {
        AlarmManager alarmManager = this.f24835d;
        if (alarmManager != null) {
            alarmManager.cancel(k());
        }
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        m();
        return false;
    }

    public final void h() {
        d();
        this.f24394a.U().q().a("Unscheduling upload");
        AlarmManager alarmManager = this.f24835d;
        if (alarmManager != null) {
            alarmManager.cancel(k());
        }
        l().b();
        if (Build.VERSION.SDK_INT >= 24) {
            m();
        }
    }

    public final void i(long j10) {
        d();
        this.f24394a.t();
        Context contextN0 = this.f24394a.N0();
        if (!zzlp.X(contextN0)) {
            this.f24394a.U().l().a("Receiver not registered/enabled");
        }
        if (!zzlp.Y(contextN0, false)) {
            this.f24394a.U().l().a("Service not registered/enabled");
        }
        h();
        this.f24394a.U().q().b("Scheduling upload, millis", Long.valueOf(j10));
        long jB = this.f24394a.x().b() + j10;
        this.f24394a.v();
        if (j10 < Math.max(0L, ((Long) zzel.f24605y.a(null)).longValue()) && !l().e()) {
            l().d(j10);
        }
        this.f24394a.t();
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.f24835d;
            if (alarmManager != null) {
                this.f24394a.v();
                alarmManager.setInexactRepeating(2, jB, Math.max(((Long) zzel.f24595t.a(null)).longValue(), j10), k());
                return;
            }
            return;
        }
        Context contextN02 = this.f24394a.N0();
        ComponentName componentName = new ComponentName(contextN02, "com.google.android.gms.measurement.AppMeasurementJobService");
        int iJ = j();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        com.google.android.gms.internal.measurement.zzbt.a(contextN02, new JobInfo.Builder(iJ, componentName).setMinimumLatency(j10).setOverrideDeadline(j10 + j10).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }
}
