package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Bundle f24145o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24146p;

    i1(zzin zzinVar, Bundle bundle) {
        this.f24146p = zzinVar;
        this.f24145o = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzin zzinVar = this.f24146p;
        Bundle bundle = this.f24145o;
        zzinVar.c();
        zzinVar.d();
        Preconditions.k(bundle);
        String strG = Preconditions.g(bundle.getString("name"));
        if (!zzinVar.f24394a.j()) {
            zzinVar.f24394a.U().q().a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            zzinVar.f24394a.J().n(new zzab(bundle.getString("app_id"), BuildConfig.FLAVOR, new zzll(strG, 0L, null, BuildConfig.FLAVOR), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), zzinVar.f24394a.L().w0(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), BuildConfig.FLAVOR, bundle.getLong("creation_timestamp"), true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
