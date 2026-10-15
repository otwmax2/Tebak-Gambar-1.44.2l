package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgav extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgaw f18945b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgav(zzgaw zzgawVar, Class cls) {
        super(cls);
        this.f18945b = zzgawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgio zzgioVarJ = zzgip.J();
        zzgioVarJ.o(zzgpe.J(zzgoe.a(((zzgis) zzgrwVar).I())));
        zzgioVarJ.p(0);
        return (zzgip) zzgioVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgis.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        zzgir zzgirVarJ = zzgis.J();
        zzgirVarJ.o(64);
        map.put("AES256_SIV", new zzgcs((zzgis) zzgirVarJ.k(), 1));
        zzgir zzgirVarJ2 = zzgis.J();
        zzgirVarJ2.o(64);
        map.put("AES256_SIV_RAW", new zzgcs((zzgis) zzgirVarJ2.k(), 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgis zzgisVar = (zzgis) zzgrwVar;
        if (zzgisVar.I() == 64) {
            return;
        }
        throw new InvalidAlgorithmParameterException("invalid key size: " + zzgisVar.I() + ". Valid keys must have 64 bytes.");
    }
}
