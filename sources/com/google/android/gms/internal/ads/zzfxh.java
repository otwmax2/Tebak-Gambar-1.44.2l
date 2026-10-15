package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfxh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f18825a = Charset.forName("UTF-8");

    public static zzglq a(zzgll zzgllVar) {
        zzgln zzglnVarI = zzglq.I();
        zzglnVarI.p(zzgllVar.J());
        for (zzglk zzglkVar : zzgllVar.P()) {
            zzglo zzgloVarI = zzglp.I();
            zzgloVarI.q(zzglkVar.J().N());
            zzgloVarI.r(zzglkVar.R());
            zzgloVarI.p(zzglkVar.M());
            zzgloVarI.o(zzglkVar.I());
            zzglnVarI.o((zzglp) zzgloVarI.k());
        }
        return (zzglq) zzglnVarI.k();
    }

    public static void b(zzgll zzgllVar) throws GeneralSecurityException {
        int iJ = zzgllVar.J();
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = true;
        for (zzglk zzglkVar : zzgllVar.P()) {
            if (zzglkVar.R() == 3) {
                if (!zzglkVar.Q()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzglkVar.I())));
                }
                if (zzglkVar.M() == zzgme.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzglkVar.I())));
                }
                if (zzglkVar.R() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzglkVar.I())));
                }
                if (zzglkVar.I() == iJ) {
                    if (z10) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z10 = true;
                }
                z11 &= zzglkVar.J().J() == zzgkx.ASYMMETRIC_PUBLIC;
                i10++;
            }
        }
        if (i10 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z10 && !z11) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
