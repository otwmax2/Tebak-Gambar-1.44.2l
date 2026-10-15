package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbb extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgbc f18958b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgbb(zzgbc zzgbcVar, Class cls) {
        super(cls);
        this.f18958b = zzgbcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgjg zzgjgVar = (zzgjg) zzgrwVar;
        KeyPair keyPairB = zzgne.b(zzgne.h(zzgbk.c(zzgjgVar.L().M().N())));
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairB.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairB.getPrivate();
        ECPoint w10 = eCPublicKey.getW();
        zzgjo zzgjoVarK = zzgjp.K();
        zzgjoVarK.p(0);
        zzgjoVarK.o(zzgjgVar.L());
        zzgjoVarK.q(zzgpe.J(w10.getAffineX().toByteArray()));
        zzgjoVarK.r(zzgpe.J(w10.getAffineY().toByteArray()));
        zzgjp zzgjpVar = (zzgjp) zzgjoVarK.k();
        zzgjl zzgjlVarJ = zzgjm.J();
        zzgjlVarJ.q(0);
        zzgjlVarJ.p(zzgjpVar);
        zzgjlVarJ.o(zzgpe.J(eCPrivateKey.getS().toByteArray()));
        return (zzgjm) zzgjlVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgjg.K(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM", zzgbc.l(4, 5, 3, zzfwi.a("AES128_GCM"), zzgbc.f18959e, 1));
        map.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW", zzgbc.l(4, 5, 3, zzfwi.a("AES128_GCM"), zzgbc.f18959e, 3));
        map.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM", zzgbc.l(4, 5, 4, zzfwi.a("AES128_GCM"), zzgbc.f18959e, 1));
        map.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW", zzgbc.l(4, 5, 4, zzfwi.a("AES128_GCM"), zzgbc.f18959e, 3));
        map.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX", zzgbc.l(4, 5, 4, zzfwi.a("AES128_GCM"), zzgbc.f18959e, 3));
        map.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", zzgbc.l(4, 5, 3, zzfwi.a("AES128_CTR_HMAC_SHA256"), zzgbc.f18959e, 1));
        map.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", zzgbc.l(4, 5, 3, zzfwi.a("AES128_CTR_HMAC_SHA256"), zzgbc.f18959e, 3));
        map.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", zzgbc.l(4, 5, 4, zzfwi.a("AES128_CTR_HMAC_SHA256"), zzgbc.f18959e, 1));
        map.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", zzgbc.l(4, 5, 4, zzfwi.a("AES128_CTR_HMAC_SHA256"), zzgbc.f18959e, 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgbk.a(((zzgjg) zzgrwVar).L());
    }
}
