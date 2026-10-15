package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaad {
    public static int a(zzen zzenVar, int i10) {
        switch (i10) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return zzenVar.s() + 1;
            case 7:
                return zzenVar.w() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i10 - 8);
            default:
                return -1;
        }
    }

    public static long b(zzzv zzzvVar, zzaah zzaahVar) throws IOException {
        zzzvVar.h();
        zzzk zzzkVar = (zzzk) zzzvVar;
        zzzkVar.n(1, false);
        byte[] bArr = new byte[1];
        zzzkVar.k(bArr, 0, 1, false);
        int i10 = bArr[0] & 1;
        boolean z10 = 1 == i10;
        zzzkVar.n(2, false);
        int i11 = 1 != i10 ? 6 : 7;
        zzen zzenVar = new zzen(i11);
        zzenVar.e(zzzy.a(zzzvVar, zzenVar.h(), 0, i11));
        zzzvVar.h();
        zzaac zzaacVar = new zzaac();
        if (d(zzenVar, zzaahVar, z10, zzaacVar)) {
            return zzaacVar.f8288a;
        }
        throw zzbu.a(null, null);
    }

    public static boolean c(zzen zzenVar, zzaah zzaahVar, int i10, zzaac zzaacVar) {
        int iA;
        int iK = zzenVar.k();
        long jA = zzenVar.A();
        long j10 = jA >>> 16;
        if (j10 != i10) {
            return false;
        }
        boolean z10 = (j10 & 1) == 1;
        long j11 = jA >> 12;
        long j12 = jA >> 8;
        long j13 = jA >> 4;
        long j14 = jA >> 1;
        long j15 = jA & 1;
        int i11 = (int) (j13 & 15);
        if (i11 <= 7) {
            if (i11 != zzaahVar.f8299g - 1) {
                return false;
            }
        } else if (i11 > 10 || zzaahVar.f8299g != 2) {
            return false;
        }
        int i12 = (int) (j14 & 7);
        if (!(i12 == 0 || i12 == zzaahVar.f8301i) || j15 == 1 || !d(zzenVar, zzaahVar, z10, zzaacVar) || (iA = a(zzenVar, (int) (j11 & 15))) == -1 || iA > zzaahVar.f8294b) {
            return false;
        }
        int i13 = zzaahVar.f8297e;
        int i14 = (int) (j12 & 15);
        if (i14 != 0) {
            if (i14 <= 11) {
                if (i14 != zzaahVar.f8298f) {
                    return false;
                }
            } else if (i14 == 12) {
                if (zzenVar.s() * 1000 != i13) {
                    return false;
                }
            } else {
                if (i14 > 14) {
                    return false;
                }
                int iW = zzenVar.w();
                if (i14 == 14) {
                    iW *= 10;
                }
                if (iW != i13) {
                    return false;
                }
            }
        }
        return zzenVar.s() == zzew.S(zzenVar.h(), iK, zzenVar.k() + (-1), 0);
    }

    private static boolean d(zzen zzenVar, zzaah zzaahVar, boolean z10, zzaac zzaacVar) {
        try {
            long jC = zzenVar.C();
            if (!z10) {
                jC *= (long) zzaahVar.f8294b;
            }
            zzaacVar.f8288a = jC;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
