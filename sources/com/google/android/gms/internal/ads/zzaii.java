package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaii {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9254e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeu f9250a = new zzeu(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f9255f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f9256g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f9257h = -9223372036854775807L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9251b = new zzen();

    zzaii() {
    }

    public static long c(zzen zzenVar) {
        int iK = zzenVar.k();
        if (zzenVar.i() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        zzenVar.b(bArr, 0, 9);
        zzenVar.f(iK);
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return -9223372036854775807L;
        }
        long j10 = bArr[0];
        long j11 = bArr[1];
        long j12 = bArr[2];
        return ((bArr[3] & 255) << 5) | (((j10 & 56) >> 3) << 30) | ((j10 & 3) << 28) | ((j11 & 255) << 20) | (((j12 & 248) >> 3) << 15) | ((j12 & 3) << 13) | ((((long) bArr[4]) & 248) >> 3);
    }

    private final int f(zzzv zzzvVar) {
        zzen zzenVar = this.f9251b;
        byte[] bArr = zzew.f17499f;
        int length = bArr.length;
        zzenVar.d(bArr, 0);
        this.f9252c = true;
        zzzvVar.h();
        return 0;
    }

    private static final int g(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public final int a(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        long j10 = -9223372036854775807L;
        if (!this.f9254e) {
            long jD = zzzvVar.d();
            int iMin = (int) Math.min(20000L, jD);
            long j11 = jD - ((long) iMin);
            if (zzzvVar.c() != j11) {
                zzaauVar.f8348a = j11;
                return 1;
            }
            this.f9251b.c(iMin);
            zzzvVar.h();
            ((zzzk) zzzvVar).k(this.f9251b.h(), 0, iMin, false);
            zzen zzenVar = this.f9251b;
            int iK = zzenVar.k();
            int iL = zzenVar.l() - 4;
            while (true) {
                if (iL < iK) {
                    break;
                }
                if (g(zzenVar.h(), iL) == 442) {
                    zzenVar.f(iL + 4);
                    long jC = c(zzenVar);
                    if (jC != -9223372036854775807L) {
                        j10 = jC;
                        break;
                    }
                }
                iL--;
            }
            this.f9256g = j10;
            this.f9254e = true;
            return 0;
        }
        if (this.f9256g == -9223372036854775807L) {
            f(zzzvVar);
            return 0;
        }
        if (this.f9253d) {
            long j12 = this.f9255f;
            if (j12 == -9223372036854775807L) {
                f(zzzvVar);
                return 0;
            }
            long jB = this.f9250a.b(this.f9256g) - this.f9250a.b(j12);
            this.f9257h = jB;
            if (jB < 0) {
                zzee.e("PsDurationReader", "Invalid duration: " + jB + ". Using TIME_UNSET instead.");
                this.f9257h = -9223372036854775807L;
            }
            f(zzzvVar);
            return 0;
        }
        int iMin2 = (int) Math.min(20000L, zzzvVar.d());
        if (zzzvVar.c() != 0) {
            zzaauVar.f8348a = 0L;
            return 1;
        }
        this.f9251b.c(iMin2);
        zzzvVar.h();
        ((zzzk) zzzvVar).k(this.f9251b.h(), 0, iMin2, false);
        zzen zzenVar2 = this.f9251b;
        int iK2 = zzenVar2.k();
        int iL2 = zzenVar2.l();
        while (true) {
            if (iK2 >= iL2 - 3) {
                break;
            }
            if (g(zzenVar2.h(), iK2) == 442) {
                zzenVar2.f(iK2 + 4);
                long jC2 = c(zzenVar2);
                if (jC2 != -9223372036854775807L) {
                    j10 = jC2;
                    break;
                }
            }
            iK2++;
        }
        this.f9255f = j10;
        this.f9253d = true;
        return 0;
    }

    public final long b() {
        return this.f9257h;
    }

    public final zzeu d() {
        return this.f9250a;
    }

    public final boolean e() {
        return this.f9252c;
    }
}
