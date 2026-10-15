package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class n2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zziu f24228o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzkb f24229p;

    n2(zzkb zzkbVar, zziu zziuVar) {
        this.f24229p = zzkbVar;
        this.f24228o = zziuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24229p;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Failed to send current screen to service");
            return;
        }
        try {
            zziu zziuVar = this.f24228o;
            if (zziuVar == null) {
                zzeoVar.E6(0L, null, null, zzkbVar.f24394a.N0().getPackageName());
            } else {
                zzeoVar.E6(zziuVar.f24787c, zziuVar.f24785a, zziuVar.f24786b, zzkbVar.f24394a.N0().getPackageName());
            }
            this.f24229p.C();
        } catch (RemoteException e10) {
            this.f24229p.f24394a.U().m().b("Failed to send current screen to the service", e10);
        }
    }
}
