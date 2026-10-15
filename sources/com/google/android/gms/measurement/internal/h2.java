package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f24129o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24130p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzp f24131q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ boolean f24132r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24133s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzkb f24134t;

    h2(zzkb zzkbVar, String str, String str2, zzp zzpVar, boolean z10, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.f24134t = zzkbVar;
        this.f24129o = str;
        this.f24130p = str2;
        this.f24131q = zzpVar;
        this.f24132r = z10;
        this.f24133s = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Bundle bundle;
        RemoteException e10;
        Bundle bundle2 = new Bundle();
        try {
            zzkb zzkbVar = this.f24134t;
            zzeo zzeoVar = zzkbVar.f24807d;
            if (zzeoVar == null) {
                zzkbVar.f24394a.U().m().c("Failed to get user properties; not connected to service", this.f24129o, this.f24130p);
                this.f24134t.f24394a.L().D(this.f24133s, bundle2);
                return;
            }
            Preconditions.k(this.f24131q);
            List<zzll> listP6 = zzeoVar.P6(this.f24129o, this.f24130p, this.f24132r, this.f24131q);
            bundle = new Bundle();
            if (listP6 != null) {
                for (zzll zzllVar : listP6) {
                    String str = zzllVar.f24869s;
                    if (str != null) {
                        bundle.putString(zzllVar.f24866p, str);
                    } else {
                        Long l10 = zzllVar.f24868r;
                        if (l10 != null) {
                            bundle.putLong(zzllVar.f24866p, l10.longValue());
                        } else {
                            Double d10 = zzllVar.f24871u;
                            if (d10 != null) {
                                bundle.putDouble(zzllVar.f24866p, d10.doubleValue());
                            }
                        }
                    }
                }
            }
            try {
                try {
                    this.f24134t.C();
                    this.f24134t.f24394a.L().D(this.f24133s, bundle);
                } catch (RemoteException e11) {
                    e10 = e11;
                    this.f24134t.f24394a.U().m().c("Failed to get user properties; remote exception", this.f24129o, e10);
                    this.f24134t.f24394a.L().D(this.f24133s, bundle);
                }
            } catch (Throwable th) {
                th = th;
                bundle2 = bundle;
                this.f24134t.f24394a.L().D(this.f24133s, bundle2);
                throw th;
            }
        } catch (RemoteException e12) {
            bundle = bundle2;
            e10 = e12;
        } catch (Throwable th2) {
            th = th2;
            this.f24134t.f24394a.L().D(this.f24133s, bundle2);
            throw th;
        }
    }
}
