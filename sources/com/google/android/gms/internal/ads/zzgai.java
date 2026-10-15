package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgai {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadLocal f18934c = new zzgah();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SecretKey f18935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f18936b;

    public zzgai(byte[] bArr, boolean z10) throws GeneralSecurityException {
        if (!zzgas.a(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        zzgog.a(bArr.length);
        this.f18935a = new SecretKeySpec(bArr, "AES");
        this.f18936b = z10;
    }

    private static AlgorithmParameterSpec c(byte[] bArr, int i10, int i11) throws GeneralSecurityException {
        return (!zzgof.a() || zzgek.c().intValue() > 19) ? new GCMParameterSpec(128, bArr, 0, 12) : new IvParameterSpec(bArr, 0, 12);
    }

    public final byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (bArr.length != 12) {
            throw new GeneralSecurityException("iv is wrong size");
        }
        boolean z10 = this.f18936b;
        int i10 = true != z10 ? 16 : 28;
        int length = bArr2.length;
        if (length < i10) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (z10 && !ByteBuffer.wrap(bArr).equals(ByteBuffer.wrap(bArr2, 0, 12))) {
            throw new GeneralSecurityException("iv does not match prepended iv");
        }
        AlgorithmParameterSpec algorithmParameterSpecC = c(bArr, 0, 12);
        ThreadLocal threadLocal = f18934c;
        ((Cipher) threadLocal.get()).init(2, this.f18935a, algorithmParameterSpecC);
        if (bArr3 != null && bArr3.length != 0) {
            ((Cipher) threadLocal.get()).updateAAD(bArr3);
        }
        boolean z11 = this.f18936b;
        int i11 = true != z11 ? 0 : 12;
        if (z11) {
            length -= 12;
        }
        return ((Cipher) threadLocal.get()).doFinal(bArr2, i11, length);
    }

    public final byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (bArr.length != 12) {
            throw new GeneralSecurityException("iv is wrong size");
        }
        int length = bArr2.length;
        if (length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        boolean z10 = this.f18936b;
        byte[] bArr4 = new byte[z10 ? length + 28 : length + 16];
        if (z10) {
            System.arraycopy(bArr, 0, bArr4, 0, 12);
        }
        AlgorithmParameterSpec algorithmParameterSpecC = c(bArr, 0, 12);
        ThreadLocal threadLocal = f18934c;
        ((Cipher) threadLocal.get()).init(1, this.f18935a, algorithmParameterSpecC);
        int iDoFinal = ((Cipher) threadLocal.get()).doFinal(bArr2, 0, length, bArr4, true != this.f18936b ? 0 : 12);
        if (iDoFinal == length + 16) {
            return bArr4;
        }
        throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(iDoFinal - length)));
    }
}
