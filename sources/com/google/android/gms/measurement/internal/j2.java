package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24166o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzkb f24167p;

    j2(zzkb zzkbVar, zzp zzpVar) {
        this.f24167p = zzkbVar;
        this.f24166o = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24167p;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Preconditions.k(this.f24166o);
            zzeoVar.M2(this.f24166o);
        } catch (RemoteException e10) {
            this.f24167p.f24394a.U().m().b("Failed to reset data on the service: remote exception", e10);
        }
        this.f24167p.C();
    }
}
