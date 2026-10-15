package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzzh {
    public static void a(long j10, zzen zzenVar, zzabb[] zzabbVarArr) {
        int iM;
        while (true) {
            if (zzenVar.i() <= 1) {
                return;
            }
            int iC = c(zzenVar);
            int iC2 = c(zzenVar);
            int iK = zzenVar.k() + iC2;
            if (iC2 == -1 || iC2 > zzenVar.i()) {
                zzee.e("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                iK = zzenVar.l();
            } else if (iC == 4 && iC2 >= 8) {
                int iS = zzenVar.s();
                int iW = zzenVar.w();
                if (iW == 49) {
                    iM = zzenVar.m();
                    iW = 49;
                } else {
                    iM = 0;
                }
                int iS2 = zzenVar.s();
                if (iW == 47) {
                    zzenVar.g(1);
                    iW = 47;
                }
                boolean z10 = iS == 181 && (iW == 49 || iW == 47) && iS2 == 3;
                if (iW == 49) {
                    z10 &= iM == 1195456820;
                }
                if (z10) {
                    b(j10, zzenVar, zzabbVarArr);
                }
            }
            zzenVar.f(iK);
        }
    }

    public static void b(long j10, zzen zzenVar, zzabb[] zzabbVarArr) {
        int iS = zzenVar.s();
        if ((iS & 64) != 0) {
            int i10 = iS & 31;
            zzenVar.g(1);
            int iK = zzenVar.k();
            for (zzabb zzabbVar : zzabbVarArr) {
                int i11 = i10 * 3;
                zzenVar.f(iK);
                zzabbVar.d(zzenVar, i11);
                if (j10 != -9223372036854775807L) {
                    zzabbVar.f(j10, 1, i11, 0, null);
                }
            }
        }
    }

    private static int c(zzen zzenVar) {
        int i10 = 0;
        while (zzenVar.i() != 0) {
            int iS = zzenVar.s();
            i10 += iS;
            if (iS != 255) {
                return i10;
            }
        }
        return -1;
    }
}
