package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgnz implements zzggt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SecretKey f19329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f19330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f19331c;

    public zzgnz(byte[] bArr) throws GeneralSecurityException {
        zzgog.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f19329a = secretKeySpec;
        Cipher cipherB = b();
        cipherB.init(1, secretKeySpec);
        byte[] bArrB = zzggg.b(cipherB.doFinal(new byte[16]));
        this.f19330b = bArrB;
        this.f19331c = zzggg.b(bArrB);
    }

    private static Cipher b() throws GeneralSecurityException {
        if (zzgas.a(1)) {
            return (Cipher) zzgnn.f19317b.a("AES/ECB/NoPadding");
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.zzggt
    public final byte[] a(byte[] bArr, int i10) throws GeneralSecurityException {
        if (i10 > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        Cipher cipherB = b();
        cipherB.init(1, this.f19329a);
        int length = bArr.length;
        double d10 = length;
        Double.isNaN(d10);
        int iMax = Math.max(1, (int) Math.ceil(d10 / 16.0d));
        byte[] bArrD = iMax * 16 == length ? zzgmv.d(bArr, (iMax - 1) * 16, this.f19330b, 0, 16) : zzgmv.c(zzggg.a(Arrays.copyOfRange(bArr, (iMax - 1) * 16, length)), this.f19331c);
        byte[] bArrDoFinal = new byte[16];
        for (int i11 = 0; i11 < iMax - 1; i11++) {
            bArrDoFinal = cipherB.doFinal(zzgmv.d(bArrDoFinal, 0, bArr, i11 * 16, 16));
        }
        return Arrays.copyOf(cipherB.doFinal(zzgmv.c(bArrD, bArrDoFinal)), i10);
    }
}
