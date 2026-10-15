package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.Collection;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgmu implements zzfvu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Collection f19287c = Arrays.asList(64);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f19288d = new byte[16];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgnz f19289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f19290b;

    public zzgmu(byte[] bArr) throws GeneralSecurityException {
        if (!zzgas.a(1)) {
            throw new GeneralSecurityException("Can not use AES-SIV in FIPS-mode.");
        }
        Collection collection = f19287c;
        int length = bArr.length;
        if (collection.contains(Integer.valueOf(length))) {
            int i10 = length >> 1;
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, i10);
            this.f19290b = Arrays.copyOfRange(bArr, i10, length);
            this.f19289a = new zzgnz(bArrCopyOfRange);
            return;
        }
        throw new InvalidKeyException("invalid key size: " + length + " bytes; key must have 64 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzfvu
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrC;
        if (bArr.length > 2147483631) {
            throw new GeneralSecurityException("plaintext too long");
        }
        Cipher cipher = (Cipher) zzgnn.f19317b.a("AES/CTR/NoPadding");
        byte[][] bArr3 = {bArr2, bArr};
        byte[] bArrA = this.f19289a.a(f19288d, 16);
        for (int i10 = 0; i10 <= 0; i10++) {
            byte[] bArr4 = bArr3[i10];
            if (bArr4 == null) {
                bArr4 = new byte[0];
            }
            bArrA = zzgmv.c(zzggg.b(bArrA), this.f19289a.a(bArr4, 16));
        }
        byte[] bArr5 = bArr3[1];
        int length = bArr5.length;
        if (length >= 16) {
            int length2 = bArrA.length;
            if (length < length2) {
                throw new IllegalArgumentException("xorEnd requires a.length >= b.length");
            }
            bArrC = Arrays.copyOf(bArr5, length);
            for (int i11 = 0; i11 < bArrA.length; i11++) {
                int i12 = (length - length2) + i11;
                bArrC[i12] = (byte) (bArrC[i12] ^ bArrA[i11]);
            }
        } else {
            bArrC = zzgmv.c(zzggg.a(bArr5), zzggg.b(bArrA));
        }
        byte[] bArrA2 = this.f19289a.a(bArrC, 16);
        byte[] bArr6 = (byte[]) bArrA2.clone();
        bArr6[8] = (byte) (bArr6[8] & 127);
        bArr6[12] = (byte) (bArr6[12] & 127);
        cipher.init(1, new SecretKeySpec(this.f19290b, "AES"), new IvParameterSpec(bArr6));
        return zzgmv.b(bArrA2, cipher.doFinal(bArr));
    }
}
