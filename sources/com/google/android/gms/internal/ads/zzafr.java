package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f8809a = zzew.C("OpusHead");

    public static Pair a(zzafi zzafiVar) {
        zzen zzenVar = zzafiVar.f8779b;
        zzenVar.f(8);
        zzbq zzbqVar = null;
        zzbq zzbqVar2 = null;
        while (zzenVar.i() >= 8) {
            int iK = zzenVar.k();
            int iM = zzenVar.m();
            int iM2 = zzenVar.m();
            if (iM2 == 1835365473) {
                zzenVar.f(iK);
                int i10 = iK + iM;
                zzenVar.g(8);
                d(zzenVar);
                while (true) {
                    if (zzenVar.k() >= i10) {
                        break;
                    }
                    int iK2 = zzenVar.k();
                    int iM3 = zzenVar.m();
                    if (zzenVar.m() == 1768715124) {
                        zzenVar.f(iK2);
                        int i11 = iK2 + iM3;
                        zzenVar.g(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzenVar.k() < i11) {
                            zzbp zzbpVarA = zzafy.a(zzenVar);
                            if (zzbpVarA != null) {
                                arrayList.add(zzbpVarA);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            break;
                        }
                        zzbqVar = new zzbq(arrayList);
                    } else {
                        zzenVar.f(iK2 + iM3);
                    }
                }
                zzbqVar = null;
            } else if (iM2 == 1936553057) {
                zzenVar.f(iK);
                int i12 = iK + iM;
                zzenVar.g(12);
                while (true) {
                    if (zzenVar.k() >= i12) {
                        break;
                    }
                    int iK3 = zzenVar.k();
                    int iM4 = zzenVar.m();
                    if (zzenVar.m() != 1935766900) {
                        zzenVar.f(iK3 + iM4);
                    } else {
                        if (iM4 < 14) {
                            break;
                        }
                        zzenVar.g(5);
                        int iS = zzenVar.s();
                        float f10 = 120.0f;
                        if (iS != 12) {
                            if (iS != 13) {
                                break;
                            }
                        } else if (iS == 12) {
                            f10 = 240.0f;
                        }
                        zzenVar.g(1);
                        zzbqVar2 = new zzbq(-9223372036854775807L, new zzaei(f10, zzenVar.s()));
                    }
                }
                zzbqVar2 = null;
            }
            zzenVar.f(iK + iM);
        }
        return Pair.create(zzbqVar, zzbqVar2);
    }

    public static zzbq b(zzafh zzafhVar) {
        zzaec zzaecVar;
        zzafi zzafiVarD = zzafhVar.d(1751411826);
        zzafi zzafiVarD2 = zzafhVar.d(1801812339);
        zzafi zzafiVarD3 = zzafhVar.d(1768715124);
        if (zzafiVarD == null || zzafiVarD2 == null || zzafiVarD3 == null || g(zzafiVarD.f8779b) != 1835299937) {
            return null;
        }
        zzen zzenVar = zzafiVarD2.f8779b;
        zzenVar.f(12);
        int iM = zzenVar.m();
        String[] strArr = new String[iM];
        for (int i10 = 0; i10 < iM; i10++) {
            int iM2 = zzenVar.m();
            zzenVar.g(4);
            strArr[i10] = zzenVar.F(iM2 - 8, zzfnh.f18476c);
        }
        zzen zzenVar2 = zzafiVarD3.f8779b;
        zzenVar2.f(8);
        ArrayList arrayList = new ArrayList();
        while (zzenVar2.i() > 8) {
            int iK = zzenVar2.k();
            int iM3 = zzenVar2.m();
            int iM4 = zzenVar2.m() - 1;
            if (iM4 < 0 || iM4 >= iM) {
                zzee.e("AtomParsers", "Skipped metadata with unknown key index: " + iM4);
            } else {
                String str = strArr[iM4];
                int i11 = iK + iM3;
                int i12 = zzafy.f8858b;
                while (true) {
                    int iK2 = zzenVar2.k();
                    if (iK2 >= i11) {
                        zzaecVar = null;
                        break;
                    }
                    int iM5 = zzenVar2.m();
                    if (zzenVar2.m() == 1684108385) {
                        int iM6 = zzenVar2.m();
                        int iM7 = zzenVar2.m();
                        int i13 = iM5 - 16;
                        byte[] bArr = new byte[i13];
                        zzenVar2.b(bArr, 0, i13);
                        zzaecVar = new zzaec(str, bArr, iM7, iM6);
                        break;
                    }
                    zzenVar2.f(iK2 + iM5);
                }
                if (zzaecVar != null) {
                    arrayList.add(zzaecVar);
                }
            }
            zzenVar2.f(iK + iM3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzbq(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:372:0x079b  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x084a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x09e2 A[PHI: r8
      0x09e2: PHI (r8v74 int) = (r8v73 int), (r8v73 int), (r8v108 int), (r8v73 int) binds: [B:421:0x093b, B:428:0x0955, B:445:0x09e1, B:427:0x0953] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0a04  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0ad4 A[ADDED_TO_REGION, LOOP:13: B:487:0x0ad4->B:491:0x0ade, LOOP_START, PHI: r23
      0x0ad4: PHI (r23v8 int) = (r23v7 int), (r23v9 int) binds: [B:486:0x0ad2, B:491:0x0ade] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0ae4  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x0ae7  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0b32  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0b7d  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0b80  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0ba4  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x0bc1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:610:0x0e2e  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x0e3b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:638:0x0acb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List c(com.google.android.gms.internal.ads.zzafh r56, com.google.android.gms.internal.ads.zzaaj r57, long r58, com.google.android.gms.internal.ads.zzx r60, boolean r61, boolean r62, com.google.android.gms.internal.ads.zzfnj r63) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instruction units count: 3653
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafr.c(com.google.android.gms.internal.ads.zzafh, com.google.android.gms.internal.ads.zzaaj, long, com.google.android.gms.internal.ads.zzx, boolean, boolean, com.google.android.gms.internal.ads.zzfnj):java.util.List");
    }

    public static void d(zzen zzenVar) {
        int iK = zzenVar.k();
        zzenVar.g(4);
        if (zzenVar.m() != 1751411826) {
            iK += 4;
        }
        zzenVar.f(iK);
    }

    private static int e(int i10) {
        if (i10 == 1936684398) {
            return 1;
        }
        if (i10 == 1986618469) {
            return 2;
        }
        if (i10 == 1952807028 || i10 == 1935832172 || i10 == 1937072756 || i10 == 1668047728) {
            return 3;
        }
        return i10 == 1835365473 ? 5 : -1;
    }

    private static int f(zzen zzenVar) {
        int iS = zzenVar.s();
        int i10 = iS & 127;
        while ((iS & 128) == 128) {
            iS = zzenVar.s();
            i10 = (i10 << 7) | (iS & 127);
        }
        return i10;
    }

    private static int g(zzen zzenVar) {
        zzenVar.f(16);
        return zzenVar.m();
    }

    private static Pair h(zzafh zzafhVar) {
        zzafi zzafiVarD = zzafhVar.d(1701606260);
        if (zzafiVarD == null) {
            return null;
        }
        zzen zzenVar = zzafiVarD.f8779b;
        zzenVar.f(8);
        int iA = zzafj.a(zzenVar.m());
        int iV = zzenVar.v();
        long[] jArr = new long[iV];
        long[] jArr2 = new long[iV];
        for (int i10 = 0; i10 < iV; i10++) {
            jArr[i10] = iA == 1 ? zzenVar.B() : zzenVar.A();
            jArr2[i10] = iA == 1 ? zzenVar.z() : zzenVar.m();
            if (zzenVar.G() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            zzenVar.g(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair i(zzen zzenVar) {
        zzenVar.f(8);
        int iA = zzafj.a(zzenVar.m());
        zzenVar.g(iA == 0 ? 8 : 16);
        long jA = zzenVar.A();
        zzenVar.g(iA == 0 ? 4 : 8);
        int iW = zzenVar.w();
        StringBuilder sb = new StringBuilder();
        sb.append((char) (((iW >> 10) & 31) + 96));
        sb.append((char) (((iW >> 5) & 31) + 96));
        sb.append((char) ((iW & 31) + 96));
        return Pair.create(Long.valueOf(jA), sb.toString());
    }

    private static Pair j(zzen zzenVar, int i10, int i11) throws zzbu {
        Integer num;
        zzagh zzaghVar;
        Pair pairCreate;
        int i12;
        int i13;
        byte[] bArr;
        int iK = zzenVar.k();
        while (iK - i10 < i11) {
            zzenVar.f(iK);
            int iM = zzenVar.m();
            zzzy.b(iM > 0, "childAtomSize must be positive");
            if (zzenVar.m() == 1936289382) {
                int i14 = iK + 8;
                int i15 = -1;
                int i16 = 0;
                String strF = null;
                Integer numValueOf = null;
                while (i14 - iK < iM) {
                    zzenVar.f(i14);
                    int iM2 = zzenVar.m();
                    int iM3 = zzenVar.m();
                    if (iM3 == 1718775137) {
                        numValueOf = Integer.valueOf(zzenVar.m());
                    } else if (iM3 == 1935894637) {
                        zzenVar.g(4);
                        strF = zzenVar.F(4, zzfnh.f18476c);
                    } else if (iM3 == 1935894633) {
                        i15 = i14;
                        i16 = iM2;
                    }
                    i14 += iM2;
                }
                if ("cenc".equals(strF) || "cbc1".equals(strF) || "cens".equals(strF) || "cbcs".equals(strF)) {
                    zzzy.b(numValueOf != null, "frma atom is mandatory");
                    zzzy.b(i15 != -1, "schi atom is mandatory");
                    int i17 = i15 + 8;
                    while (true) {
                        if (i17 - i15 >= i16) {
                            num = numValueOf;
                            zzaghVar = null;
                            break;
                        }
                        zzenVar.f(i17);
                        int iM4 = zzenVar.m();
                        if (zzenVar.m() == 1952804451) {
                            int iA = zzafj.a(zzenVar.m());
                            zzenVar.g(1);
                            if (iA == 0) {
                                zzenVar.g(1);
                                i12 = 0;
                                i13 = 0;
                            } else {
                                int iS = zzenVar.s();
                                int i18 = iS & 240;
                                i12 = iS & 15;
                                i13 = i18 >> 4;
                            }
                            boolean z10 = zzenVar.s() == 1;
                            int iS2 = zzenVar.s();
                            byte[] bArr2 = new byte[16];
                            zzenVar.b(bArr2, 0, 16);
                            if (z10 && iS2 == 0) {
                                int iS3 = zzenVar.s();
                                byte[] bArr3 = new byte[iS3];
                                zzenVar.b(bArr3, 0, iS3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = numValueOf;
                            zzaghVar = new zzagh(z10, strF, iS2, bArr2, i13, i12, bArr);
                        } else {
                            i17 += iM4;
                        }
                    }
                    zzzy.b(zzaghVar != null, "tenc atom is mandatory");
                    int i19 = zzew.f17494a;
                    pairCreate = Pair.create(num, zzaghVar);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            iK += iM;
        }
        return null;
    }

    private static zzafl k(zzen zzenVar, int i10) {
        zzenVar.f(i10 + 12);
        zzenVar.g(1);
        f(zzenVar);
        zzenVar.g(2);
        int iS = zzenVar.s();
        if ((iS & 128) != 0) {
            zzenVar.g(2);
        }
        if ((iS & 64) != 0) {
            zzenVar.g(zzenVar.s());
        }
        if ((iS & 32) != 0) {
            zzenVar.g(2);
        }
        zzenVar.g(1);
        f(zzenVar);
        String strD = zzbt.d(zzenVar.s());
        if ("audio/mpeg".equals(strD) || "audio/vnd.dts".equals(strD) || "audio/vnd.dts.hd".equals(strD)) {
            return new zzafl(strD, null, -1L, -1L);
        }
        zzenVar.g(4);
        long jA = zzenVar.A();
        long jA2 = zzenVar.A();
        zzenVar.g(1);
        int iF = f(zzenVar);
        byte[] bArr = new byte[iF];
        zzenVar.b(bArr, 0, iF);
        return new zzafl(strD, bArr, jA2 <= 0 ? -1L : jA2, jA > 0 ? jA : -1L);
    }

    private static ByteBuffer l() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m(com.google.android.gms.internal.ads.zzen r23, int r24, int r25, int r26, int r27, java.lang.String r28, boolean r29, com.google.android.gms.internal.ads.zzx r30, com.google.android.gms.internal.ads.zzafn r31, int r32) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instruction units count: 992
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafr.m(com.google.android.gms.internal.ads.zzen, int, int, int, int, java.lang.String, boolean, com.google.android.gms.internal.ads.zzx, com.google.android.gms.internal.ads.zzafn, int):void");
    }

    private static void n(zzen zzenVar, int i10, int i11, int i12, zzafn zzafnVar) {
        zzenVar.f(i11 + 16);
        zzenVar.D((char) 0);
        String strD = zzenVar.D((char) 0);
        if (strD != null) {
            zzad zzadVar = new zzad();
            zzadVar.g(i12);
            zzadVar.s(strD);
            zzafnVar.f8795b = zzadVar.y();
        }
    }

    private static boolean o(long[] jArr, long j10, long j11, long j12) {
        int length = jArr.length;
        int i10 = length - 1;
        return jArr[0] <= j11 && j11 < jArr[zzew.Q(4, 0, i10)] && jArr[zzew.Q(length + (-4), 0, i10)] < j12 && j12 <= j10;
    }
}
