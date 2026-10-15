package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f17368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f17369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f17370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadLocal f17371d = new ThreadLocal();

    public zzeu(long j10) {
        f(0L);
    }

    public final synchronized long a(long j10) {
        if (this.f17369b == -9223372036854775807L) {
            long jLongValue = this.f17368a;
            if (jLongValue == 9223372036854775806L) {
                Long l10 = (Long) this.f17371d.get();
                Objects.requireNonNull(l10);
                jLongValue = l10.longValue();
            }
            this.f17369b = jLongValue - j10;
            notifyAll();
        }
        this.f17370c = j10;
        return j10 + this.f17369b;
    }

    public final synchronized long b(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = this.f17370c;
        if (j11 != -9223372036854775807L) {
            long j12 = (j11 * 90000) / 1000000;
            long j13 = (4294967296L + j12) / 8589934592L;
            long j14 = (((-1) + j13) * 8589934592L) + j10;
            j10 += j13 * 8589934592L;
            if (Math.abs(j14 - j12) < Math.abs(j10 - j12)) {
                j10 = j14;
            }
        }
        return a((j10 * 1000000) / 90000);
    }

    public final synchronized long c() {
        long j10 = this.f17368a;
        if (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) {
            return -9223372036854775807L;
        }
        return j10;
    }

    public final synchronized long d() {
        long j10;
        j10 = this.f17370c;
        return j10 != -9223372036854775807L ? j10 + this.f17369b : c();
    }

    public final synchronized long e() {
        return this.f17369b;
    }

    public final synchronized void f(long j10) {
        this.f17368a = j10;
        this.f17369b = j10 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f17370c = -9223372036854775807L;
    }
}
