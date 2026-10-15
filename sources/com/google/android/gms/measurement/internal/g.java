package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile Handler f24094d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a1 f24095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Runnable f24096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile long f24097c;

    g(a1 a1Var) {
        Preconditions.k(a1Var);
        this.f24095a = a1Var;
        this.f24096b = new f(this, a1Var);
    }

    private final Handler f() {
        Handler handler;
        if (f24094d != null) {
            return f24094d;
        }
        synchronized (g.class) {
            if (f24094d == null) {
                f24094d = new com.google.android.gms.internal.measurement.zzby(this.f24095a.N0().getMainLooper());
            }
            handler = f24094d;
        }
        return handler;
    }

    final void b() {
        this.f24097c = 0L;
        f().removeCallbacks(this.f24096b);
    }

    public abstract void c();

    public final void d(long j10) {
        b();
        if (j10 >= 0) {
            this.f24097c = this.f24095a.x().a();
            if (f().postDelayed(this.f24096b, j10)) {
                return;
            }
            this.f24095a.U().m().b("Failed to schedule delayed post. time", Long.valueOf(j10));
        }
    }

    public final boolean e() {
        return this.f24097c != 0;
    }
}
