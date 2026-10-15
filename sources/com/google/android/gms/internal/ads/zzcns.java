package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcns implements zzaty {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScheduledExecutorService f13606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Clock f13607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private ScheduledFuture f13608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private long f13609d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private long f13610e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private Runnable f13611f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f13612g = false;

    public zzcns(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.f13606a = scheduledExecutorService;
        this.f13607b = clock;
        com.google.android.gms.ads.internal.zzt.d().c(this);
    }

    @Override // com.google.android.gms.internal.ads.zzaty
    public final void S(boolean z10) {
        if (z10) {
            b();
        } else {
            a();
        }
    }

    @VisibleForTesting
    final synchronized void a() {
        if (this.f13612g) {
            return;
        }
        ScheduledFuture scheduledFuture = this.f13608c;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            this.f13610e = -1L;
        } else {
            this.f13608c.cancel(true);
            this.f13610e = this.f13609d - this.f13607b.b();
        }
        this.f13612g = true;
    }

    @VisibleForTesting
    final synchronized void b() {
        ScheduledFuture scheduledFuture;
        if (this.f13612g) {
            if (this.f13610e > 0 && (scheduledFuture = this.f13608c) != null && scheduledFuture.isCancelled()) {
                this.f13608c = this.f13606a.schedule(this.f13611f, this.f13610e, TimeUnit.MILLISECONDS);
            }
            this.f13612g = false;
        }
    }

    public final synchronized void c(int i10, Runnable runnable) {
        this.f13611f = runnable;
        long j10 = i10;
        this.f13609d = this.f13607b.b() + j10;
        this.f13608c = this.f13606a.schedule(runnable, j10, TimeUnit.MILLISECONDS);
    }
}
