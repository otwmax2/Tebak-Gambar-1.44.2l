package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaev {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f8699a = new zzen(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f8700b;

    private final long b(zzzv zzzvVar) throws IOException {
        zzzk zzzkVar = (zzzk) zzzvVar;
        int i10 = 0;
        zzzkVar.k(this.f8699a.h(), 0, 1, false);
        int i11 = this.f8699a.h()[0] & 255;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (i12 ^ (-1));
        zzzkVar.k(this.f8699a.h(), 1, i13, false);
        while (i10 < i13) {
            i10++;
            i14 = (this.f8699a.h()[i10] & 255) + (i14 << 8);
        }
        this.f8700b += i13 + 1;
        return i14;
    }

    public final boolean a(zzzv zzzvVar) throws IOException {
        long jD = zzzvVar.d();
        long j10 = 1024;
        if (jD != -1 && jD <= 1024) {
            j10 = jD;
        }
        zzzk zzzkVar = (zzzk) zzzvVar;
        zzzkVar.k(this.f8699a.h(), 0, 4, false);
        long jA = this.f8699a.A();
        this.f8700b = 4;
        while (jA != 440786851) {
            int i10 = (int) j10;
            int i11 = this.f8700b + 1;
            this.f8700b = i11;
            if (i11 == i10) {
                return false;
            }
            zzzkVar.k(this.f8699a.h(), 0, 1, false);
            jA = ((jA << 8) & (-256)) | ((long) (this.f8699a.h()[0] & 255));
        }
        long jB = b(zzzvVar);
        long j11 = this.f8700b;
        if (jB != Long.MIN_VALUE && (jD == -1 || j11 + jB < jD)) {
            while (true) {
                long j12 = this.f8700b;
                long j13 = j11 + jB;
                if (j12 < j13) {
                    if (b(zzzvVar) == Long.MIN_VALUE) {
                        return false;
                    }
                    long jB2 = b(zzzvVar);
                    if (jB2 < 0) {
                        return false;
                    }
                    if (jB2 != 0) {
                        int i12 = (int) jB2;
                        zzzkVar.n(i12, false);
                        this.f8700b += i12;
                    }
                } else if (j12 == j13) {
                    return true;
                }
            }
        }
        return false;
    }
}
