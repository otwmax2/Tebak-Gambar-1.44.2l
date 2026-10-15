package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfyr extends zzgcu {
    zzfyr() {
        super(zzgid.class, new zzfyp(zzfvo.class));
    }

    static /* bridge */ /* synthetic */ zzgcs k(int i10, int i11) {
        zzgif zzgifVarJ = zzgig.J();
        zzgifVarJ.o(i10);
        return new zzgcs((zzgig) zzgifVarJ.k(), i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzfyq(this, zzgig.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzgid.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzgid zzgidVar = (zzgid) zzgrwVar;
        zzgog.b(zzgidVar.I(), 0);
        zzgog.a(zzgidVar.M().o());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final int f() {
        return 2;
    }
}
