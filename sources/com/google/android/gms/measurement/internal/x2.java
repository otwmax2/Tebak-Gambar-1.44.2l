package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class x2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f24382o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24383p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzp f24384q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24385r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzkb f24386s;

    x2(zzkb zzkbVar, String str, String str2, zzp zzpVar, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.f24386s = zzkbVar;
        this.f24382o = str;
        this.f24383p = str2;
        this.f24384q = zzpVar;
        this.f24385r = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgi zzgiVar;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                zzkb zzkbVar = this.f24386s;
                zzeo zzeoVar = zzkbVar.f24807d;
                if (zzeoVar == null) {
                    zzkbVar.f24394a.U().m().c("Failed to get conditional properties; not connected to service", this.f24382o, this.f24383p);
                    zzgiVar = this.f24386s.f24394a;
                } else {
                    Preconditions.k(this.f24384q);
                    arrayList = zzlp.q(zzeoVar.b5(this.f24382o, this.f24383p, this.f24384q));
                    this.f24386s.C();
                    zzgiVar = this.f24386s.f24394a;
                }
            } catch (RemoteException e10) {
                this.f24386s.f24394a.U().m().d("Failed to get conditional properties; remote exception", this.f24382o, this.f24383p, e10);
                zzgiVar = this.f24386s.f24394a;
            }
            zzgiVar.L().C(this.f24385r, arrayList);
        } catch (Throwable th) {
            this.f24386s.f24394a.L().C(this.f24385r, arrayList);
            throw th;
        }
    }
}
