package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzfwt {
    @Deprecated
    public static final zzfwp a(byte[] bArr) throws GeneralSecurityException {
        try {
            zzgll zzgllVarO = zzgll.O(bArr, zzgpy.a());
            for (zzglk zzglkVar : zzgllVarO.P()) {
                if (zzglkVar.J().J() == zzgkx.UNKNOWN_KEYMATERIAL || zzglkVar.J().J() == zzgkx.SYMMETRIC || zzglkVar.J().J() == zzgkx.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return zzfwp.a(zzgllVarO);
        } catch (zzgqy unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
