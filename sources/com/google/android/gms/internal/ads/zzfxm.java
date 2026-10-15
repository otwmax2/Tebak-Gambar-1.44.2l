package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.logging.Level;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfxm implements zzfvo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfxb f18831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzggm f18832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzggm f18833c;

    /* synthetic */ zzfxm(zzfxb zzfxbVar, zzfxl zzfxlVar) {
        zzggm zzggmVarA;
        this.f18831a = zzfxbVar;
        if (zzfxbVar.f()) {
            zzggn zzggnVarB = zzgdd.a().b();
            zzggs zzggsVarA = zzgda.a(zzfxbVar);
            this.f18832b = zzggnVarB.a(zzggsVarA, "aead", "encrypt");
            zzggmVarA = zzggnVarB.a(zzggsVarA, "aead", "decrypt");
        } else {
            zzggmVarA = zzgda.f19046a;
            this.f18832b = zzggmVarA;
        }
        this.f18833c = zzggmVarA;
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length > 5) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, length);
            for (zzfwx zzfwxVar : this.f18831a.e(bArrCopyOf)) {
                try {
                    byte[] bArrA = ((zzfvo) zzfwxVar.e()).a(bArrCopyOfRange, bArr2);
                    zzfwxVar.a();
                    int length2 = bArrCopyOfRange.length;
                    return bArrA;
                } catch (GeneralSecurityException e10) {
                    zzfxn.f18834a.logp(Level.INFO, "com.google.crypto.tink.aead.AeadWrapper$WrappedAead", "decrypt", "ciphertext prefix matches a key, but cannot decrypt: ".concat(e10.toString()));
                }
            }
        }
        for (zzfwx zzfwxVar2 : this.f18831a.e(zzfvt.f18764a)) {
            try {
                byte[] bArrA2 = ((zzfvo) zzfwxVar2.e()).a(bArr, bArr2);
                zzfwxVar2.a();
                return bArrA2;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            byte[] bArrB = zzgmv.b(this.f18831a.a().g(), ((zzfvo) this.f18831a.a().e()).b(bArr, bArr2));
            this.f18831a.a().a();
            int length = bArr.length;
            return bArrB;
        } catch (GeneralSecurityException e10) {
            throw e10;
        }
    }
}
