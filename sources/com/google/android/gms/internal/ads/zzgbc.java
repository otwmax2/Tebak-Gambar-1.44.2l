package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgbc extends zzgdy {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f18959e = new byte[0];

    zzgbc() {
        super(zzgjm.class, zzgjp.class, new zzgba(zzfvv.class));
    }

    static /* bridge */ /* synthetic */ zzgcs l(int i10, int i11, int i12, zzfwh zzfwhVar, byte[] bArr, int i13) {
        zzgjf zzgjfVarI = zzgjg.I();
        zzgjr zzgjrVarI = zzgjs.I();
        zzgjrVarI.p(4);
        zzgjrVarI.q(5);
        zzgjrVarI.o(zzgpe.J(bArr));
        zzgjs zzgjsVar = (zzgjs) zzgjrVarI.k();
        zzglc zzglcVarI = zzgld.I();
        zzglcVarI.p(zzfwhVar.b());
        zzglcVarI.q(zzgpe.J(zzfwhVar.c()));
        int iD = zzfwhVar.d() - 1;
        zzglcVarI.o(iD != 0 ? iD != 1 ? iD != 2 ? zzgme.CRUNCHY : zzgme.RAW : zzgme.LEGACY : zzgme.TINK);
        zzgld zzgldVar = (zzgld) zzglcVarI.k();
        zzgjc zzgjcVarI = zzgjd.I();
        zzgjcVarI.o(zzgldVar);
        zzgjd zzgjdVar = (zzgjd) zzgjcVarI.k();
        zzgji zzgjiVarJ = zzgjj.J();
        zzgjiVarJ.p(zzgjsVar);
        zzgjiVarJ.o(zzgjdVar);
        zzgjiVarJ.q(i12);
        zzgjfVarI.o((zzgjj) zzgjiVarJ.k());
        return new zzgcs((zzgjg) zzgjfVarI.k(), i13);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzgbb(this, zzgjg.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzgjm.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgjm zzgjmVar = (zzgjm) zzgrwVar;
        if (zzgjmVar.N().j()) {
            throw new GeneralSecurityException("invalid ECIES private key");
        }
        zzgog.b(zzgjmVar.I(), 0);
        zzgbk.a(zzgjmVar.M().J());
    }
}
