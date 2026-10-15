package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzzr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f21208a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f21209b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f21210c = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f21211d = 0;

    public static zzaf a(byte[] bArr, String str, String str2, zzx zzxVar) {
        zzem zzemVar;
        if (bArr[0] == 127) {
            zzemVar = new zzem(bArr, bArr.length);
        } else {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            byte b10 = bArrCopyOf[0];
            if (b10 == -2 || b10 == -1) {
                for (int i10 = 0; i10 < bArrCopyOf.length - 1; i10 += 2) {
                    byte b11 = bArrCopyOf[i10];
                    int i11 = i10 + 1;
                    bArrCopyOf[i10] = bArrCopyOf[i11];
                    bArrCopyOf[i11] = b11;
                }
            }
            int length = bArrCopyOf.length;
            zzemVar = new zzem(bArrCopyOf, length);
            if (bArrCopyOf[0] == 31) {
                zzem zzemVar2 = new zzem(bArrCopyOf, length);
                while (zzemVar2.a() >= 16) {
                    zzemVar2.l(2);
                    zzemVar.f(zzemVar2.d(14), 14);
                }
            }
            zzemVar.i(bArrCopyOf, bArrCopyOf.length);
        }
        zzemVar.l(60);
        int i12 = f21208a[zzemVar.d(6)];
        int i13 = f21209b[zzemVar.d(4)];
        int iD = zzemVar.d(5);
        int i14 = iD < 29 ? (f21210c[iD] * 1000) / 2 : -1;
        zzemVar.l(10);
        int i15 = i12 + (zzemVar.d(2) > 0 ? 1 : 0);
        zzad zzadVar = new zzad();
        zzadVar.h(str);
        zzadVar.s("audio/vnd.dts");
        zzadVar.d0(i14);
        zzadVar.e0(i15);
        zzadVar.t(i13);
        zzadVar.b(null);
        zzadVar.k(str2);
        return zzadVar.y();
    }
}
