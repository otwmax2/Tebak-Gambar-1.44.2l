package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzelj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzfut f16905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f16906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Clock f16907c;

    public zzelj(zzfut zzfutVar, long j10, Clock clock) {
        this.f16905a = zzfutVar;
        this.f16907c = clock;
        this.f16906b = clock.b() + j10;
    }

    public final boolean a() {
        return this.f16906b < this.f16907c.b();
    }
}
