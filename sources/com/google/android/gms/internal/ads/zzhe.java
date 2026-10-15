package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f19777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f19778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f19779c = -9223372036854775807L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f19780d = -9223372036854775807L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f19782f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f19783g = -9223372036854775807L;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f19786j = 0.97f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f19785i = 1.03f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f19787k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f19788l = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f19781e = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f19784h = -9223372036854775807L;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f19789m = -9223372036854775807L;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f19790n = -9223372036854775807L;

    /* synthetic */ zzhe(float f10, float f11, long j10, float f12, long j11, long j12, float f13, zzhd zzhdVar) {
        this.f19777a = j11;
        this.f19778b = j12;
    }

    private static long f(long j10, long j11, float f10) {
        return (long) ((j10 * 0.999f) + (j11 * 9.999871E-4f));
    }

    private final void g() {
        long j10 = this.f19779c;
        if (j10 != -9223372036854775807L) {
            long j11 = this.f19780d;
            if (j11 != -9223372036854775807L) {
                j10 = j11;
            }
            long j12 = this.f19782f;
            if (j12 != -9223372036854775807L && j10 < j12) {
                j10 = j12;
            }
            long j13 = this.f19783g;
            if (j13 != -9223372036854775807L && j10 > j13) {
                j10 = j13;
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f19781e == j10) {
            return;
        }
        this.f19781e = j10;
        this.f19784h = j10;
        this.f19789m = -9223372036854775807L;
        this.f19790n = -9223372036854775807L;
        this.f19788l = -9223372036854775807L;
    }

    public final float a(long j10, long j11) {
        long jC0;
        if (this.f19779c == -9223372036854775807L) {
            return 1.0f;
        }
        long j12 = j10 - j11;
        long j13 = this.f19789m;
        if (j13 == -9223372036854775807L) {
            this.f19789m = j12;
            this.f19790n = 0L;
        } else {
            long jMax = Math.max(j12, f(j13, j12, 0.999f));
            this.f19789m = jMax;
            this.f19790n = f(this.f19790n, Math.abs(j12 - jMax), 0.999f);
        }
        if (this.f19788l != -9223372036854775807L && SystemClock.elapsedRealtime() - this.f19788l < 1000) {
            return this.f19787k;
        }
        this.f19788l = SystemClock.elapsedRealtime();
        long j14 = this.f19789m + (this.f19790n * 3);
        if (this.f19784h > j14) {
            float fG0 = zzew.g0(1000L);
            long[] jArr = {j14, this.f19781e, this.f19784h - (((long) ((this.f19787k - 1.0f) * fG0)) + ((long) ((this.f19785i - 1.0f) * fG0)))};
            jC0 = jArr[0];
            for (int i10 = 1; i10 < 3; i10++) {
                long j15 = jArr[i10];
                if (j15 > jC0) {
                    jC0 = j15;
                }
            }
            this.f19784h = jC0;
        } else {
            jC0 = zzew.c0(j10 - ((long) (Math.max(0.0f, this.f19787k - 1.0f) / 1.0E-7f)), this.f19784h, j14);
            this.f19784h = jC0;
            long j16 = this.f19783g;
            if (j16 != -9223372036854775807L && jC0 > j16) {
                this.f19784h = j16;
                jC0 = j16;
            }
        }
        long j17 = j10 - jC0;
        if (Math.abs(j17) < this.f19777a) {
            this.f19787k = 1.0f;
            return 1.0f;
        }
        float fA = zzew.A((j17 * 1.0E-7f) + 1.0f, this.f19786j, this.f19785i);
        this.f19787k = fA;
        return fA;
    }

    public final long b() {
        return this.f19784h;
    }

    public final void c() {
        long j10 = this.f19784h;
        if (j10 == -9223372036854775807L) {
            return;
        }
        long j11 = j10 + this.f19778b;
        this.f19784h = j11;
        long j12 = this.f19783g;
        if (j12 != -9223372036854775807L && j11 > j12) {
            this.f19784h = j12;
        }
        this.f19788l = -9223372036854775807L;
    }

    public final void d(zzaw zzawVar) {
        long j10 = zzawVar.f10054a;
        this.f19779c = zzew.g0(-9223372036854775807L);
        this.f19782f = zzew.g0(-9223372036854775807L);
        this.f19783g = zzew.g0(-9223372036854775807L);
        this.f19786j = 0.97f;
        this.f19785i = 1.03f;
        g();
    }

    public final void e(long j10) {
        this.f19780d = j10;
        g();
    }
}
