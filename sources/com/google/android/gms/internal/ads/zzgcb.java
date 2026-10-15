package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgcb extends zzgcu {
    public zzgcb() {
        super(zzgkt.class, new zzgca(zzfvw.class));
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.ASYMMETRIC_PUBLIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzgkt.N(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.HpkePublicKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgkt zzgktVar = (zzgkt) zzgrwVar;
        zzgog.b(zzgktVar.I(), 0);
        if (!zzgktVar.S()) {
            throw new GeneralSecurityException("Missing HPKE key params.");
        }
        zzgcc.a(zzgktVar.J());
    }
}
