package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfya extends zzgcu {
    zzfya() {
        super(zzghu.class, new zzfxy(zzfvo.class));
    }

    static /* bridge */ /* synthetic */ zzgcs k(int i10, int i11, int i12) {
        zzghw zzghwVarJ = zzghx.J();
        zzghwVarJ.o(i10);
        zzghz zzghzVarJ = zzgia.J();
        zzghzVarJ.o(16);
        zzghwVarJ.p((zzgia) zzghzVarJ.k());
        return new zzgcs((zzghx) zzghwVarJ.k(), i12);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzfxz(this, zzghx.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzghu.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzghu zzghuVar = (zzghu) zzgrwVar;
        zzgog.b(zzghuVar.I(), 0);
        zzgog.a(zzghuVar.N().o());
        if (zzghuVar.M().I() != 12 && zzghuVar.M().I() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}
