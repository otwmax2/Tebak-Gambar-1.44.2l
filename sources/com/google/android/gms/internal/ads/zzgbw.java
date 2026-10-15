package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbw {
    static zzgbp a(zzgkn zzgknVar) throws GeneralSecurityException {
        if (zzgknVar.L() == 3) {
            return new zzgbm(16);
        }
        if (zzgknVar.L() == 4) {
            return new zzgbm(32);
        }
        if (zzgknVar.L() == 5) {
            return new zzgbn();
        }
        throw new IllegalArgumentException("Unrecognized HPKE AEAD identifier");
    }

    static zzgbt b(zzgkn zzgknVar) throws GeneralSecurityException {
        if (zzgknVar.N() == 3) {
            return new zzgcf(new zzgbo("HmacSha256"));
        }
        if (zzgknVar.N() == 4) {
            return zzgcd.b(1);
        }
        if (zzgknVar.N() == 5) {
            return zzgcd.b(2);
        }
        if (zzgknVar.N() == 6) {
            return zzgcd.b(3);
        }
        throw new IllegalArgumentException("Unrecognized HPKE KEM identifier");
    }

    static zzgbo c(zzgkn zzgknVar) {
        if (zzgknVar.M() == 3) {
            return new zzgbo("HmacSha256");
        }
        if (zzgknVar.M() == 4) {
            return new zzgbo("HmacSha384");
        }
        if (zzgknVar.M() == 5) {
            return new zzgbo("HmacSha512");
        }
        throw new IllegalArgumentException("Unrecognized HPKE KDF identifier");
    }
}
