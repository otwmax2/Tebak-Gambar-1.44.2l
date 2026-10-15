package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgcf implements zzgbt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgbo f19018a;

    zzgcf(zzgbo zzgboVar) {
        this.f19018a = zzgboVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgbt
    public final zzgbu a(byte[] bArr) throws GeneralSecurityException {
        byte[] bArrB = zzgoh.b();
        byte[] bArrA = zzgoh.a(bArrB, bArr);
        byte[] bArrC = zzgoh.c(bArrB);
        byte[] bArrB2 = zzgmv.b(bArrC, bArr);
        byte[] bArrD = zzgcc.d(zzgcc.f19000b);
        zzgbo zzgboVar = this.f19018a;
        return new zzgbu(zzgboVar.b(null, bArrA, "eae_prk", bArrB2, "shared_secret", bArrD, zzgboVar.a()), bArrC);
    }

    @Override // com.google.android.gms.internal.ads.zzgbt
    public final byte[] zzb() throws GeneralSecurityException {
        if (Arrays.equals(this.f19018a.c(), zzgcc.f19004f)) {
            return zzgcc.f19000b;
        }
        throw new GeneralSecurityException("Could not determine HPKE KEM ID");
    }
}
