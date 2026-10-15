package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzys {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f21131a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f21132b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f21133c = 0;

    public static zzyr a(byte[] bArr) throws zzbu {
        return b(new zzem(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b5, code lost:
    
        if (r11 != 3) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzyr b(com.google.android.gms.internal.ads.zzem r11, boolean r12) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzys.b(com.google.android.gms.internal.ads.zzem, boolean):com.google.android.gms.internal.ads.zzyr");
    }

    private static int c(zzem zzemVar) {
        int iD = zzemVar.d(5);
        return iD == 31 ? zzemVar.d(6) + 32 : iD;
    }

    private static int d(zzem zzemVar) throws zzbu {
        int iD = zzemVar.d(4);
        if (iD == 15) {
            if (zzemVar.a() >= 24) {
                return zzemVar.d(24);
            }
            throw zzbu.a("AAC header insufficient data", null);
        }
        if (iD < 13) {
            return f21131a[iD];
        }
        throw zzbu.a("AAC header wrong Sampling Frequency Index", null);
    }
}
