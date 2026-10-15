package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.measurement.internal.zzkh;
import com.google.android.gms.measurement.internal.zzki;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppMeasurementService extends Service implements zzkh {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzki f23966o;

    private final zzki c() {
        if (this.f23966o == null) {
            this.f23966o = new zzki(this);
        }
        return this.f23966o;
    }

    @Override // com.google.android.gms.measurement.internal.zzkh
    public final boolean Z(int i10) {
        return stopSelfResult(i10);
    }

    @Override // com.google.android.gms.measurement.internal.zzkh
    public final void a(Intent intent) {
        q0.a.b(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzkh
    public final void b(JobParameters jobParameters, boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return c().b(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        c().e();
    }

    @Override // android.app.Service
    public void onDestroy() {
        c().f();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        c().g(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        c().a(intent, i10, i11);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        c().j(intent);
        return true;
    }
}
