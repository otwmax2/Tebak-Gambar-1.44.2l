package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfxs extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfxt f18837b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfxs(zzfxt zzfxtVar, Class cls) {
        super(cls);
        this.f18837b = zzfxtVar;
    }

    public static final zzghl g(zzgho zzghoVar) throws GeneralSecurityException {
        zzghk zzghkVarJ = zzghl.J();
        zzghkVarJ.p(zzghoVar.N());
        zzghkVarJ.o(zzgpe.J(zzgoe.a(zzghoVar.I())));
        zzghkVarJ.q(0);
        return (zzghl) zzghkVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        return g((zzgho) zzgrwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzgho.M(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final void d(zzgho zzghoVar) throws GeneralSecurityException {
        zzgog.a(zzghoVar.I());
        zzfxt zzfxtVar = this.f18837b;
        zzfxt.m(zzghoVar.N());
    }
}
