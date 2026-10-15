package com.google.android.gms.internal.auth;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdq {
    static int a(byte[] bArr, int i10, zzdp zzdpVar) throws zzew {
        int iJ = j(bArr, i10, zzdpVar);
        int i11 = zzdpVar.f21450a;
        if (i11 < 0) {
            throw zzew.c();
        }
        if (i11 > bArr.length - iJ) {
            throw zzew.f();
        }
        if (i11 == 0) {
            zzdpVar.f21452c = zzeb.f21462p;
            return iJ;
        }
        zzdpVar.f21452c = zzeb.p(bArr, iJ, i11);
        return iJ + i11;
    }

    static int b(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    static int c(zzgb zzgbVar, byte[] bArr, int i10, int i11, int i12, zzdp zzdpVar) throws IOException {
        zzft zzftVar = (zzft) zzgbVar;
        Object objD = zzftVar.d();
        int iR = zzftVar.r(objD, bArr, i10, i11, i12, zzdpVar);
        zzftVar.b(objD);
        zzdpVar.f21452c = objD;
        return iR;
    }

    static int d(zzgb zzgbVar, byte[] bArr, int i10, int i11, zzdp zzdpVar) throws IOException {
        int iK = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iK = k(i12, bArr, iK, zzdpVar);
            i12 = zzdpVar.f21450a;
        }
        int i13 = iK;
        if (i12 < 0 || i12 > i11 - i13) {
            throw zzew.f();
        }
        Object objD = zzgbVar.d();
        int i14 = i12 + i13;
        zzgbVar.g(objD, bArr, i13, i14, zzdpVar);
        zzgbVar.b(objD);
        zzdpVar.f21452c = objD;
        return i14;
    }

    static int e(zzgb<?> zzgbVar, int i10, byte[] bArr, int i11, int i12, zzeu<?> zzeuVar, zzdp zzdpVar) throws IOException {
        int iD = d(zzgbVar, bArr, i11, i12, zzdpVar);
        zzeuVar.add(zzdpVar.f21452c);
        while (iD < i12) {
            int iJ = j(bArr, iD, zzdpVar);
            if (i10 != zzdpVar.f21450a) {
                break;
            }
            iD = d(zzgbVar, bArr, iJ, i12, zzdpVar);
            zzeuVar.add(zzdpVar.f21452c);
        }
        return iD;
    }

    static int f(byte[] bArr, int i10, zzeu<?> zzeuVar, zzdp zzdpVar) throws IOException {
        zzer zzerVar = (zzer) zzeuVar;
        int iJ = j(bArr, i10, zzdpVar);
        int i11 = zzdpVar.f21450a + iJ;
        while (iJ < i11) {
            iJ = j(bArr, iJ, zzdpVar);
            zzerVar.g(zzdpVar.f21450a);
        }
        if (iJ == i11) {
            return iJ;
        }
        throw zzew.f();
    }

    static int g(byte[] bArr, int i10, zzdp zzdpVar) throws zzew {
        int iJ = j(bArr, i10, zzdpVar);
        int i11 = zzdpVar.f21450a;
        if (i11 < 0) {
            throw zzew.c();
        }
        if (i11 == 0) {
            zzdpVar.f21452c = BuildConfig.FLAVOR;
            return iJ;
        }
        zzdpVar.f21452c = new String(bArr, iJ, i11, zzev.f21493a);
        return iJ + i11;
    }

    static int h(byte[] bArr, int i10, zzdp zzdpVar) throws zzew {
        int iJ = j(bArr, i10, zzdpVar);
        int i11 = zzdpVar.f21450a;
        if (i11 < 0) {
            throw zzew.c();
        }
        if (i11 == 0) {
            zzdpVar.f21452c = BuildConfig.FLAVOR;
            return iJ;
        }
        zzdpVar.f21452c = zzhd.b(bArr, iJ, i11);
        return iJ + i11;
    }

    static int i(int i10, byte[] bArr, int i11, int i12, zzgq zzgqVar, zzdp zzdpVar) throws zzew {
        if ((i10 >>> 3) == 0) {
            throw zzew.a();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int iM = m(bArr, i11, zzdpVar);
            zzgqVar.f(i10, Long.valueOf(zzdpVar.f21451b));
            return iM;
        }
        if (i13 == 1) {
            zzgqVar.f(i10, Long.valueOf(n(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int iJ = j(bArr, i11, zzdpVar);
            int i14 = zzdpVar.f21450a;
            if (i14 < 0) {
                throw zzew.c();
            }
            if (i14 > bArr.length - iJ) {
                throw zzew.f();
            }
            if (i14 == 0) {
                zzgqVar.f(i10, zzeb.f21462p);
            } else {
                zzgqVar.f(i10, zzeb.p(bArr, iJ, i14));
            }
            return iJ + i14;
        }
        if (i13 != 3) {
            if (i13 != 5) {
                throw zzew.a();
            }
            zzgqVar.f(i10, Integer.valueOf(b(bArr, i11)));
            return i11 + 4;
        }
        int i15 = (i10 & (-8)) | 4;
        zzgq zzgqVarC = zzgq.c();
        int i16 = 0;
        while (true) {
            if (i11 >= i12) {
                break;
            }
            int iJ2 = j(bArr, i11, zzdpVar);
            int i17 = zzdpVar.f21450a;
            if (i17 == i15) {
                i16 = i17;
                i11 = iJ2;
                break;
            }
            i16 = i17;
            i11 = i(i17, bArr, iJ2, i12, zzgqVarC, zzdpVar);
        }
        if (i11 > i12 || i16 != i15) {
            throw zzew.d();
        }
        zzgqVar.f(i10, zzgqVarC);
        return i11;
    }

    static int j(byte[] bArr, int i10, zzdp zzdpVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return k(b10, bArr, i11, zzdpVar);
        }
        zzdpVar.f21450a = b10;
        return i11;
    }

    static int k(int i10, byte[] bArr, int i11, zzdp zzdpVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            zzdpVar.f21450a = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & 127) << 7);
        int i15 = i13 + 1;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            zzdpVar.f21450a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & 127) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzdpVar.f21450a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & 127) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzdpVar.f21450a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                zzdpVar.f21450a = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int l(int i10, byte[] bArr, int i11, int i12, zzeu<?> zzeuVar, zzdp zzdpVar) {
        zzer zzerVar = (zzer) zzeuVar;
        int iJ = j(bArr, i11, zzdpVar);
        zzerVar.g(zzdpVar.f21450a);
        while (iJ < i12) {
            int iJ2 = j(bArr, iJ, zzdpVar);
            if (i10 != zzdpVar.f21450a) {
                break;
            }
            iJ = j(bArr, iJ2, zzdpVar);
            zzerVar.g(zzdpVar.f21450a);
        }
        return iJ;
    }

    static int m(byte[] bArr, int i10, zzdp zzdpVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            zzdpVar.f21451b = j10;
            return i11;
        }
        int i12 = i11 + 1;
        byte b10 = bArr[i11];
        long j11 = (j10 & 127) | (((long) (b10 & 127)) << 7);
        int i13 = 7;
        while (b10 < 0) {
            int i14 = i12 + 1;
            byte b11 = bArr[i12];
            i13 += 7;
            j11 |= ((long) (b11 & 127)) << i13;
            b10 = b11;
            i12 = i14;
        }
        zzdpVar.f21451b = j11;
        return i12;
    }

    static long n(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }
}
