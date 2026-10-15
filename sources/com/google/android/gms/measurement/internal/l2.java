package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24200o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24201p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzkb f24202q;

    l2(zzkb zzkbVar, zzp zzpVar, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.f24202q = zzkbVar;
        this.f24200o = zzpVar;
        this.f24201p = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgi zzgiVar;
        String strI3 = null;
        try {
            try {
                if (this.f24202q.f24394a.D().l().i(zzag.ANALYTICS_STORAGE)) {
                    zzkb zzkbVar = this.f24202q;
                    zzeo zzeoVar = zzkbVar.f24807d;
                    if (zzeoVar == null) {
                        zzkbVar.f24394a.U().m().a("Failed to get app instance id");
                        zzgiVar = this.f24202q.f24394a;
                    } else {
                        Preconditions.k(this.f24200o);
                        strI3 = zzeoVar.i3(this.f24200o);
                        if (strI3 != null) {
                            this.f24202q.f24394a.G().A(strI3);
                            this.f24202q.f24394a.D().f24362g.b(strI3);
                        }
                        this.f24202q.C();
                        zzgiVar = this.f24202q.f24394a;
                    }
                } else {
                    this.f24202q.f24394a.U().s().a("Analytics storage consent denied; will not get app instance id");
                    this.f24202q.f24394a.G().A(null);
                    this.f24202q.f24394a.D().f24362g.b(null);
                    zzgiVar = this.f24202q.f24394a;
                }
            } catch (RemoteException e10) {
                this.f24202q.f24394a.U().m().b("Failed to get app instance id", e10);
                zzgiVar = this.f24202q.f24394a;
            }
            zzgiVar.L().H(this.f24201p, strI3);
        } catch (Throwable th) {
            this.f24202q.f24394a.L().H(this.f24201p, null);
            throw th;
        }
    }
}
