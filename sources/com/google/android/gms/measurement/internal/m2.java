package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class m2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24218o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzkb f24219p;

    m2(zzkb zzkbVar, zzp zzpVar) {
        this.f24219p = zzkbVar;
        this.f24218o = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24219p;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Preconditions.k(this.f24218o);
            zzeoVar.W4(this.f24218o);
            this.f24219p.f24394a.z().o();
            this.f24219p.m(zzeoVar, null, this.f24218o);
            this.f24219p.C();
        } catch (RemoteException e10) {
            this.f24219p.f24394a.U().m().b("Failed to send app launch to the service", e10);
        }
    }
}
