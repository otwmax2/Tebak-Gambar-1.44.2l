package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
final class zzgbq {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte[] f18978g = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgbp f18979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BigInteger f18980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f18981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f18982d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f18983e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private BigInteger f18984f = BigInteger.ZERO;

    private zzgbq(byte[] bArr, byte[] bArr2, byte[] bArr3, BigInteger bigInteger, zzgbp zzgbpVar) {
        this.f18983e = bArr;
        this.f18981c = bArr2;
        this.f18982d = bArr3;
        this.f18980b = bigInteger;
        this.f18979a = zzgbpVar;
    }

    static zzgbq c(byte[] bArr, byte[] bArr2, zzgbt zzgbtVar, zzgbo zzgboVar, zzgbp zzgbpVar, byte[] bArr3) throws GeneralSecurityException {
        byte[] bArrB = zzgcc.b(zzgbtVar.zzb(), zzgboVar.c(), zzgbpVar.zzb());
        byte[] bArr4 = zzgcc.f19010l;
        byte[] bArr5 = f18978g;
        byte[] bArrB2 = zzgmv.b(zzgcc.f18999a, zzgboVar.e(bArr4, bArr5, "psk_id_hash", bArrB), zzgboVar.e(bArr4, bArr3, "info_hash", bArrB));
        byte[] bArrE = zzgboVar.e(bArr2, bArr5, "secret", bArrB);
        byte[] bArrD = zzgboVar.d(bArrE, bArrB2, SDKConstants.PARAM_KEY, bArrB, zzgbpVar.zza());
        byte[] bArrD2 = zzgboVar.d(bArrE, bArrB2, "base_nonce", bArrB, 12);
        BigInteger bigInteger = BigInteger.ONE;
        return new zzgbq(bArr, bArrD, bArrD2, bigInteger.shiftLeft(96).subtract(bigInteger), zzgbpVar);
    }

    private final synchronized byte[] d() throws GeneralSecurityException {
        byte[] bArrC;
        byte[] bArr = this.f18982d;
        BigInteger bigInteger = this.f18984f;
        if (bigInteger.signum() == -1) {
            throw new IllegalArgumentException("integer must be nonnegative");
        }
        byte[] byteArray = bigInteger.toByteArray();
        int length = byteArray.length;
        if (length != 12) {
            if (length > 13) {
                throw new GeneralSecurityException("integer too large");
            }
            if (length != 13) {
                byte[] bArr2 = new byte[12];
                System.arraycopy(byteArray, 0, bArr2, 12 - length, length);
                byteArray = bArr2;
            } else {
                if (byteArray[0] != 0) {
                    throw new GeneralSecurityException("integer too large");
                }
                byteArray = Arrays.copyOfRange(byteArray, 1, 13);
            }
        }
        bArrC = zzgmv.c(bArr, byteArray);
        if (this.f18984f.compareTo(this.f18980b) >= 0) {
            throw new GeneralSecurityException("message limit reached");
        }
        this.f18984f = this.f18984f.add(BigInteger.ONE);
        return bArrC;
    }

    final byte[] a() {
        return this.f18983e;
    }

    final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return this.f18979a.a(this.f18981c, d(), bArr, bArr2);
    }
}
