package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgaf extends zzgcu {
    zzgaf() {
        super(zzgmk.class, new zzgad(zzfvo.class));
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzgae(this, zzgmn.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzgmk.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgmk zzgmkVar = (zzgmk) zzgrwVar;
        zzgog.b(zzgmkVar.I(), 0);
        if (zzgmkVar.M().o() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }
}
