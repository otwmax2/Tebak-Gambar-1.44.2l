package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfxt extends zzgcu {
    zzfxt() {
        super(zzghl.class, new zzfxr(zzgny.class));
    }

    public static final void l(zzghl zzghlVar) throws GeneralSecurityException {
        zzgog.b(zzghlVar.I(), 0);
        zzgog.a(zzghlVar.O().o());
        m(zzghlVar.N());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(zzghr zzghrVar) throws GeneralSecurityException {
        if (zzghrVar.I() < 12 || zzghrVar.I() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzfxs(this, zzgho.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzghl.M(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        l((zzghl) zzgrwVar);
    }
}
