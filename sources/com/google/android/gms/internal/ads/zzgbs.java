package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbs implements zzfvw {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f18989e = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgkt f18990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgbt f18991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgbp f18992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgbo f18993d;

    private zzgbs(zzgkt zzgktVar, zzgbt zzgbtVar, zzgbo zzgboVar, zzgbp zzgbpVar, byte[] bArr) {
        this.f18990a = zzgktVar;
        this.f18991b = zzgbtVar;
        this.f18993d = zzgboVar;
        this.f18992c = zzgbpVar;
    }

    static zzgbs b(zzgkt zzgktVar) throws GeneralSecurityException {
        if (zzgktVar.O().j()) {
            throw new IllegalArgumentException("HpkePublicKey.public_key is empty.");
        }
        zzgkn zzgknVarJ = zzgktVar.J();
        return new zzgbs(zzgktVar, zzgbw.b(zzgknVarJ), zzgbw.c(zzgknVarJ), zzgbw.a(zzgknVarJ), null);
    }

    @Override // com.google.android.gms.internal.ads.zzfvw
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArr3 = bArr2;
        zzgkt zzgktVar = this.f18990a;
        zzgbt zzgbtVar = this.f18991b;
        zzgbo zzgboVar = this.f18993d;
        zzgbp zzgbpVar = this.f18992c;
        zzgbu zzgbuVarA = zzgbtVar.a(zzgktVar.O().k());
        zzgbq zzgbqVarC = zzgbq.c(zzgbuVarA.a(), zzgbuVarA.b(), zzgbtVar, zzgboVar, zzgbpVar, bArr3);
        return zzgmv.b(zzgbqVarC.a(), zzgbqVarC.b(bArr, f18989e));
    }
}
