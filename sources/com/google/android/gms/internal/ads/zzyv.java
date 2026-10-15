package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f21140a = {1, 2, 3, 6};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f21141b = {48000, 44100, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f21142c = {24000, 22050, 16000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f21143d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f21144e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f21145f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f21146g = 0;

    public static int a(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f21140a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static int b(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) <= 10) {
            byte b10 = bArr[4];
            return f((b10 & 192) >> 6, b10 & 63);
        }
        int i10 = bArr[2] & 7;
        int i11 = ((bArr[3] & 255) | (i10 << 8)) + 1;
        return i11 + i11;
    }

    public static zzaf c(zzen zzenVar, String str, String str2, zzx zzxVar) {
        zzem zzemVar = new zzem();
        zzemVar.h(zzenVar);
        int i10 = f21141b[zzemVar.d(2)];
        zzemVar.l(8);
        int i11 = f21143d[zzemVar.d(3)];
        if (zzemVar.d(1) != 0) {
            i11++;
        }
        int i12 = f21144e[zzemVar.d(5)] * 1000;
        zzemVar.e();
        zzenVar.f(zzemVar.b());
        zzad zzadVar = new zzad();
        zzadVar.h(str);
        zzadVar.s("audio/ac3");
        zzadVar.e0(i11);
        zzadVar.t(i10);
        zzadVar.b(zzxVar);
        zzadVar.k(str2);
        zzadVar.d0(i12);
        zzadVar.o(i12);
        return zzadVar.y();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzaf d(com.google.android.gms.internal.ads.zzen r7, java.lang.String r8, java.lang.String r9, com.google.android.gms.internal.ads.zzx r10) {
        /*
            com.google.android.gms.internal.ads.zzem r0 = new com.google.android.gms.internal.ads.zzem
            r0.<init>()
            r0.h(r7)
            r1 = 13
            int r1 = r0.d(r1)
            int r1 = r1 * 1000
            r2 = 3
            r0.l(r2)
            r3 = 2
            int r3 = r0.d(r3)
            int[] r4 = com.google.android.gms.internal.ads.zzyv.f21141b
            r3 = r4[r3]
            r4 = 10
            r0.l(r4)
            int[] r4 = com.google.android.gms.internal.ads.zzyv.f21143d
            int r5 = r0.d(r2)
            r4 = r4[r5]
            r5 = 1
            int r6 = r0.d(r5)
            if (r6 == 0) goto L33
            int r4 = r4 + 1
        L33:
            r0.l(r2)
            r2 = 4
            int r2 = r0.d(r2)
            r0.l(r5)
            if (r2 <= 0) goto L4f
            r2 = 6
            r0.m(r2)
            int r2 = r0.d(r5)
            if (r2 == 0) goto L4c
            int r4 = r4 + 2
        L4c:
            r0.l(r5)
        L4f:
            int r2 = r0.a()
            r6 = 7
            if (r2 <= r6) goto L62
            r0.l(r6)
            int r2 = r0.d(r5)
            if (r2 == 0) goto L62
            java.lang.String r2 = "audio/eac3-joc"
            goto L64
        L62:
            java.lang.String r2 = "audio/eac3"
        L64:
            r0.e()
            int r0 = r0.b()
            r7.f(r0)
            com.google.android.gms.internal.ads.zzad r7 = new com.google.android.gms.internal.ads.zzad
            r7.<init>()
            r7.h(r8)
            r7.s(r2)
            r7.e0(r4)
            r7.t(r3)
            r7.b(r10)
            r7.k(r9)
            r7.o(r1)
            com.google.android.gms.internal.ads.zzaf r7 = r7.y()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzyv.d(com.google.android.gms.internal.ads.zzen, java.lang.String, java.lang.String, com.google.android.gms.internal.ads.zzx):com.google.android.gms.internal.ads.zzaf");
    }

    public static zzyu e(zzem zzemVar) {
        String str;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int iC = zzemVar.c();
        zzemVar.l(40);
        int iD = zzemVar.d(5);
        zzemVar.j(iC);
        int i21 = -1;
        if (iD > 10) {
            zzemVar.l(16);
            int iD2 = zzemVar.d(2);
            if (iD2 == 0) {
                i21 = 0;
            } else if (iD2 == 1) {
                i21 = 1;
            } else if (iD2 == 2) {
                i21 = 2;
            }
            zzemVar.l(3);
            int iD3 = zzemVar.d(11) + 1;
            int iD4 = zzemVar.d(2);
            if (iD4 == 3) {
                i17 = f21142c[zzemVar.d(2)];
                i16 = 3;
                i18 = 6;
            } else {
                int iD5 = zzemVar.d(2);
                int i22 = f21140a[iD5];
                i16 = iD5;
                i17 = f21141b[iD4];
                i18 = i22;
            }
            int i23 = iD3 + iD3;
            int i24 = (i23 * i17) / (i18 * 32);
            int iD6 = zzemVar.d(3);
            boolean zN = zzemVar.n();
            int i25 = f21143d[iD6] + (zN ? 1 : 0);
            zzemVar.l(10);
            if (zzemVar.n()) {
                zzemVar.l(8);
            }
            if (iD6 == 0) {
                zzemVar.l(5);
                if (zzemVar.n()) {
                    zzemVar.l(8);
                }
                i19 = 0;
                iD6 = 0;
            } else {
                i19 = iD6;
            }
            if (i21 == 1) {
                if (zzemVar.n()) {
                    zzemVar.l(16);
                }
                i20 = 1;
            } else {
                i20 = i21;
            }
            if (zzemVar.n()) {
                if (i19 > 2) {
                    zzemVar.l(2);
                }
                if ((i19 & 1) != 0 && i19 > 2) {
                    zzemVar.l(6);
                }
                if ((i19 & 4) != 0) {
                    zzemVar.l(6);
                }
                if (zN && zzemVar.n()) {
                    zzemVar.l(5);
                }
                if (i20 == 0) {
                    if (zzemVar.n()) {
                        zzemVar.l(6);
                    }
                    if (i19 == 0 && zzemVar.n()) {
                        zzemVar.l(6);
                    }
                    if (zzemVar.n()) {
                        zzemVar.l(6);
                    }
                    int iD7 = zzemVar.d(2);
                    if (iD7 == 1) {
                        zzemVar.l(5);
                    } else if (iD7 == 2) {
                        zzemVar.l(12);
                    } else if (iD7 == 3) {
                        int iD8 = zzemVar.d(5);
                        if (zzemVar.n()) {
                            zzemVar.l(5);
                            if (zzemVar.n()) {
                                zzemVar.l(4);
                            }
                            if (zzemVar.n()) {
                                zzemVar.l(4);
                            }
                            if (zzemVar.n()) {
                                zzemVar.l(4);
                            }
                            if (zzemVar.n()) {
                                zzemVar.l(4);
                            }
                            if (zzemVar.n()) {
                                zzemVar.l(4);
                            }
                            if (zzemVar.n()) {
                                zzemVar.l(4);
                            }
                            if (zzemVar.n()) {
                                zzemVar.l(4);
                            }
                            if (zzemVar.n()) {
                                if (zzemVar.n()) {
                                    zzemVar.l(4);
                                }
                                if (zzemVar.n()) {
                                    zzemVar.l(4);
                                }
                            }
                        }
                        if (zzemVar.n()) {
                            zzemVar.l(5);
                            if (zzemVar.n()) {
                                zzemVar.l(7);
                                if (zzemVar.n()) {
                                    zzemVar.l(8);
                                }
                            }
                        }
                        zzemVar.l((iD8 + 2) * 8);
                        zzemVar.e();
                    }
                    if (i19 < 2) {
                        if (zzemVar.n()) {
                            zzemVar.l(14);
                        }
                        if (iD6 == 0 && zzemVar.n()) {
                            zzemVar.l(14);
                        }
                    }
                    if (!zzemVar.n()) {
                        i20 = 0;
                    } else if (i16 == 0) {
                        zzemVar.l(5);
                        i20 = 0;
                        i16 = 0;
                    } else {
                        for (int i26 = 0; i26 < i18; i26++) {
                            if (zzemVar.n()) {
                                zzemVar.l(5);
                            }
                        }
                        i20 = 0;
                    }
                }
            }
            if (zzemVar.n()) {
                zzemVar.l(5);
                if (i19 == 2) {
                    zzemVar.l(4);
                    i19 = 2;
                }
                if (i19 >= 6) {
                    zzemVar.l(2);
                }
                if (zzemVar.n()) {
                    zzemVar.l(8);
                }
                if (i19 == 0 && zzemVar.n()) {
                    zzemVar.l(8);
                }
                if (iD4 < 3) {
                    zzemVar.k();
                }
            }
            if (i20 == 0 && i16 != 3) {
                zzemVar.k();
            }
            if (i20 == 2 && (i16 == 3 || zzemVar.n())) {
                zzemVar.l(6);
            }
            str = (zzemVar.n() && zzemVar.d(6) == 1 && zzemVar.d(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i14 = i21;
            i11 = i23;
            i12 = i17;
            i15 = i18 * 256;
            i10 = i24;
            i13 = i25;
        } else {
            zzemVar.l(32);
            int iD9 = zzemVar.d(2);
            String str2 = iD9 == 3 ? null : "audio/ac3";
            int iD10 = zzemVar.d(6);
            int i27 = f21144e[iD10 / 2] * 1000;
            int iF = f(iD9, iD10);
            zzemVar.l(8);
            int iD11 = zzemVar.d(3);
            if ((iD11 & 1) != 0 && iD11 != 1) {
                zzemVar.l(2);
            }
            if ((iD11 & 4) != 0) {
                zzemVar.l(2);
            }
            if (iD11 == 2) {
                zzemVar.l(2);
            }
            str = str2;
            i10 = i27;
            i11 = iF;
            i12 = iD9 < 3 ? f21141b[iD9] : -1;
            i13 = f21143d[iD11] + (zzemVar.n() ? 1 : 0);
            i14 = -1;
            i15 = 1536;
        }
        return new zzyu(str, i14, i13, i12, i11, i15, i10, null);
    }

    private static int f(int i10, int i11) {
        int i12;
        if (i10 < 0 || i10 >= 3 || i11 < 0 || (i12 = i11 >> 1) >= 19) {
            return -1;
        }
        int i13 = f21141b[i10];
        if (i13 == 44100) {
            int i14 = f21145f[i12] + (i11 & 1);
            return i14 + i14;
        }
        int i15 = f21144e[i12];
        return i13 == 32000 ? i15 * 6 : i15 * 4;
    }
}
