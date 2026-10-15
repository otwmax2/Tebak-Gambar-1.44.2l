package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class s2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24277o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzkb f24278p;

    s2(zzkb zzkbVar, zzp zzpVar) {
        this.f24278p = zzkbVar;
        this.f24277o = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24278p;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            Preconditions.k(this.f24277o);
            zzeoVar.C5(this.f24277o);
            this.f24278p.C();
        } catch (RemoteException e10) {
            this.f24278p.f24394a.U().m().b("Failed to send measurementEnabled to the service", e10);
        }
    }
}
