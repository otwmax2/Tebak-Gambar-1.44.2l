package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final long f24168o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final long f24169p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ k3 f24170q;

    j3(k3 k3Var, long j10, long j11) {
        this.f24170q = k3Var;
        this.f24168o = j10;
        this.f24169p = j11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24170q.f24189b.f24394a.B().v(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzkl
            @Override // java.lang.Runnable
            public final void run() {
                j3 j3Var = this.f24830o;
                k3 k3Var = j3Var.f24170q;
                long j10 = j3Var.f24168o;
                long j11 = j3Var.f24169p;
                k3Var.f24189b.c();
                k3Var.f24189b.f24394a.U().l().a("Application going to the background");
                k3Var.f24189b.f24394a.D().f24372q.a(true);
                Bundle bundle = new Bundle();
                if (!k3Var.f24189b.f24394a.v().A()) {
                    k3Var.f24189b.f24833e.b(j11);
                    k3Var.f24189b.f24833e.d(false, false, j11);
                }
                k3Var.f24189b.f24394a.G().r("auto", "_ab", j10, bundle);
            }
        });
    }
}
