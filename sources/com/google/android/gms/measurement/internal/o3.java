package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class o3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Clock f24239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f24240b;

    public o3(Clock clock) {
        Preconditions.k(clock);
        this.f24239a = clock;
    }

    public final void a() {
        this.f24240b = 0L;
    }

    public final void b() {
        this.f24240b = this.f24239a.b();
    }

    public final boolean c(long j10) {
        return this.f24240b == 0 || this.f24239a.b() - this.f24240b >= 3600000;
    }
}
