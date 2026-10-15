package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class o2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24236o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Bundle f24237p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzkb f24238q;

    o2(zzkb zzkbVar, zzp zzpVar, Bundle bundle) {
        this.f24238q = zzkbVar;
        this.f24236o = zzpVar;
        this.f24237p = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24238q;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Failed to send default event parameters to service");
            return;
        }
        try {
            Preconditions.k(this.f24236o);
            zzeoVar.Q1(this.f24237p, this.f24236o);
        } catch (RemoteException e10) {
            this.f24238q.f24394a.U().m().b("Failed to send default event parameters to service", e10);
        }
    }
}
