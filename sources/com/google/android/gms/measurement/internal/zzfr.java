package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zza f24676a;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
    public interface zza {
        void a(Context context, Intent intent);
    }

    public zzfr(zza zzaVar) {
        Preconditions.k(zzaVar);
        this.f24676a = zzaVar;
    }

    public final void a(Context context, Intent intent) {
        zzgi zzgiVarF = zzgi.F(context, null, null);
        zzey zzeyVarU = zzgiVarF.U();
        if (intent == null) {
            zzeyVarU.r().a("Receiver called with null intent");
            return;
        }
        zzgiVarF.t();
        String action = intent.getAction();
        zzeyVarU.q().b("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                zzeyVarU.r().a("Install Referrer Broadcasts are deprecated");
            }
        } else {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzeyVarU.q().a("Starting wakeful intent.");
            this.f24676a.a(context, className);
        }
    }
}
