package com.google.android.gms.ads.internal.util;

import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private long f6133b = Long.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f6134c = new Object();

    public zzbz(long j10) {
        this.f6132a = j10;
    }

    public final void a(long j10) {
        synchronized (this.f6134c) {
            this.f6132a = j10;
        }
    }

    public final boolean b() {
        synchronized (this.f6134c) {
            long jB = com.google.android.gms.ads.internal.zzt.b().b();
            if (this.f6133b + this.f6132a > jB) {
                return false;
            }
            this.f6133b = jB;
            return true;
        }
    }
}
