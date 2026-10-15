package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgby extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgbz f18996b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgby(zzgbz zzgbzVar, Class cls) {
        super(cls);
        this.f18996b = zzgbzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        byte[] bArrB;
        byte[] bArrC;
        zzgkk zzgkkVar = (zzgkk) zzgrwVar;
        int iN = zzgkkVar.L().N() - 2;
        if (iN == 1) {
            bArrB = zzgoh.b();
            bArrC = zzgoh.c(bArrB);
        } else {
            if (iN != 2 && iN != 3 && iN != 4) {
                throw new GeneralSecurityException("Invalid KEM");
            }
            int iG = zzgcc.g(zzgkkVar.L().N());
            KeyPair keyPairB = zzgne.b(zzgne.h(iG));
            bArrC = zzgne.i(iG, 1, ((ECPublicKey) keyPairB.getPublic()).getW());
            bArrB = ((ECPrivateKey) keyPairB.getPrivate()).getS().toByteArray();
        }
        zzgks zzgksVarK = zzgkt.K();
        zzgksVarK.q(0);
        zzgksVarK.o(zzgkkVar.L());
        zzgksVarK.p(zzgpe.J(bArrC));
        zzgkt zzgktVar = (zzgkt) zzgksVarK.k();
        zzgkp zzgkpVarJ = zzgkq.J();
        zzgkpVarJ.q(0);
        zzgkpVarJ.p(zzgktVar);
        zzgkpVarJ.o(zzgpe.J(bArrB));
        return (zzgkq) zzgkpVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgkk.K(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() {
        HashMap map = new HashMap();
        map.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM", zzgbz.k(3, 3, 3, 1));
        map.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW", zzgbz.k(3, 3, 3, 3));
        map.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM", zzgbz.k(3, 3, 4, 1));
        map.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW", zzgbz.k(3, 3, 4, 3));
        map.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305", zzgbz.k(3, 3, 5, 1));
        map.put("DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW", zzgbz.k(3, 3, 5, 3));
        map.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM", zzgbz.k(4, 3, 3, 1));
        map.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW", zzgbz.k(4, 3, 3, 3));
        map.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM", zzgbz.k(4, 3, 4, 1));
        map.put("DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW", zzgbz.k(4, 3, 4, 3));
        map.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM", zzgbz.k(5, 4, 3, 1));
        map.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW", zzgbz.k(5, 4, 3, 3));
        map.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM", zzgbz.k(5, 4, 4, 1));
        map.put("DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW", zzgbz.k(5, 4, 4, 3));
        map.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM", zzgbz.k(6, 5, 3, 1));
        map.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW", zzgbz.k(6, 5, 3, 3));
        map.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM", zzgbz.k(6, 5, 4, 1));
        map.put("DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW", zzgbz.k(6, 5, 4, 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgcc.a(((zzgkk) zzgrwVar).L());
    }
}
