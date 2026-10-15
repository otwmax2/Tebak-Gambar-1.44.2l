package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class p3 extends g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzku f24252e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    p3(zzku zzkuVar, a1 a1Var) {
        super(a1Var);
        this.f24252e = zzkuVar;
    }

    @Override // com.google.android.gms.measurement.internal.g
    public final void c() {
        this.f24252e.h();
        this.f24252e.f24394a.U().q().a("Starting upload from DelayedRunnable");
        this.f24252e.f24263b.y();
    }
}
