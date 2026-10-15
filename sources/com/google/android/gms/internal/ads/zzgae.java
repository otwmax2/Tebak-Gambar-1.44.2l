package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgae extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgaf f18932b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgae(zzgaf zzgafVar, Class cls) {
        super(cls);
        this.f18932b = zzgafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgmj zzgmjVarJ = zzgmk.J();
        zzgmjVarJ.p(0);
        zzgmjVarJ.o(zzgpe.J(zzgoe.a(32)));
        return (zzgmk) zzgmjVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgmn.K(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("XCHACHA20_POLY1305", new zzgcs(zzgmn.J(), 1));
        map.put("XCHACHA20_POLY1305_RAW", new zzgcs(zzgmn.J(), 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
    }
}
