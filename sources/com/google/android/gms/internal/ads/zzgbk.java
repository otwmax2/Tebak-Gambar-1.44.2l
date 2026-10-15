package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbk {
    public static void a(zzgjj zzgjjVar) throws GeneralSecurityException {
        zzgne.h(c(zzgjjVar.M().N()));
        b(zzgjjVar.M().O());
        if (zzgjjVar.P() == 2) {
            throw new GeneralSecurityException("unknown EC point format");
        }
        zzfxf.c(zzgjjVar.I().L());
    }

    public static String b(int i10) throws NoSuchAlgorithmException {
        int i11 = i10 - 2;
        if (i11 == 1) {
            return "HmacSha1";
        }
        if (i11 == 2) {
            return "HmacSha384";
        }
        if (i11 == 3) {
            return "HmacSha256";
        }
        if (i11 == 4) {
            return "HmacSha512";
        }
        if (i11 == 5) {
            return "HmacSha224";
        }
        throw new NoSuchAlgorithmException("hash unsupported for HMAC: ".concat(Integer.toString(zzgjw.a(i10))));
    }

    public static int c(int i10) throws GeneralSecurityException {
        int i11 = i10 - 2;
        if (i11 == 2) {
            return 1;
        }
        if (i11 == 3) {
            return 2;
        }
        if (i11 == 4) {
            return 3;
        }
        throw new GeneralSecurityException("unknown curve type: ".concat(Integer.toString(zzgju.a(i10))));
    }

    public static int d(int i10) throws GeneralSecurityException {
        int i11 = i10 - 2;
        int i12 = 1;
        if (i11 != 1) {
            i12 = 2;
            if (i11 != 2) {
                if (i11 == 3) {
                    return 3;
                }
                throw new GeneralSecurityException("unknown point format: ".concat(Integer.toString(zzgja.a(i10))));
            }
        }
        return i12;
    }
}
