package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class q2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzav f24259o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24260p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24261q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzkb f24262r;

    q2(zzkb zzkbVar, zzav zzavVar, String str, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.f24262r = zzkbVar;
        this.f24259o = zzavVar;
        this.f24260p = str;
        this.f24261q = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgi zzgiVar;
        byte[] bArrQ6 = null;
        try {
            try {
                zzkb zzkbVar = this.f24262r;
                zzeo zzeoVar = zzkbVar.f24807d;
                if (zzeoVar == null) {
                    zzkbVar.f24394a.U().m().a("Discarding data. Failed to send event to service to bundle");
                    zzgiVar = this.f24262r.f24394a;
                } else {
                    bArrQ6 = zzeoVar.q6(this.f24259o, this.f24260p);
                    this.f24262r.C();
                    zzgiVar = this.f24262r.f24394a;
                }
            } catch (RemoteException e10) {
                this.f24262r.f24394a.U().m().b("Failed to send event to the service to bundle", e10);
                zzgiVar = this.f24262r.f24394a;
            }
            zzgiVar.L().E(this.f24261q, bArrQ6);
        } catch (Throwable th) {
            this.f24262r.f24394a.L().E(this.f24261q, bArrQ6);
            throw th;
        }
    }
}
