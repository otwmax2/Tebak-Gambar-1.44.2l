package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgfn extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgfo f19134b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgfn(zzgfo zzgfoVar, Class cls) {
        super(cls);
        this.f19134b = zzgfoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgkc zzgkcVar = (zzgkc) zzgrwVar;
        zzgjy zzgjyVarJ = zzgjz.J();
        zzgjyVarJ.q(0);
        zzgjyVarJ.p(zzgkcVar.N());
        zzgjyVarJ.o(zzgpe.J(zzgoe.a(zzgkcVar.I())));
        return (zzgjz) zzgjyVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgkc.M(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("HMAC_SHA256_128BITTAG", zzgfo.n(32, 16, 5, 1));
        map.put("HMAC_SHA256_128BITTAG_RAW", zzgfo.n(32, 16, 5, 3));
        map.put("HMAC_SHA256_256BITTAG", zzgfo.n(32, 32, 5, 1));
        map.put("HMAC_SHA256_256BITTAG_RAW", zzgfo.n(32, 32, 5, 3));
        map.put("HMAC_SHA512_128BITTAG", zzgfo.n(64, 16, 6, 1));
        map.put("HMAC_SHA512_128BITTAG_RAW", zzgfo.n(64, 16, 6, 3));
        map.put("HMAC_SHA512_256BITTAG", zzgfo.n(64, 32, 6, 1));
        map.put("HMAC_SHA512_256BITTAG_RAW", zzgfo.n(64, 32, 6, 3));
        map.put("HMAC_SHA512_512BITTAG", zzgfo.n(64, 64, 6, 1));
        map.put("HMAC_SHA512_512BITTAG_RAW", zzgfo.n(64, 64, 6, 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgkc zzgkcVar = (zzgkc) zzgrwVar;
        if (zzgkcVar.I() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zzgfo.o(zzgkcVar.N());
    }
}
