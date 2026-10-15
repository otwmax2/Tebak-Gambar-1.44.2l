package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfzh extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfzi f18907b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfzh(zzfzi zzfziVar, Class cls) {
        super(cls);
        this.f18907b = zzfziVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgii zzgiiVarJ = zzgij.J();
        zzgiiVarJ.o(zzgpe.J(zzgoe.a(((zzgim) zzgrwVar).I())));
        zzgiiVarJ.p(0);
        return (zzgij) zzgiiVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgim.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("AES128_GCM_SIV", zzfzi.l(16, 1));
        map.put("AES128_GCM_SIV_RAW", zzfzi.l(16, 3));
        map.put("AES256_GCM_SIV", zzfzi.l(32, 1));
        map.put("AES256_GCM_SIV_RAW", zzfzi.l(32, 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgog.a(((zzgim) zzgrwVar).I());
    }
}
