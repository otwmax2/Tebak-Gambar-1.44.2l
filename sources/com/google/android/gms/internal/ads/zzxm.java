package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzxm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f21018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f21019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f21020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f21021d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f21022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f21023f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean[] f21024g = new boolean[15];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f21025h;

    public final long a() {
        long j10 = this.f21022e;
        if (j10 == 0) {
            return 0L;
        }
        return this.f21023f / j10;
    }

    public final long b() {
        return this.f21023f;
    }

    public final void c(long j10) {
        long j11 = this.f21021d;
        if (j11 == 0) {
            this.f21018a = j10;
        } else if (j11 == 1) {
            long j12 = j10 - this.f21018a;
            this.f21019b = j12;
            this.f21023f = j12;
            this.f21022e = 1L;
        } else {
            long j13 = j10 - this.f21020c;
            int i10 = (int) (j11 % 15);
            if (Math.abs(j13 - this.f21019b) <= 1000000) {
                this.f21022e++;
                this.f21023f += j13;
                boolean[] zArr = this.f21024g;
                if (zArr[i10]) {
                    zArr[i10] = false;
                    this.f21025h--;
                }
            } else {
                boolean[] zArr2 = this.f21024g;
                if (!zArr2[i10]) {
                    zArr2[i10] = true;
                    this.f21025h++;
                }
            }
        }
        this.f21021d++;
        this.f21020c = j10;
    }

    public final void d() {
        this.f21021d = 0L;
        this.f21022e = 0L;
        this.f21023f = 0L;
        this.f21025h = 0;
        Arrays.fill(this.f21024g, false);
    }

    public final boolean e() {
        long j10 = this.f21021d;
        if (j10 == 0) {
            return false;
        }
        return this.f21024g[(int) ((j10 - 1) % 15)];
    }

    public final boolean f() {
        return this.f21021d > 15 && this.f21025h == 0;
    }
}
