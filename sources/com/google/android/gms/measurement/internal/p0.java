package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class p0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24247o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzha f24248p;

    p0(zzha zzhaVar, zzp zzpVar) {
        this.f24248p = zzhaVar;
        this.f24247o = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24248p.f24735o.a();
        zzli zzliVar = this.f24248p.f24735o;
        zzp zzpVar = this.f24247o;
        zzliVar.B().c();
        zzliVar.b();
        Preconditions.g(zzpVar.f24879o);
        zzah zzahVarB = zzah.b(zzpVar.J);
        zzah zzahVarS = zzliVar.S(zzpVar.f24879o);
        zzliVar.U().q().c("Setting consent, package, consent", zzpVar.f24879o, zzahVarB);
        zzliVar.v(zzpVar.f24879o, zzahVarB);
        if (zzahVarB.k(zzahVarS)) {
            zzliVar.p(zzpVar);
        }
    }
}
