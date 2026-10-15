package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfyq extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfyr f18875b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfyq(zzfyr zzfyrVar, Class cls) {
        super(cls);
        this.f18875b = zzfyrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgic zzgicVarJ = zzgid.J();
        zzgicVarJ.o(zzgpe.J(zzgoe.a(((zzgig) zzgrwVar).I())));
        zzgicVarJ.p(0);
        return (zzgid) zzgicVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgig.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("AES128_GCM", zzfyr.k(16, 1));
        map.put("AES128_GCM_RAW", zzfyr.k(16, 3));
        map.put("AES256_GCM", zzfyr.k(32, 1));
        map.put("AES256_GCM_RAW", zzfyr.k(32, 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgog.a(((zzgig) zzgrwVar).I());
    }
}
