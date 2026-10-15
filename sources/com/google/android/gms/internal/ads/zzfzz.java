package com.google.android.gms.internal.ads;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfzz implements zzfvo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f18928c = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgld f18929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfvo f18930b;

    public zzfzz(zzgld zzgldVar, zzfvo zzfvoVar) {
        this.f18929a = zzgldVar;
        this.f18930b = zzfvoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            int i10 = byteBufferWrap.getInt();
            if (i10 <= 0 || i10 > bArr.length - 4) {
                throw new GeneralSecurityException("invalid ciphertext");
            }
            byte[] bArr3 = new byte[i10];
            byteBufferWrap.get(bArr3, 0, i10);
            byte[] bArr4 = new byte[byteBufferWrap.remaining()];
            byteBufferWrap.get(bArr4, 0, byteBufferWrap.remaining());
            return ((zzfvo) zzfxf.j(this.f18929a.N(), this.f18930b.a(bArr3, f18928c), zzfvo.class)).a(bArr4, bArr2);
        } catch (IndexOutOfBoundsException | NegativeArraySizeException | BufferUnderflowException e10) {
            throw new GeneralSecurityException("invalid ciphertext", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrT = zzfxf.d(this.f18929a).t();
        byte[] bArrB = this.f18930b.b(bArrT, f18928c);
        byte[] bArrB2 = ((zzfvo) zzfxf.j(this.f18929a.N(), bArrT, zzfvo.class)).b(bArr, bArr2);
        int length = bArrB.length;
        return ByteBuffer.allocate(length + 4 + bArrB2.length).putInt(length).put(bArrB).put(bArrB2).array();
    }
}
