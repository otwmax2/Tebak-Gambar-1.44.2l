package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgab extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgac f18931b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgab(zzgac zzgacVar, Class cls) {
        super(cls);
        this.f18931b = zzgacVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgly zzglyVarJ = zzglz.J();
        zzglyVarJ.o((zzgmc) zzgrwVar);
        zzglyVarJ.p(0);
        return (zzglz) zzglyVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgmc.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgmc zzgmcVar = (zzgmc) zzgrwVar;
        if (zzgmcVar.M().isEmpty() || !zzgmcVar.N()) {
            throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
        }
    }
}
