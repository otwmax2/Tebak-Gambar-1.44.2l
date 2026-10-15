package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzges extends zzgcu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgdr f19102d = zzgdr.b(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzgep
        @Override // com.google.android.gms.internal.ads.zzgdp
        public final Object a(zzfvx zzfvxVar) {
            return new zzggh((zzgeo) zzfvxVar);
        }
    }, zzgeo.class, zzgfd.class);

    zzges() {
        super(zzggw.class, new zzgeq(zzfws.class));
    }

    public static void m(boolean z10) throws GeneralSecurityException {
        zzfxf.o(new zzges(), true);
        zzgfc.a();
        zzgde.a().e(f19102d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(zzghc zzghcVar) throws GeneralSecurityException {
        if (zzghcVar.I() < 10) {
            throw new GeneralSecurityException("tag size too short");
        }
        if (zzghcVar.I() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(int i10) throws GeneralSecurityException {
        if (i10 != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzger(this, zzggz.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzggw.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzggw zzggwVar = (zzggw) zzgrwVar;
        zzgog.b(zzggwVar.I(), 0);
        o(zzggwVar.N().o());
        n(zzggwVar.M());
    }
}
