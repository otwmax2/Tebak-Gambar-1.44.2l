package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgbz extends zzgdy {
    public zzgbz() {
        super(zzgkq.class, zzgkt.class, new zzgbx(zzfvv.class));
    }

    static /* bridge */ /* synthetic */ zzgcs k(int i10, int i11, int i12, int i13) {
        zzgkm zzgkmVarI = zzgkn.I();
        zzgkmVarI.q(i10);
        zzgkmVarI.p(i11);
        zzgkmVarI.o(i12);
        zzgkn zzgknVar = (zzgkn) zzgkmVarI.k();
        zzgkj zzgkjVarI = zzgkk.I();
        zzgkjVarI.o(zzgknVar);
        return new zzgcs((zzgkk) zzgkjVarI.k(), i13);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzgby(this, zzgkk.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzgkq.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.HpkePrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgkq zzgkqVar = (zzgkq) zzgrwVar;
        if (zzgkqVar.N().j()) {
            throw new GeneralSecurityException("Private key is empty.");
        }
        if (!zzgkqVar.R()) {
            throw new GeneralSecurityException("Missing public key.");
        }
        zzgog.b(zzgkqVar.I(), 0);
        zzgcc.a(zzgkqVar.M().J());
    }
}
