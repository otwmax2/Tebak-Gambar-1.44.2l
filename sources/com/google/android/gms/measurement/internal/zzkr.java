package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkr extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f24831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final n3 f24832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final m3 f24833e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final k3 f24834f;

    zzkr(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24832d = new n3(this);
        this.f24833e = new m3(this);
        this.f24834f = new k3(this);
    }

    static /* bridge */ /* synthetic */ void l(zzkr zzkrVar, long j10) {
        zzkrVar.c();
        zzkrVar.n();
        zzkrVar.f24394a.U().q().b("Activity paused, time", Long.valueOf(j10));
        zzkrVar.f24834f.a(j10);
        if (zzkrVar.f24394a.v().A()) {
            zzkrVar.f24833e.b(j10);
        }
    }

    static /* bridge */ /* synthetic */ void m(zzkr zzkrVar, long j10) {
        zzkrVar.c();
        zzkrVar.n();
        zzkrVar.f24394a.U().q().b("Activity resumed, time", Long.valueOf(j10));
        if (zzkrVar.f24394a.v().A() || zzkrVar.f24394a.D().f24372q.b()) {
            zzkrVar.f24833e.c(j10);
        }
        zzkrVar.f24834f.b();
        n3 n3Var = zzkrVar.f24832d;
        n3Var.f24230a.c();
        if (n3Var.f24230a.f24394a.j()) {
            n3Var.b(n3Var.f24230a.f24394a.x().a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        c();
        if (this.f24831c == null) {
            this.f24831c = new com.google.android.gms.internal.measurement.zzby(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.r
    protected final boolean i() {
        return false;
    }
}
