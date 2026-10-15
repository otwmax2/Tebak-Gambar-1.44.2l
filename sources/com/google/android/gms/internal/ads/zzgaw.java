package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgaw extends zzgcu {
    zzgaw() {
        super(zzgip.class, new zzgau(zzfvu.class));
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzgav(this, zzgis.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzgip.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgip zzgipVar = (zzgip) zzgrwVar;
        zzgog.b(zzgipVar.I(), 0);
        if (zzgipVar.M().o() == 64) {
            return;
        }
        throw new InvalidKeyException("invalid key size: " + zzgipVar.M().o() + ". Valid keys must have 64 bytes.");
    }
}
