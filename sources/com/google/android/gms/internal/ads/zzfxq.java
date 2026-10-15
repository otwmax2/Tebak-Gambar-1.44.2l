package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfxq extends zzgcu {
    zzfxq() {
        super(zzghf.class, new zzfxo(zzfvo.class));
    }

    static /* bridge */ /* synthetic */ zzgcs k(int i10, int i11, int i12, int i13, int i14, int i15) {
        zzghn zzghnVarJ = zzgho.J();
        zzghq zzghqVarJ = zzghr.J();
        zzghqVarJ.o(16);
        zzghnVarJ.p((zzghr) zzghqVarJ.k());
        zzghnVarJ.o(i10);
        zzgho zzghoVar = (zzgho) zzghnVarJ.k();
        zzgkb zzgkbVarJ = zzgkc.J();
        zzgke zzgkeVarJ = zzgkf.J();
        zzgkeVarJ.p(5);
        zzgkeVarJ.o(i13);
        zzgkbVarJ.p((zzgkf) zzgkeVarJ.k());
        zzgkbVarJ.o(32);
        zzgkc zzgkcVar = (zzgkc) zzgkbVarJ.k();
        zzghh zzghhVarI = zzghi.I();
        zzghhVarI.o(zzghoVar);
        zzghhVarI.p(zzgkcVar);
        return new zzgcs((zzghi) zzghhVarI.k(), i15);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzfxp(this, zzghi.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzghf.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzghf zzghfVar = (zzghf) zzgrwVar;
        zzgog.b(zzghfVar.I(), 0);
        new zzfxt();
        zzfxt.l(zzghfVar.M());
        new zzgfo();
        zzgfo.m(zzghfVar.N());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final int f() {
        return 2;
    }
}
