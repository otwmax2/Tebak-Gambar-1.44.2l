package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgnf implements zzfvo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgny f19311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfws f19312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f19313c;

    public zzgnf(zzgny zzgnyVar, zzfws zzfwsVar, int i10) {
        this.f19311a = zzgnyVar;
        this.f19312b = zzfwsVar;
        this.f19313c = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i10 = this.f19313c;
        if (length < i10) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, length - i10);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, length - this.f19313c, length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        this.f19312b.a(bArrCopyOfRange2, zzgmv.b(bArr2, bArrCopyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8)));
        return this.f19311a.a(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrA0 = this.f19311a.a0(bArr);
        return zzgmv.b(bArrA0, this.f19312b.a0(zzgmv.b(bArr2, bArrA0, Arrays.copyOf(ByteBuffer.allocate(8).putLong(0L).array(), 8))));
    }
}
