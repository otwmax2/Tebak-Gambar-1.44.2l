package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzair {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9292e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeu f9288a = new zzeu(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f9293f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f9294g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f9295h = -9223372036854775807L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9289b = new zzen();

    zzair(int i10) {
    }

    private final int e(zzzv zzzvVar) {
        zzen zzenVar = this.f9289b;
        byte[] bArr = zzew.f17499f;
        int length = bArr.length;
        zzenVar.d(bArr, 0);
        this.f9290c = true;
        zzzvVar.h();
        return 0;
    }

    public final int a(zzzv zzzvVar, zzaau zzaauVar, int i10) throws IOException {
        if (i10 <= 0) {
            e(zzzvVar);
            return 0;
        }
        long j10 = -9223372036854775807L;
        if (!this.f9292e) {
            long jD = zzzvVar.d();
            int iMin = (int) Math.min(112800L, jD);
            long j11 = jD - ((long) iMin);
            if (zzzvVar.c() != j11) {
                zzaauVar.f8348a = j11;
                return 1;
            }
            this.f9289b.c(iMin);
            zzzvVar.h();
            ((zzzk) zzzvVar).k(this.f9289b.h(), 0, iMin, false);
            zzen zzenVar = this.f9289b;
            int iK = zzenVar.k();
            int iL = zzenVar.l();
            int i11 = iL - 188;
            while (true) {
                if (i11 < iK) {
                    break;
                }
                byte[] bArrH = zzenVar.h();
                int i12 = -4;
                int i13 = 0;
                while (true) {
                    if (i12 > 4) {
                        break;
                    }
                    int i14 = (i12 * 188) + i11;
                    if (i14 < iK || i14 >= iL || bArrH[i14] != 71) {
                        i13 = 0;
                    } else {
                        i13++;
                        if (i13 == 5) {
                            long jB = zzajb.b(zzenVar, i11, i10);
                            if (jB != -9223372036854775807L) {
                                j10 = jB;
                                break;
                            }
                        }
                    }
                    i12++;
                }
                i11--;
            }
            this.f9294g = j10;
            this.f9292e = true;
            return 0;
        }
        if (this.f9294g == -9223372036854775807L) {
            e(zzzvVar);
            return 0;
        }
        if (this.f9291d) {
            long j12 = this.f9293f;
            if (j12 == -9223372036854775807L) {
                e(zzzvVar);
                return 0;
            }
            long jB2 = this.f9288a.b(this.f9294g) - this.f9288a.b(j12);
            this.f9295h = jB2;
            if (jB2 < 0) {
                zzee.e("TsDurationReader", "Invalid duration: " + jB2 + ". Using TIME_UNSET instead.");
                this.f9295h = -9223372036854775807L;
            }
            e(zzzvVar);
            return 0;
        }
        int iMin2 = (int) Math.min(112800L, zzzvVar.d());
        if (zzzvVar.c() != 0) {
            zzaauVar.f8348a = 0L;
            return 1;
        }
        this.f9289b.c(iMin2);
        zzzvVar.h();
        ((zzzk) zzzvVar).k(this.f9289b.h(), 0, iMin2, false);
        zzen zzenVar2 = this.f9289b;
        int iK2 = zzenVar2.k();
        int iL2 = zzenVar2.l();
        while (true) {
            if (iK2 >= iL2) {
                break;
            }
            if (zzenVar2.h()[iK2] == 71) {
                long jB3 = zzajb.b(zzenVar2, iK2, i10);
                if (jB3 != -9223372036854775807L) {
                    j10 = jB3;
                    break;
                }
            }
            iK2++;
        }
        this.f9293f = j10;
        this.f9291d = true;
        return 0;
    }

    public final long b() {
        return this.f9295h;
    }

    public final zzeu c() {
        return this.f9288a;
    }

    public final boolean d() {
        return this.f9290c;
    }
}
