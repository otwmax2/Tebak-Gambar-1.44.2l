package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfzi extends zzgcu {
    zzfzi() {
        super(zzgij.class, new zzfzg(zzfvo.class));
    }

    public static void k(boolean z10) throws GeneralSecurityException {
        if (m()) {
            zzfxf.o(new zzfzi(), true);
            zzfzs.a();
        }
    }

    static /* bridge */ /* synthetic */ zzgcs l(int i10, int i11) {
        zzgil zzgilVarJ = zzgim.J();
        zzgilVarJ.o(i10);
        return new zzgcs((zzgim) zzgilVarJ.k(), i11);
    }

    private static boolean m() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzfzh(this, zzgim.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzgij.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgij zzgijVar = (zzgij) zzgrwVar;
        zzgog.b(zzgijVar.I(), 0);
        zzgog.a(zzgijVar.M().o());
    }
}
