package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbm implements zzgbp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f18976a;

    zzgbm(int i10) throws InvalidAlgorithmParameterException {
        if (i10 == 16 || i10 == 32) {
            this.f18976a = i10;
            return;
        }
        throw new InvalidAlgorithmParameterException("Unsupported key length: " + i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgbp
    public final byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws GeneralSecurityException {
        int length = bArr.length;
        if (length == this.f18976a) {
            return new zzgai(bArr, false).b(bArr2, bArr3, bArr4);
        }
        throw new InvalidAlgorithmParameterException("Unexpected key length: " + length);
    }

    @Override // com.google.android.gms.internal.ads.zzgbp
    public final int zza() {
        return this.f18976a;
    }

    @Override // com.google.android.gms.internal.ads.zzgbp
    public final byte[] zzb() throws GeneralSecurityException {
        int i10 = this.f18976a;
        if (i10 == 16) {
            return zzgcc.f19007i;
        }
        if (i10 == 32) {
            return zzgcc.f19008j;
        }
        throw new GeneralSecurityException("Could not determine HPKE AEAD ID");
    }
}
