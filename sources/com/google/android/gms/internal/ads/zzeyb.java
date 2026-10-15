package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Clock f17628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f17629b = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private volatile int f17631d = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile long f17630c = 0;

    public zzeyb(Clock clock) {
        this.f17628a = clock;
    }

    private final void e() {
        long jA = this.f17628a.a();
        synchronized (this.f17629b) {
            if (this.f17631d == 3) {
                if (this.f17630c + ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10439z5)).longValue() <= jA) {
                    this.f17631d = 1;
                }
            }
        }
    }

    private final void f(int i10, int i11) {
        e();
        long jA = this.f17628a.a();
        synchronized (this.f17629b) {
            if (this.f17631d != i10) {
                return;
            }
            this.f17631d = i11;
            if (this.f17631d == 3) {
                this.f17630c = jA;
            }
        }
    }

    public final void a() {
        f(2, 3);
    }

    public final void b(boolean z10) {
        if (z10) {
            f(1, 2);
        } else {
            f(2, 1);
        }
    }

    public final boolean c() {
        boolean z10;
        synchronized (this.f17629b) {
            e();
            z10 = this.f17631d == 3;
        }
        return z10;
    }

    public final boolean d() {
        boolean z10;
        synchronized (this.f17629b) {
            e();
            z10 = this.f17631d == 2;
        }
        return z10;
    }
}
