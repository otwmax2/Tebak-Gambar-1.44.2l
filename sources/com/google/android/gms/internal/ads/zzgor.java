package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgor {
    static int a(byte[] bArr, int i10, zzgoq zzgoqVar) throws zzgqy {
        int iJ = j(bArr, i10, zzgoqVar);
        int i11 = zzgoqVar.f19360a;
        if (i11 < 0) {
            throw zzgqy.f();
        }
        if (i11 > bArr.length - iJ) {
            throw zzgqy.j();
        }
        if (i11 == 0) {
            zzgoqVar.f19362c = zzgpe.f19379p;
            return iJ;
        }
        zzgoqVar.f19362c = zzgpe.L(bArr, iJ, i11);
        return iJ + i11;
    }

    static int b(byte[] bArr, int i10) {
        int i11 = bArr[i10] & 255;
        int i12 = bArr[i10 + 1] & 255;
        int i13 = bArr[i10 + 2] & 255;
        return ((bArr[i10 + 3] & 255) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    static int c(zzgsp zzgspVar, byte[] bArr, int i10, int i11, int i12, zzgoq zzgoqVar) throws IOException {
        Object objB = zzgspVar.b();
        int iN = n(objB, zzgspVar, bArr, i10, i11, i12, zzgoqVar);
        zzgspVar.e(objB);
        zzgoqVar.f19362c = objB;
        return iN;
    }

    static int d(zzgsp zzgspVar, byte[] bArr, int i10, int i11, zzgoq zzgoqVar) throws IOException {
        Object objB = zzgspVar.b();
        int iO = o(objB, zzgspVar, bArr, i10, i11, zzgoqVar);
        zzgspVar.e(objB);
        zzgoqVar.f19362c = objB;
        return iO;
    }

    static int e(zzgsp zzgspVar, int i10, byte[] bArr, int i11, int i12, zzgqv zzgqvVar, zzgoq zzgoqVar) throws IOException {
        int iD = d(zzgspVar, bArr, i11, i12, zzgoqVar);
        zzgqvVar.add(zzgoqVar.f19362c);
        while (iD < i12) {
            int iJ = j(bArr, iD, zzgoqVar);
            if (i10 != zzgoqVar.f19360a) {
                break;
            }
            iD = d(zzgspVar, bArr, iJ, i12, zzgoqVar);
            zzgqvVar.add(zzgoqVar.f19362c);
        }
        return iD;
    }

    static int f(byte[] bArr, int i10, zzgqv zzgqvVar, zzgoq zzgoqVar) throws IOException {
        zzgqn zzgqnVar = (zzgqn) zzgqvVar;
        int iJ = j(bArr, i10, zzgoqVar);
        int i11 = zzgoqVar.f19360a + iJ;
        while (iJ < i11) {
            iJ = j(bArr, iJ, zzgoqVar);
            zzgqnVar.j0(zzgoqVar.f19360a);
        }
        if (iJ == i11) {
            return iJ;
        }
        throw zzgqy.j();
    }

    static int g(byte[] bArr, int i10, zzgoq zzgoqVar) throws zzgqy {
        int iJ = j(bArr, i10, zzgoqVar);
        int i11 = zzgoqVar.f19360a;
        if (i11 < 0) {
            throw zzgqy.f();
        }
        if (i11 == 0) {
            zzgoqVar.f19362c = BuildConfig.FLAVOR;
            return iJ;
        }
        zzgoqVar.f19362c = new String(bArr, iJ, i11, zzgqw.f19490b);
        return iJ + i11;
    }

    static int h(byte[] bArr, int i10, zzgoq zzgoqVar) throws zzgqy {
        int iJ = j(bArr, i10, zzgoqVar);
        int i11 = zzgoqVar.f19360a;
        if (i11 < 0) {
            throw zzgqy.f();
        }
        if (i11 == 0) {
            zzgoqVar.f19362c = BuildConfig.FLAVOR;
            return iJ;
        }
        zzgoqVar.f19362c = zzgtv.h(bArr, iJ, i11);
        return iJ + i11;
    }

    static int i(int i10, byte[] bArr, int i11, int i12, zzgth zzgthVar, zzgoq zzgoqVar) throws zzgqy {
        if ((i10 >>> 3) == 0) {
            throw zzgqy.c();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int iM = m(bArr, i11, zzgoqVar);
            zzgthVar.j(i10, Long.valueOf(zzgoqVar.f19361b));
            return iM;
        }
        if (i13 == 1) {
            zzgthVar.j(i10, Long.valueOf(p(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int iJ = j(bArr, i11, zzgoqVar);
            int i14 = zzgoqVar.f19360a;
            if (i14 < 0) {
                throw zzgqy.f();
            }
            if (i14 > bArr.length - iJ) {
                throw zzgqy.j();
            }
            if (i14 == 0) {
                zzgthVar.j(i10, zzgpe.f19379p);
            } else {
                zzgthVar.j(i10, zzgpe.L(bArr, iJ, i14));
            }
            return iJ + i14;
        }
        if (i13 != 3) {
            if (i13 != 5) {
                throw zzgqy.c();
            }
            zzgthVar.j(i10, Integer.valueOf(b(bArr, i11)));
            return i11 + 4;
        }
        int i15 = (i10 & (-8)) | 4;
        zzgth zzgthVarF = zzgth.f();
        int i16 = 0;
        while (true) {
            if (i11 >= i12) {
                break;
            }
            int iJ2 = j(bArr, i11, zzgoqVar);
            int i17 = zzgoqVar.f19360a;
            i16 = i17;
            if (i17 == i15) {
                i11 = iJ2;
                break;
            }
            int i18 = i(i16, bArr, iJ2, i12, zzgthVarF, zzgoqVar);
            i16 = i17;
            i11 = i18;
        }
        if (i11 > i12 || i16 != i15) {
            throw zzgqy.g();
        }
        zzgthVar.j(i10, zzgthVarF);
        return i11;
    }

    static int j(byte[] bArr, int i10, zzgoq zzgoqVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return k(b10, bArr, i11, zzgoqVar);
        }
        zzgoqVar.f19360a = b10;
        return i11;
    }

    static int k(int i10, byte[] bArr, int i11, zzgoq zzgoqVar) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            zzgoqVar.f19360a = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & 127) << 7);
        int i15 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            zzgoqVar.f19360a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & 127) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzgoqVar.f19360a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & 127) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzgoqVar.f19360a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                zzgoqVar.f19360a = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int l(int i10, byte[] bArr, int i11, int i12, zzgqv zzgqvVar, zzgoq zzgoqVar) {
        zzgqn zzgqnVar = (zzgqn) zzgqvVar;
        int iJ = j(bArr, i11, zzgoqVar);
        zzgqnVar.j0(zzgoqVar.f19360a);
        while (iJ < i12) {
            int iJ2 = j(bArr, iJ, zzgoqVar);
            if (i10 != zzgoqVar.f19360a) {
                break;
            }
            iJ = j(bArr, iJ2, zzgoqVar);
            zzgqnVar.j0(zzgoqVar.f19360a);
        }
        return iJ;
    }

    static int m(byte[] bArr, int i10, zzgoq zzgoqVar) {
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            zzgoqVar.f19361b = j10;
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
            i12 = i14;
            b10 = b11;
        }
        zzgoqVar.f19361b = j11;
        return i12;
    }

    static int n(Object obj, zzgsp zzgspVar, byte[] bArr, int i10, int i11, int i12, zzgoq zzgoqVar) throws IOException {
        int iK = ((zzgrz) zzgspVar).K(obj, bArr, i10, i11, i12, zzgoqVar);
        zzgoqVar.f19362c = obj;
        return iK;
    }

    static int o(Object obj, zzgsp zzgspVar, byte[] bArr, int i10, int i11, zzgoq zzgoqVar) throws IOException {
        int iK = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iK = k(i12, bArr, iK, zzgoqVar);
            i12 = zzgoqVar.f19360a;
        }
        int i13 = iK;
        if (i12 < 0 || i12 > i11 - i13) {
            throw zzgqy.j();
        }
        int i14 = i12 + i13;
        zzgspVar.h(obj, bArr, i13, i14, zzgoqVar);
        zzgoqVar.f19362c = obj;
        return i14;
    }

    static long p(byte[] bArr, int i10) {
        return (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48) | ((((long) bArr[i10 + 7]) & 255) << 56);
    }
}
