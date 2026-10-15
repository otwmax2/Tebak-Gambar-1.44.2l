package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzagf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f8896a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean a(zzzv zzzvVar) throws IOException {
        return c(zzzvVar, true, false);
    }

    public static boolean b(zzzv zzzvVar, boolean z10) throws IOException {
        return c(zzzvVar, false, false);
    }

    private static boolean c(zzzv zzzvVar, boolean z10, boolean z11) throws IOException {
        boolean z12;
        long jD = zzzvVar.d();
        long j10 = 4096;
        long j11 = -1;
        if (jD != -1 && jD <= 4096) {
            j10 = jD;
        }
        zzen zzenVar = new zzen(64);
        int i10 = (int) j10;
        int i11 = 0;
        boolean z13 = false;
        while (i11 < i10) {
            zzenVar.c(8);
            if (!zzzvVar.k(zzenVar.h(), 0, 8, true)) {
                break;
            }
            long jA = zzenVar.A();
            int iM = zzenVar.m();
            int i12 = 16;
            if (jA == 1) {
                zzzvVar.m(zzenVar.h(), 8, 8);
                zzenVar.e(16);
                jA = zzenVar.z();
            } else {
                if (jA == 0) {
                    long jD2 = zzzvVar.d();
                    if (jD2 != j11) {
                        jA = 8 + (jD2 - zzzvVar.b());
                    }
                }
                i12 = 8;
            }
            long j12 = i12;
            if (jA < j12) {
                return false;
            }
            i11 += i12;
            if (iM == 1836019574) {
                i10 += (int) jA;
                if (jD != -1 && i10 > jD) {
                    i10 = (int) jD;
                }
                j11 = -1;
            } else {
                if (iM == 1836019558 || iM == 1836475768) {
                    z12 = true;
                    break;
                }
                long j13 = jD;
                long j14 = jA;
                if ((((long) i11) + jA) - j12 >= i10) {
                    break;
                }
                int i13 = (int) (j14 - j12);
                i11 += i13;
                if (iM == 1718909296) {
                    if (i13 < 8) {
                        return false;
                    }
                    zzenVar.c(i13);
                    zzzvVar.m(zzenVar.h(), 0, i13);
                    int i14 = i13 >> 2;
                    for (int i15 = 0; i15 < i14; i15++) {
                        if (i15 != 1) {
                            int iM2 = zzenVar.m();
                            if ((iM2 >>> 8) != 3368816) {
                                if (iM2 == 1751476579) {
                                    iM2 = 1751476579;
                                }
                                int[] iArr = f8896a;
                                for (int i16 = 0; i16 < 29; i16++) {
                                    if (iArr[i16] != iM2) {
                                    }
                                }
                            }
                            z13 = true;
                            break;
                        }
                        zzenVar.g(4);
                    }
                    if (!z13) {
                        return false;
                    }
                } else if (i13 != 0) {
                    zzzvVar.w(i13);
                }
                j11 = -1;
                jD = j13;
            }
        }
        z12 = false;
        return z13 && z10 == z12;
    }
}
