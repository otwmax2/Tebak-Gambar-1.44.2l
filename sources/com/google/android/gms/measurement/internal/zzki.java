package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzki {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f24829a;

    public zzki(Context context) {
        Preconditions.k(context);
        this.f24829a = context;
    }

    private final zzey k() {
        return zzgi.F(this.f24829a, null, null).U();
    }

    public final int a(final Intent intent, int i10, final int i11) {
        zzgi zzgiVarF = zzgi.F(this.f24829a, null, null);
        final zzey zzeyVarU = zzgiVarF.U();
        if (intent == null) {
            zzeyVarU.r().a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzgiVarF.t();
        zzeyVarU.q().c("Local AppMeasurementService called. startId, action", Integer.valueOf(i11), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            h(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzke
                @Override // java.lang.Runnable
                public final void run() {
                    this.f24822o.c(i11, zzeyVarU, intent);
                }
            });
        }
        return 2;
    }

    public final IBinder b(Intent intent) {
        if (intent == null) {
            k().m().a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzha(zzli.d0(this.f24829a), null);
        }
        k().r().b("onBind received unknown action", action);
        return null;
    }

    final /* synthetic */ void c(int i10, zzey zzeyVar, Intent intent) {
        if (((zzkh) this.f24829a).Z(i10)) {
            zzeyVar.q().b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i10));
            k().q().a("Completed wakeful intent.");
            ((zzkh) this.f24829a).a(intent);
        }
    }

    final /* synthetic */ void d(zzey zzeyVar, JobParameters jobParameters) {
        zzeyVar.q().a("AppMeasurementJobService processed last upload request.");
        ((zzkh) this.f24829a).b(jobParameters, false);
    }

    public final void e() {
        zzgi zzgiVarF = zzgi.F(this.f24829a, null, null);
        zzey zzeyVarU = zzgiVarF.U();
        zzgiVarF.t();
        zzeyVarU.q().a("Local AppMeasurementService is starting up");
    }

    public final void f() {
        zzgi zzgiVarF = zzgi.F(this.f24829a, null, null);
        zzey zzeyVarU = zzgiVarF.U();
        zzgiVarF.t();
        zzeyVarU.q().a("Local AppMeasurementService is shutting down");
    }

    public final void g(Intent intent) {
        if (intent == null) {
            k().m().a("onRebind called with null intent");
        } else {
            k().q().b("onRebind called. action", intent.getAction());
        }
    }

    public final void h(Runnable runnable) {
        zzli zzliVarD0 = zzli.d0(this.f24829a);
        zzliVarD0.B().v(new g3(this, zzliVarD0, runnable));
    }

    @TargetApi(24)
    public final boolean i(final JobParameters jobParameters) {
        zzgi zzgiVarF = zzgi.F(this.f24829a, null, null);
        final zzey zzeyVarU = zzgiVarF.U();
        String string = jobParameters.getExtras().getString("action");
        zzgiVarF.t();
        zzeyVarU.q().b("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        h(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzkf
            @Override // java.lang.Runnable
            public final void run() {
                this.f24826o.d(zzeyVarU, jobParameters);
            }
        });
        return true;
    }

    public final boolean j(Intent intent) {
        if (intent == null) {
            k().m().a("onUnbind called with null intent");
            return true;
        }
        k().q().b("onUnbind called for intent. action", intent.getAction());
        return true;
    }
}
