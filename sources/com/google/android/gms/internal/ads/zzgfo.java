package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgfo extends zzgcu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgdr f19135d = zzgdr.b(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzgfl
        @Override // com.google.android.gms.internal.ads.zzgdp
        public final Object a(zzfvx zzfvxVar) {
            return new zzggi((zzgfk) zzfvxVar);
        }
    }, zzgfk.class, zzgfd.class);

    public zzgfo() {
        super(zzgjz.class, new zzgfm(zzfws.class));
    }

    public static void l(boolean z10) throws GeneralSecurityException {
        zzfxf.o(new zzgfo(), true);
        zzgfz.a();
        zzgde.a().e(f19135d);
    }

    public static final void m(zzgjz zzgjzVar) throws GeneralSecurityException {
        zzgog.b(zzgjzVar.I(), 0);
        if (zzgjzVar.O().o() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        o(zzgjzVar.N());
    }

    static /* bridge */ /* synthetic */ zzgcs n(int i10, int i11, int i12, int i13) {
        zzgkb zzgkbVarJ = zzgkc.J();
        zzgke zzgkeVarJ = zzgkf.J();
        zzgkeVarJ.p(i12);
        zzgkeVarJ.o(i11);
        zzgkbVarJ.p((zzgkf) zzgkeVarJ.k());
        zzgkbVarJ.o(i10);
        return new zzgcs((zzgkc) zzgkbVarJ.k(), i13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(zzgkf zzgkfVar) throws GeneralSecurityException {
        if (zzgkfVar.I() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int iN = zzgkfVar.N() - 2;
        if (iN == 1) {
            if (zzgkfVar.I() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
            return;
        }
        if (iN == 2) {
            if (zzgkfVar.I() > 48) {
                throw new GeneralSecurityException("tag size too big");
            }
            return;
        }
        if (iN == 3) {
            if (zzgkfVar.I() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (iN == 4) {
            if (zzgkfVar.I() > 64) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            if (iN != 5) {
                throw new GeneralSecurityException("unknown hash type");
            }
            if (zzgkfVar.I() > 28) {
                throw new GeneralSecurityException("tag size too big");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgct a() {
        return new zzgfn(this, zzgkc.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final zzgkx b() {
        return zzgkx.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ zzgrw c(zzgpe zzgpeVar) throws zzgqy {
        return zzgjz.M(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final String d() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void e(zzgrw zzgrwVar) throws GeneralSecurityException {
        m((zzgjz) zzgrwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final int f() {
        return 2;
    }
}
