package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgmp implements zzgny {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadLocal f19276d = new zzgmo();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SecretKeySpec f19277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f19278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f19279c;

    public zzgmp(byte[] bArr, int i10) throws GeneralSecurityException {
        if (!zzgas.a(2)) {
            throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
        }
        zzgog.a(bArr.length);
        this.f19277a = new SecretKeySpec(bArr, "AES");
        int blockSize = ((Cipher) f19276d.get()).getBlockSize();
        this.f19279c = blockSize;
        if (i10 < 12 || i10 > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f19278b = i10;
    }

    private final void b(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, byte[] bArr3, boolean z10) throws GeneralSecurityException {
        Cipher cipher = (Cipher) f19276d.get();
        byte[] bArr4 = new byte[this.f19279c];
        System.arraycopy(bArr3, 0, bArr4, 0, this.f19278b);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
        if (z10) {
            cipher.init(1, this.f19277a, ivParameterSpec);
        } else {
            cipher.init(2, this.f19277a, ivParameterSpec);
        }
        if (cipher.doFinal(bArr, i10, i11, bArr2, i12) != i11) {
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgny
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i10 = this.f19278b;
        if (length < i10) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        int i11 = this.f19278b;
        int i12 = length - i11;
        byte[] bArr3 = new byte[i12];
        b(bArr, i11, i12, bArr3, 0, bArr2, false);
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.zzgny
    public final byte[] a0(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i10 = this.f19278b;
        if (length <= Integer.MAX_VALUE - i10) {
            byte[] bArr2 = new byte[i10 + length];
            byte[] bArrA = zzgoe.a(i10);
            System.arraycopy(bArrA, 0, bArr2, 0, this.f19278b);
            b(bArr, 0, length, bArr2, this.f19278b, bArrA, true);
            return bArr2;
        }
        throw new GeneralSecurityException("plaintext length can not exceed " + (Integer.MAX_VALUE - this.f19278b));
    }
}
