package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class t2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24297o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzkb f24298p;

    t2(zzkb zzkbVar, zzp zzpVar) {
        this.f24298p = zzkbVar;
        this.f24297o = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24298p;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Failed to send consent settings to service");
            return;
        }
        try {
            Preconditions.k(this.f24297o);
            zzeoVar.z6(this.f24297o);
            this.f24298p.C();
        } catch (RemoteException e10) {
            this.f24298p.f24394a.U().m().b("Failed to send consent settings to the service", e10);
        }
    }
}
