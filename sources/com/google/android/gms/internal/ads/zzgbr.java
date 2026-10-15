package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbr implements zzfvv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgbv f18985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgbt f18986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgbp f18987c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgbo f18988d;

    private zzgbr(zzgbv zzgbvVar, zzgbt zzgbtVar, zzgbo zzgboVar, zzgbp zzgbpVar, int i10, byte[] bArr) {
        this.f18985a = zzgbvVar;
        this.f18986b = zzgbtVar;
        this.f18988d = zzgboVar;
        this.f18987c = zzgbpVar;
    }

    static zzgbr a(zzgkq zzgkqVar) throws GeneralSecurityException {
        int i10;
        zzgbv zzgbvVarA;
        if (!zzgkqVar.R()) {
            throw new IllegalArgumentException("HpkePrivateKey is missing public_key field.");
        }
        if (!zzgkqVar.M().S()) {
            throw new IllegalArgumentException("HpkePrivateKey.public_key is missing params field.");
        }
        if (zzgkqVar.N().j()) {
            throw new IllegalArgumentException("HpkePrivateKey.private_key is empty.");
        }
        zzgkn zzgknVarJ = zzgkqVar.M().J();
        zzgbt zzgbtVarB = zzgbw.b(zzgknVarJ);
        zzgbo zzgboVarC = zzgbw.c(zzgknVarJ);
        zzgbp zzgbpVarA = zzgbw.a(zzgknVarJ);
        int iN = zzgknVarJ.N();
        int i11 = iN - 2;
        if (i11 == 1) {
            i10 = 32;
        } else if (i11 == 2) {
            i10 = 65;
        } else if (i11 == 3) {
            i10 = 97;
        } else {
            if (i11 != 4) {
                throw new IllegalArgumentException("Unable to determine KEM-encoding length for ".concat(zzgkh.a(iN)));
            }
            i10 = 133;
        }
        int iN2 = zzgkqVar.M().J().N() - 2;
        if (iN2 == 1) {
            zzgbvVarA = zzgcg.a(zzgkqVar.N().k());
        } else {
            if (iN2 != 2 && iN2 != 3 && iN2 != 4) {
                throw new GeneralSecurityException("Unrecognized HPKE KEM identifier");
            }
            zzgbvVarA = zzgce.a(zzgkqVar.N().k(), zzgkqVar.M().O().k(), zzgcc.g(zzgkqVar.M().J().N()));
        }
        return new zzgbr(zzgbvVarA, zzgbtVarB, zzgboVarC, zzgbpVarA, i10, null);
    }
}
