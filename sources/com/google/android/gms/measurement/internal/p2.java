package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class p2 extends g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzkb f24251e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    p2(zzkb zzkbVar, a1 a1Var) {
        super(a1Var);
        this.f24251e = zzkbVar;
    }

    @Override // com.google.android.gms.measurement.internal.g
    public final void c() {
        zzkb zzkbVar = this.f24251e;
        zzkbVar.c();
        if (zzkbVar.v()) {
            zzkbVar.f24394a.U().q().a("Inactivity, disconnecting from the service");
            zzkbVar.O();
        }
    }
}
