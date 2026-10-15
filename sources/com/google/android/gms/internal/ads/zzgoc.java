package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.MessageDigest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgoc implements zzfws {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzggt f19347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f19348b;

    public zzgoc(zzggt zzggtVar, int i10) throws GeneralSecurityException {
        this.f19347a = zzggtVar;
        this.f19348b = i10;
        if (i10 < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        zzggtVar.a(new byte[0], i10);
    }

    @Override // com.google.android.gms.internal.ads.zzfws
    public final void a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!MessageDigest.isEqual(a0(bArr2), bArr)) {
            throw new GeneralSecurityException("invalid MAC");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfws
    public final byte[] a0(byte[] bArr) throws GeneralSecurityException {
        return this.f19347a.a(bArr, this.f19348b);
    }
}
