package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgcd implements zzgbt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgbo f19014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f19015b;

    private zzgcd(zzgbo zzgboVar, int i10) {
        this.f19014a = zzgboVar;
        this.f19015b = i10;
    }

    static zzgcd b(int i10) throws GeneralSecurityException {
        int i11 = i10 - 1;
        return i11 != 0 ? i11 != 1 ? new zzgcd(new zzgbo("HmacSha512"), 3) : new zzgcd(new zzgbo("HmacSha384"), 2) : new zzgcd(new zzgbo("HmacSha256"), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzgbt
    public final zzgbu a(byte[] bArr) throws GeneralSecurityException {
        KeyPair keyPairB = zzgne.b(zzgne.h(this.f19015b));
        byte[] bArrE = zzgne.e((ECPrivateKey) keyPairB.getPrivate(), zzgne.g(zzgne.h(this.f19015b), 1, bArr));
        byte[] bArrI = zzgne.i(this.f19015b, 1, ((ECPublicKey) keyPairB.getPublic()).getW());
        byte[] bArrB = zzgmv.b(bArrI, bArr);
        byte[] bArrD = zzgcc.d(zzb());
        zzgbo zzgboVar = this.f19014a;
        return new zzgbu(zzgboVar.b(null, bArrE, "eae_prk", bArrB, "shared_secret", bArrD, zzgboVar.a()), bArrI);
    }

    @Override // com.google.android.gms.internal.ads.zzgbt
    public final byte[] zzb() throws GeneralSecurityException {
        int i10 = this.f19015b - 1;
        return i10 != 0 ? i10 != 1 ? zzgcc.f19003e : zzgcc.f19002d : zzgcc.f19001c;
    }
}
