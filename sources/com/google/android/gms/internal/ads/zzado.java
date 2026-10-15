package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzado {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzadm f8599a = new zzadm() { // from class: com.google.android.gms.internal.ads.zzadl
    };

    /* JADX WARN: Removed duplicated region for block: B:30:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final com.google.android.gms.internal.ads.zzbq a(byte[] r11, int r12, com.google.android.gms.internal.ads.zzadm r13, com.google.android.gms.internal.ads.zzacp r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzado.a(byte[], int, com.google.android.gms.internal.ads.zzadm, com.google.android.gms.internal.ads.zzacp):com.google.android.gms.internal.ads.zzbq");
    }

    private static int b(int i10) {
        return (i10 == 0 || i10 == 3) ? 1 : 2;
    }

    private static int c(byte[] bArr, int i10, int i11) {
        int iD = d(bArr, i10);
        if (i11 == 0 || i11 == 3) {
            return iD;
        }
        while (true) {
            int length = bArr.length;
            if (iD >= length - 1) {
                return length;
            }
            if ((iD - i10) % 2 == 0 && bArr[iD + 1] == 0) {
                return iD;
            }
            iD = d(bArr, iD + 1);
        }
    }

    private static int d(byte[] bArr, int i10) {
        while (true) {
            int length = bArr.length;
            if (i10 >= length) {
                return length;
            }
            if (bArr[i10] == 0) {
                return i10;
            }
            i10++;
        }
    }

    private static int e(zzen zzenVar, int i10) {
        byte[] bArrH = zzenVar.h();
        int iK = zzenVar.k();
        int i11 = iK;
        while (true) {
            int i12 = i11 + 1;
            if (i12 >= iK + i10) {
                return i10;
            }
            if ((bArrH[i11] & 255) == 255 && bArrH[i12] == 0) {
                System.arraycopy(bArrH, i11 + 2, bArrH, i12, (i10 - (i11 - iK)) - 2);
                i10--;
            }
            i11 = i12;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x0280 A[Catch: all -> 0x0518, TryCatch #0 {all -> 0x0518, blocks: (B:223:0x04f3, B:124:0x0217, B:140:0x026e, B:142:0x0280, B:149:0x02c1, B:146:0x02a2, B:148:0x02bb, B:161:0x0303, B:170:0x034a, B:173:0x037f, B:176:0x0390, B:177:0x0398, B:179:0x039e, B:181:0x03a5, B:182:0x03a9, B:189:0x03cb, B:193:0x03f8, B:195:0x0402, B:196:0x0435, B:197:0x0441, B:199:0x0447, B:201:0x044e, B:202:0x0452, B:206:0x0467, B:215:0x0492, B:217:0x04bc, B:218:0x04cb, B:221:0x04e2), top: B:235:0x00f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02a2 A[Catch: all -> 0x0518, TryCatch #0 {all -> 0x0518, blocks: (B:223:0x04f3, B:124:0x0217, B:140:0x026e, B:142:0x0280, B:149:0x02c1, B:146:0x02a2, B:148:0x02bb, B:161:0x0303, B:170:0x034a, B:173:0x037f, B:176:0x0390, B:177:0x0398, B:179:0x039e, B:181:0x03a5, B:182:0x03a9, B:189:0x03cb, B:193:0x03f8, B:195:0x0402, B:196:0x0435, B:197:0x0441, B:199:0x0447, B:201:0x044e, B:202:0x0452, B:206:0x0467, B:215:0x0492, B:217:0x04bc, B:218:0x04cb, B:221:0x04e2), top: B:235:0x00f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04f3 A[Catch: all -> 0x0518, TRY_LEAVE, TryCatch #0 {all -> 0x0518, blocks: (B:223:0x04f3, B:124:0x0217, B:140:0x026e, B:142:0x0280, B:149:0x02c1, B:146:0x02a2, B:148:0x02bb, B:161:0x0303, B:170:0x034a, B:173:0x037f, B:176:0x0390, B:177:0x0398, B:179:0x039e, B:181:0x03a5, B:182:0x03a9, B:189:0x03cb, B:193:0x03f8, B:195:0x0402, B:196:0x0435, B:197:0x0441, B:199:0x0447, B:201:0x044e, B:202:0x0452, B:206:0x0467, B:215:0x0492, B:217:0x04bc, B:218:0x04cb, B:221:0x04e2), top: B:235:0x00f4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzadp f(int r35, com.google.android.gms.internal.ads.zzen r36, boolean r37, int r38, com.google.android.gms.internal.ads.zzadm r39) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzado.f(int, com.google.android.gms.internal.ads.zzen, boolean, int, com.google.android.gms.internal.ads.zzadm):com.google.android.gms.internal.ads.zzadp");
    }

    private static zzfqk g(byte[] bArr, int i10, int i11) {
        if (i11 >= bArr.length) {
            return zzfqk.v(BuildConfig.FLAVOR);
        }
        zzfqh zzfqhVarO = zzfqk.o();
        int iC = c(bArr, i11, i10);
        while (i11 < iC) {
            zzfqhVarO.g(new String(bArr, i11, iC - i11, j(i10)));
            i11 = b(i10) + iC;
            iC = c(bArr, i11, i10);
        }
        zzfqk zzfqkVarJ = zzfqhVarO.j();
        return zzfqkVarJ.isEmpty() ? zzfqk.v(BuildConfig.FLAVOR) : zzfqkVarJ;
    }

    private static String h(byte[] bArr, int i10, int i11, Charset charset) {
        return (i11 <= i10 || i11 > bArr.length) ? BuildConfig.FLAVOR : new String(bArr, i10, i11 - i10, charset);
    }

    private static String i(int i10, int i11, int i12, int i13, int i14) {
        return i10 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    private static Charset j(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? zzfnh.f18475b : zzfnh.f18476c : zzfnh.f18477d : zzfnh.f18479f;
    }

    private static boolean k(zzen zzenVar, int i10, int i11, boolean z10) {
        int iU;
        long jU;
        int iW;
        int i12;
        int iK = zzenVar.k();
        while (true) {
            try {
                if (zzenVar.i() < i11) {
                    return true;
                }
                if (i10 >= 3) {
                    iU = zzenVar.m();
                    jU = zzenVar.A();
                    iW = zzenVar.w();
                } else {
                    iU = zzenVar.u();
                    jU = zzenVar.u();
                    iW = 0;
                }
                if (iU == 0 && jU == 0 && iW == 0) {
                    return true;
                }
                if (i10 == 4 && !z10) {
                    if ((8421504 & jU) != 0) {
                        return false;
                    }
                    jU = ((jU >> 24) << 21) | (((jU >> 16) & 255) << 14) | (jU & 255) | (((jU >> 8) & 255) << 7);
                }
                if (i10 == 4) {
                    i = iW & 1;
                    i12 = (iW & 64) == 0 ? 0 : 1;
                } else {
                    if (i10 == 3) {
                        i12 = (iW & 32) != 0 ? 1 : 0;
                        if ((iW & 128) == 0) {
                        }
                    } else {
                        i12 = 0;
                    }
                    i = 0;
                }
                if (i != 0) {
                    i12 += 4;
                }
                if (jU < i12) {
                    return false;
                }
                if (zzenVar.i() < jU) {
                    return false;
                }
                zzenVar.g((int) jU);
            } finally {
                zzenVar.f(iK);
            }
        }
    }

    private static byte[] l(byte[] bArr, int i10, int i11) {
        return i11 <= i10 ? zzew.f17499f : Arrays.copyOfRange(bArr, i10, i11);
    }
}
