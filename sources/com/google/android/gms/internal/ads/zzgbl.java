package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbl implements zzgmy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzgid f18972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzghf f18973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f18974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzgip f18975f;

    zzgbl(zzgld zzgldVar) throws GeneralSecurityException {
        String strN = zzgldVar.N();
        this.f18970a = strN;
        if (strN.equals(zzfxi.f18827b)) {
            try {
                zzgig zzgigVarL = zzgig.L(zzgldVar.M(), zzgpy.a());
                this.f18972c = (zzgid) zzfxf.d(zzgldVar);
                this.f18971b = zzgigVarL.I();
                return;
            } catch (zzgqy e10) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e10);
            }
        }
        if (strN.equals(zzfxi.f18826a)) {
            try {
                zzghi zzghiVarK = zzghi.K(zzgldVar.M(), zzgpy.a());
                this.f18973d = (zzghf) zzfxf.d(zzgldVar);
                this.f18974e = zzghiVarK.L().I();
                this.f18971b = this.f18974e + zzghiVarK.M().I();
                return;
            } catch (zzgqy e11) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e11);
            }
        }
        if (!strN.equals(zzgax.f18946a)) {
            throw new GeneralSecurityException("unsupported AEAD DEM key type: ".concat(String.valueOf(strN)));
        }
        try {
            zzgis zzgisVarL = zzgis.L(zzgldVar.M(), zzgpy.a());
            this.f18975f = (zzgip) zzfxf.d(zzgldVar);
            this.f18971b = zzgisVarL.I();
        } catch (zzgqy e12) {
            throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e12);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmy
    public final zzgch a0(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length != this.f18971b) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        }
        if (this.f18970a.equals(zzfxi.f18827b)) {
            zzgic zzgicVarJ = zzgid.J();
            zzgicVarJ.i(this.f18972c);
            zzgicVarJ.o(zzgpe.L(bArr, 0, this.f18971b));
            return new zzgch((zzfvo) zzfxf.i(this.f18970a, (zzgid) zzgicVarJ.k(), zzfvo.class));
        }
        if (!this.f18970a.equals(zzfxi.f18826a)) {
            if (!this.f18970a.equals(zzgax.f18946a)) {
                throw new GeneralSecurityException("unknown DEM key type");
            }
            zzgio zzgioVarJ = zzgip.J();
            zzgioVarJ.i(this.f18975f);
            zzgioVarJ.o(zzgpe.L(bArr, 0, this.f18971b));
            return new zzgch((zzfvu) zzfxf.i(this.f18970a, (zzgip) zzgioVarJ.k(), zzfvu.class));
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, this.f18974e);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, this.f18974e, this.f18971b);
        zzghk zzghkVarJ = zzghl.J();
        zzghkVarJ.i(this.f18973d.M());
        zzghkVarJ.o(zzgpe.J(bArrCopyOfRange));
        zzghl zzghlVar = (zzghl) zzghkVarJ.k();
        zzgjy zzgjyVarJ = zzgjz.J();
        zzgjyVarJ.i(this.f18973d.N());
        zzgjyVarJ.o(zzgpe.J(bArrCopyOfRange2));
        zzgjz zzgjzVar = (zzgjz) zzgjyVarJ.k();
        zzghe zzgheVarJ = zzghf.J();
        zzgheVarJ.q(this.f18973d.I());
        zzgheVarJ.o(zzghlVar);
        zzgheVarJ.p(zzgjzVar);
        return new zzgch((zzfvo) zzfxf.i(this.f18970a, (zzghf) zzgheVarJ.k(), zzfvo.class));
    }

    @Override // com.google.android.gms.internal.ads.zzgmy
    public final int zza() {
        return this.f18971b;
    }
}
