package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import javax.crypto.AEADBadTagException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzgam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgak f18939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgak f18940b;

    public zzgam(byte[] bArr) throws GeneralSecurityException {
        if (!zzgas.a(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        this.f18939a = a(bArr, 1);
        this.f18940b = a(bArr, 0);
    }

    private final byte[] e(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2 = new byte[32];
        this.f18940b.c(bArr, 0).get(bArr2);
        return bArr2;
    }

    private static byte[] f(byte[] bArr, ByteBuffer byteBuffer) {
        int length = bArr.length;
        int i10 = length & 15;
        int i11 = i10 == 0 ? length : (length + 16) - i10;
        int iRemaining = byteBuffer.remaining();
        int i12 = iRemaining % 16;
        int i13 = (i12 == 0 ? iRemaining : (iRemaining + 16) - i12) + i11;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(i13 + 16).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put(bArr);
        byteBufferOrder.position(i11);
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.position(i13);
        byteBufferOrder.putLong(length);
        byteBufferOrder.putLong(iRemaining);
        return byteBufferOrder.array();
    }

    abstract zzgak a(byte[] bArr, int i10) throws InvalidKeyException;

    public final void b(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (byteBuffer.remaining() < bArr2.length + 16) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        int iPosition = byteBuffer.position();
        this.f18939a.d(byteBuffer, bArr, bArr2);
        byteBuffer.position(iPosition);
        byteBuffer.limit(byteBuffer.limit() - 16);
        byte[] bArrA = zzgap.a(e(bArr), f(bArr3, byteBuffer));
        byteBuffer.limit(byteBuffer.limit() + 16);
        byteBuffer.put(bArrA);
    }

    public final byte[] c(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (byteBuffer.remaining() < 16) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        int iPosition = byteBuffer.position();
        byte[] bArr3 = new byte[16];
        byteBuffer.position(byteBuffer.limit() - 16);
        byteBuffer.get(bArr3);
        byteBuffer.position(iPosition);
        byteBuffer.limit(byteBuffer.limit() - 16);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        try {
            if (!MessageDigest.isEqual(zzgap.a(e(bArr), f(bArr2, byteBuffer)), bArr3)) {
                throw new GeneralSecurityException("invalid MAC");
            }
            byteBuffer.position(iPosition);
            return this.f18939a.e(bArr, byteBuffer);
        } catch (GeneralSecurityException e10) {
            throw new AEADBadTagException(e10.toString());
        }
    }

    public final byte[] d(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        int length = bArr2.length;
        if (length > 2147483631) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length + 16);
        b(byteBufferAllocate, bArr, bArr2, bArr3);
        return byteBufferAllocate.array();
    }
}
