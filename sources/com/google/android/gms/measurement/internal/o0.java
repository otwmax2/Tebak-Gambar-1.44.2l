package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class o0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24232o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzha f24233p;

    o0(zzha zzhaVar, zzp zzpVar) {
        this.f24233p = zzhaVar;
        this.f24232o = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24233p.f24735o.a();
        zzli zzliVar = this.f24233p.f24735o;
        zzp zzpVar = this.f24232o;
        zzliVar.B().c();
        zzliVar.b();
        Preconditions.g(zzpVar.f24879o);
        zzliVar.P(zzpVar);
    }
}
