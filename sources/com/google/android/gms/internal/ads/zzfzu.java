package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfzu extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfzv f18926b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfzu(zzfzv zzfzvVar, Class cls) {
        super(cls);
        this.f18926b = zzfzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgiu zzgiuVarJ = zzgiv.J();
        zzgiuVarJ.p(0);
        zzgiuVarJ.o(zzgpe.J(zzgoe.a(32)));
        return (zzgiv) zzgiuVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgiy.K(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("CHACHA20_POLY1305", new zzgcs(zzgiy.J(), 1));
        map.put("CHACHA20_POLY1305_RAW", new zzgcs(zzgiy.J(), 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
    }
}
