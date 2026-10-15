package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfux extends zzfud implements ScheduledFuture {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ScheduledFuture f18751p;

    public zzfux(zzfut zzfutVar, ScheduledFuture scheduledFuture) {
        super(zzfutVar);
        this.f18751p = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzfuc, java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        boolean zCancel = j().cancel(z10);
        if (zCancel) {
            this.f18751p.cancel(z10);
        }
        return zCancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.f18751p.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f18751p.getDelay(timeUnit);
    }
}
