package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzip {
    static int a(byte[] bArr, int i10, zzio zzioVar) throws zzkm {
        int iJ = j(bArr, i10, zzioVar);
        int i11 = zzioVar.f23576a;
        if (i11 < 0) {
            throw zzkm.d();
        }
        if (i11 > bArr.length - iJ) {
            throw zzkm.f();
        }
        if (i11 == 0) {
            zzioVar.f23578c = zzjb.f23589p;
            return iJ;
        }
        zzioVar.f23578c = zzjb.q(bArr, iJ, i11);
        return iJ + i11;
    }

    static int b(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    static int c(zzlu zzluVar, byte[] bArr, int i10, int i11, int i12, zzio zzioVar) throws IOException {
        zzlm zzlmVar = (zzlm) zzluVar;
        Object objB = zzlmVar.b();
        int iD = zzlmVar.D(objB, bArr, i10, i11, i12, zzioVar);
        zzlmVar.e(objB);
        zzioVar.f23578c = objB;
        return iD;
    }

    static int d(zzlu zzluVar, byte[] bArr, int i10, int i11, zzio zzioVar) throws IOException {
        int iK = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iK = k(i12, bArr, iK, zzioVar);
            i12 = zzioVar.f23576a;
        }
        int i13 = iK;
        if (i12 < 0 || i12 > i11 - i13) {
            throw zzkm.f();
        }
        Object objB = zzluVar.b();
        int i14 = i12 + i13;
        zzluVar.h(objB, bArr, i13, i14, zzioVar);
        zzluVar.e(objB);
        zzioVar.f23578c = objB;
        return i14;
    }

    static int e(zzlu zzluVar, int i10, byte[] bArr, int i11, int i12, zzkj zzkjVar, zzio zzioVar) throws IOException {
        int iD = d(zzluVar, bArr, i11, i12, zzioVar);
        zzkjVar.add(zzioVar.f23578c);
        while (iD < i12) {
            int iJ = j(bArr, iD, zzioVar);
            if (i10 != zzioVar.f23576a) {
                break;
            }
            iD = d(zzluVar, bArr, iJ, i12, zzioVar);
            zzkjVar.add(zzioVar.f23578c);
        }
        return iD;
    }

    static int f(byte[] bArr, int i10, zzkj zzkjVar, zzio zzioVar) throws IOException {
        zzkd zzkdVar = (zzkd) zzkjVar;
        int iJ = j(bArr, i10, zzioVar);
        int i11 = zzioVar.f23576a + iJ;
        while (iJ < i11) {
            iJ = j(bArr, iJ, zzioVar);
            zzkdVar.j0(zzioVar.f23576a);
        }
        if (iJ == i11) {
            return iJ;
        }
        throw zzkm.f();
    }

    static int g(byte[] bArr, int i10, zzio zzioVar) throws zzkm {
        int iJ = j(bArr, i10, zzioVar);
        int i11 = zzioVar.f23576a;
        if (i11 < 0) {
            throw zzkm.d();
        }
        if (i11 == 0) {
            zzioVar.f23578c = BuildConfig.FLAVOR;
            return iJ;
        }
        zzioVar.f23578c = new String(bArr, iJ, i11, zzkk.f23664b);
        return iJ + i11;
    }

    static int h(byte[] bArr, int i10, zzio zzioVar) throws zzkm {
        int iJ = j(bArr, i10, zzioVar);
        int i11 = zzioVar.f23576a;
        if (i11 < 0) {
            throw zzkm.d();
        }
        if (i11 == 0) {
            zzioVar.f23578c = BuildConfig.FLAVOR;
            return iJ;
        }
        zzioVar.f23578c = zzna.d(bArr, iJ, i11);
        return iJ + i11;
    }

    static int i(int i10, byte[] bArr, int i11, int i12, zzmm zzmmVar, zzio zzioVar) throws zzkm {
        if ((i10 >>> 3) == 0) {
            throw zzkm.b();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int iM = m(bArr, i11, zzioVar);
            zzmmVar.h(i10, Long.valueOf(zzioVar.f23577b));
            return iM;
        }
        if (i13 == 1) {
            zzmmVar.h(i10, Long.valueOf(n(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int iJ = j(bArr, i11, zzioVar);
            int i14 = zzioVar.f23576a;
            if (i14 < 0) {
                throw zzkm.d();
            }
            if (i14 > bArr.length - iJ) {
                throw zzkm.f();
            }
            if (i14 == 0) {
                zzmmVar.h(i10, zzjb.f23589p);
            } else {
                zzmmVar.h(i10, zzjb.q(bArr, iJ, i14));
            }
            return iJ + i14;
        }
        if (i13 != 3) {
            if (i13 != 5) {
                throw zzkm.b();
            }
            zzmmVar.h(i10, Integer.valueOf(b(bArr, i11)));
            return i11 + 4;
        }
        int i15 = (i10 & (-8)) | 4;
        zzmm zzmmVarE = zzmm.e();
        int i16 = 0;
        while (true) {
            if (i11 >= i12) {
                break;
            }
            int iJ2 = j(bArr, i11, zzioVar);
            int i17 = zzioVar.f23576a;
            if (i17 == i15) {
                i16 = i17;
                i11 = iJ2;
                break;
            }
            i16 = i17;
            i11 = i(i17, bArr, iJ2, i12, zzmmVarE, zzioVar);
        }
        if (i11 > i12 || i16 != i15) {
            throw zzkm.e();
        }
        zzmmVar.h(i10, zzmmVarE);
        return i11;
    }

    static int j(byte[] bArr, int i10, zzio zzioVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return k(b10, bArr, i11, zzioVar);
        }
        zzioVar.f23576a = b10;
        return i11;
    }

    static int k(int i10, byte[] bArr, int i11, zzio zzioVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            zzioVar.f23576a = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & 127) << 7);
        int i15 = i13 + 1;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            zzioVar.f23576a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & 127) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzioVar.f23576a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & 127) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzioVar.f23576a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                zzioVar.f23576a = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int l(int i10, byte[] bArr, int i11, int i12, zzkj zzkjVar, zzio zzioVar) {
        zzkd zzkdVar = (zzkd) zzkjVar;
        int iJ = j(bArr, i11, zzioVar);
        zzkdVar.j0(zzioVar.f23576a);
        while (iJ < i12) {
            int iJ2 = j(bArr, iJ, zzioVar);
            if (i10 != zzioVar.f23576a) {
                break;
            }
            iJ = j(bArr, iJ2, zzioVar);
            zzkdVar.j0(zzioVar.f23576a);
        }
        return iJ;
    }

    static int m(byte[] bArr, int i10, zzio zzioVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            zzioVar.f23577b = j10;
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
        zzioVar.f23577b = j11;
        return i12;
    }

    static long n(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }
}
