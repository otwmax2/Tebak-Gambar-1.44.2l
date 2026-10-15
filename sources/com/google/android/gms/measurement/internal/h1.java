package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Bundle f24127o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24128p;

    h1(zzin zzinVar, Bundle bundle) {
        this.f24128p = zzinVar;
        this.f24127o = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzin zzinVar = this.f24128p;
        Bundle bundle = this.f24127o;
        zzinVar.c();
        zzinVar.d();
        Preconditions.k(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        Preconditions.g(string);
        Preconditions.g(string2);
        Preconditions.k(bundle.get(SDKConstants.PARAM_VALUE));
        if (!zzinVar.f24394a.j()) {
            zzinVar.f24394a.U().q().a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzll zzllVar = new zzll(string, bundle.getLong("triggered_timestamp"), bundle.get(SDKConstants.PARAM_VALUE), string2);
        try {
            zzav zzavVarW0 = zzinVar.f24394a.L().w0(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, true);
            zzinVar.f24394a.J().n(new zzab(bundle.getString("app_id"), string2, zzllVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), zzinVar.f24394a.L().w0(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, true), bundle.getLong("trigger_timeout"), zzavVarW0, bundle.getLong("time_to_live"), zzinVar.f24394a.L().w0(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
