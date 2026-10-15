package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaew {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long[] f8701d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f8702a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f8703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8704c;

    public static int b(int i10) {
        int i11 = 0;
        while (i11 < 8) {
            long j10 = f8701d[i11] & ((long) i10);
            i11++;
            if (j10 != 0) {
                return i11;
            }
        }
        return -1;
    }

    public static long c(byte[] bArr, int i10, boolean z10) {
        long j10 = ((long) bArr[0]) & 255;
        if (z10) {
            j10 &= f8701d[i10 - 1] ^ (-1);
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (((long) bArr[i11]) & 255);
        }
        return j10;
    }

    public final int a() {
        return this.f8704c;
    }

    public final long d(zzzv zzzvVar, boolean z10, boolean z11, int i10) throws IOException {
        if (this.f8703b == 0) {
            if (!zzzvVar.g(this.f8702a, 0, 1, z10)) {
                return -1L;
            }
            int iB = b(this.f8702a[0] & 255);
            this.f8704c = iB;
            if (iB == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f8703b = 1;
        }
        int i11 = this.f8704c;
        if (i11 > i10) {
            this.f8703b = 0;
            return -2L;
        }
        if (i11 != 1) {
            ((zzzk) zzzvVar).g(this.f8702a, 1, i11 - 1, false);
        }
        this.f8703b = 0;
        return c(this.f8702a, this.f8704c, z11);
    }

    public final void e() {
        this.f8703b = 0;
        this.f8704c = 0;
    }
}
