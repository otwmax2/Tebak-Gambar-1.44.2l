package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbd extends zzgds {
    zzgbd(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzgds
    public final /* bridge */ /* synthetic */ Object a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgjp zzgjpVar = (zzgjp) zzgrwVar;
        zzgjj zzgjjVarJ = zzgjpVar.J();
        zzgjs zzgjsVarM = zzgjjVarJ.M();
        int iC = zzgbk.c(zzgjsVarM.N());
        byte[] bArrK = zzgjpVar.O().k();
        byte[] bArrK2 = zzgjpVar.P().k();
        ECParameterSpec eCParameterSpecH = zzgne.h(iC);
        ECPoint eCPoint = new ECPoint(new BigInteger(1, bArrK), new BigInteger(1, bArrK2));
        zzgcj.b(eCPoint, eCParameterSpecH.getCurve());
        return new zzgna((ECPublicKey) ((KeyFactory) zzgnn.f19323h.a("EC")).generatePublic(new ECPublicKeySpec(eCPoint, eCParameterSpecH)), zzgjsVarM.L().k(), zzgbk.b(zzgjsVarM.O()), zzgbk.d(zzgjjVarJ.P()), new zzgbl(zzgjjVarJ.I().L()));
    }
}
