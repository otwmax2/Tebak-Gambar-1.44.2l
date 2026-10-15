package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgfm extends zzgds {
    zzgfm(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzgds
    public final /* bridge */ /* synthetic */ Object a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgjz zzgjzVar = (zzgjz) zzgrwVar;
        int iN = zzgjzVar.N().N();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzgjzVar.O().k(), "HMAC");
        int I = zzgjzVar.N().I();
        int i10 = iN - 2;
        if (i10 == 1) {
            return new zzgoc(new zzgob("HMACSHA1", secretKeySpec), I);
        }
        if (i10 == 2) {
            return new zzgoc(new zzgob("HMACSHA384", secretKeySpec), I);
        }
        if (i10 == 3) {
            return new zzgoc(new zzgob("HMACSHA256", secretKeySpec), I);
        }
        if (i10 == 4) {
            return new zzgoc(new zzgob("HMACSHA512", secretKeySpec), I);
        }
        if (i10 == 5) {
            return new zzgoc(new zzgob("HMACSHA224", secretKeySpec), I);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
