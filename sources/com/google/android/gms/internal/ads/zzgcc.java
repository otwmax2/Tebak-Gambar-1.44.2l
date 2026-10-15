package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgcc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f18999a = c(1, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f19000b = c(2, 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f19001c = c(2, 16);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f19002d = c(2, 17);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f19003e = c(2, 18);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f19004f = c(2, 1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f19005g = c(2, 2);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f19006h = c(2, 3);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final byte[] f19007i = c(2, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f19008j = c(2, 2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final byte[] f19009k = c(2, 3);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final byte[] f19010l = new byte[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final byte[] f19011m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final byte[] f19012n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final byte[] f19013o;

    static {
        Charset charset = zzgek.f19093a;
        f19011m = "KEM".getBytes(charset);
        f19012n = "HPKE".getBytes(charset);
        f19013o = "HPKE-v1".getBytes(charset);
    }

    static void a(zzgkn zzgknVar) throws GeneralSecurityException {
        if (zzgknVar.N() == 2 || zzgknVar.N() == 1) {
            throw new GeneralSecurityException("Invalid KEM param: ".concat(zzgkh.a(zzgknVar.N())));
        }
        String str = "UNRECOGNIZED";
        if (zzgknVar.M() == 2 || zzgknVar.M() == 1) {
            int iM = zzgknVar.M();
            if (iM == 2) {
                str = "KDF_UNKNOWN";
            } else if (iM == 3) {
                str = "HKDF_SHA256";
            } else if (iM == 4) {
                str = "HKDF_SHA384";
            } else if (iM == 5) {
                str = "HKDF_SHA512";
            }
            throw new GeneralSecurityException("Invalid KDF param: ".concat(str));
        }
        if (zzgknVar.L() == 2 || zzgknVar.L() == 1) {
            int iL = zzgknVar.L();
            if (iL == 2) {
                str = "AEAD_UNKNOWN";
            } else if (iL == 3) {
                str = "AES_128_GCM";
            } else if (iL == 4) {
                str = "AES_256_GCM";
            } else if (iL == 5) {
                str = "CHACHA20_POLY1305";
            }
            throw new GeneralSecurityException("Invalid AEAD param: ".concat(str));
        }
    }

    static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        return zzgmv.b(f19012n, bArr, bArr2, bArr3);
    }

    public static byte[] c(int i10, int i11) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) ((i11 >> (((i10 - i12) - 1) * 8)) & 255);
        }
        return bArr;
    }

    static byte[] d(byte[] bArr) throws GeneralSecurityException {
        return zzgmv.b(f19011m, bArr);
    }

    static byte[] e(String str, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzgmv.b(f19013o, bArr2, str.getBytes(zzgek.f19093a), bArr);
    }

    static byte[] f(String str, byte[] bArr, byte[] bArr2, int i10) throws GeneralSecurityException {
        return zzgmv.b(c(2, i10), f19013o, bArr2, str.getBytes(zzgek.f19093a), bArr);
    }

    static int g(int i10) throws GeneralSecurityException {
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
        throw new GeneralSecurityException("Unrecognized NIST HPKE KEM identifier");
    }
}
