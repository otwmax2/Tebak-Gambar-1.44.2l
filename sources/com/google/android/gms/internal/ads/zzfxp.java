package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfxp extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfxq f18836b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfxp(zzfxq zzfxqVar, Class cls) {
        super(cls);
        this.f18836b = zzfxqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzghi zzghiVar = (zzghi) zzgrwVar;
        new zzfxt();
        zzghl zzghlVarG = zzfxs.g(zzghiVar.L());
        zzgrw zzgrwVarA = new zzgfo().a().a(zzghiVar.M());
        zzghe zzgheVarJ = zzghf.J();
        zzgheVarJ.o(zzghlVarG);
        zzgheVarJ.p((zzgjz) zzgrwVarA);
        zzgheVarJ.q(0);
        return (zzghf) zzgheVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzghi.K(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("AES128_CTR_HMAC_SHA256", zzfxq.k(16, 16, 32, 16, 5, 1));
        map.put("AES128_CTR_HMAC_SHA256_RAW", zzfxq.k(16, 16, 32, 16, 5, 3));
        map.put("AES256_CTR_HMAC_SHA256", zzfxq.k(32, 16, 32, 32, 5, 1));
        map.put("AES256_CTR_HMAC_SHA256_RAW", zzfxq.k(32, 16, 32, 32, 5, 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzghi zzghiVar = (zzghi) zzgrwVar;
        ((zzfxs) new zzfxt().a()).d(zzghiVar.L());
        new zzgfo().a().d(zzghiVar.M());
        zzgog.a(zzghiVar.L().I());
    }
}
