package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgnd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ECPublicKey f19310a;

    public zzgnd(ECPublicKey eCPublicKey) {
        this.f19310a = eCPublicKey;
    }

    public final zzgnc a(String str, byte[] bArr, byte[] bArr2, int i10, int i11) throws GeneralSecurityException {
        KeyPair keyPairB = zzgne.b(this.f19310a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairB.getPublic();
        byte[] bArrE = zzgne.e((ECPrivateKey) keyPairB.getPrivate(), this.f19310a);
        byte[] bArrJ = zzgne.j(eCPublicKey.getParams().getCurve(), i11, eCPublicKey.getW());
        int i12 = 1;
        byte[] bArrB = zzgmv.b(bArrJ, bArrE);
        Mac mac = (Mac) zzgnn.f19318c.a(str);
        if (i10 > mac.getMacLength() * 255) {
            throw new GeneralSecurityException("size too large");
        }
        if (bArr == null || bArr.length == 0) {
            mac.init(new SecretKeySpec(new byte[mac.getMacLength()], str));
        } else {
            mac.init(new SecretKeySpec(bArr, str));
        }
        byte[] bArrDoFinal = mac.doFinal(bArrB);
        byte[] bArr3 = new byte[i10];
        mac.init(new SecretKeySpec(bArrDoFinal, str));
        byte[] bArrDoFinal2 = new byte[0];
        int i13 = 0;
        while (true) {
            mac.update(bArrDoFinal2);
            mac.update(bArr2);
            mac.update((byte) i12);
            bArrDoFinal2 = mac.doFinal();
            int length = bArrDoFinal2.length;
            int i14 = i13 + length;
            if (i14 >= i10) {
                System.arraycopy(bArrDoFinal2, 0, bArr3, i13, i10 - i13);
                return new zzgnc(bArrJ, bArr3);
            }
            System.arraycopy(bArrDoFinal2, 0, bArr3, i13, length);
            i12++;
            i13 = i14;
        }
    }
}
