package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcxd extends zzczy {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ScheduledExecutorService f14152p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Clock f14153q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("this")
    private long f14154r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("this")
    private long f14155s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f14156t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @GuardedBy("this")
    private ScheduledFuture f14157u;

    public zzcxd(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        super(Collections.emptySet());
        this.f14154r = -1L;
        this.f14155s = -1L;
        this.f14156t = false;
        this.f14152p = scheduledExecutorService;
        this.f14153q = clock;
    }

    private final synchronized void c1(long j10) {
        ScheduledFuture scheduledFuture = this.f14157u;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            this.f14157u.cancel(true);
        }
        this.f14154r = this.f14153q.b() + j10;
        this.f14157u = this.f14152p.schedule(new zzcxc(this, null), j10, TimeUnit.MILLISECONDS);
    }

    public final synchronized void Y0(int i10) {
        if (i10 <= 0) {
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(i10);
        if (this.f14156t) {
            long j10 = this.f14155s;
            if (j10 <= 0 || millis >= j10) {
                millis = j10;
            }
            this.f14155s = millis;
            return;
        }
        long jB = this.f14153q.b();
        long j11 = this.f14154r;
        if (jB > j11 || j11 - this.f14153q.b() > millis) {
            c1(millis);
        }
    }

    public final synchronized void a() {
        if (this.f14156t) {
            if (this.f14155s > 0 && this.f14157u.isCancelled()) {
                c1(this.f14155s);
            }
            this.f14156t = false;
        }
    }

    public final synchronized void zza() {
        this.f14156t = false;
        c1(0L);
    }

    public final synchronized void zzb() {
        if (this.f14156t) {
            return;
        }
        ScheduledFuture scheduledFuture = this.f14157u;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            this.f14155s = -1L;
        } else {
            this.f14157u.cancel(true);
            this.f14155s = this.f14154r - this.f14153q.b();
        }
        this.f14156t = true;
    }
}
