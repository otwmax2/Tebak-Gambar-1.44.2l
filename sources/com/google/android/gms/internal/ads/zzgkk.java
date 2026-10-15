package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgkk extends zzgqm implements zzgrx {
    private static final zzgkk zzb;
    private zzgkn zzd;

    static {
        zzgkk zzgkkVar = new zzgkk();
        zzb = zzgkkVar;
        zzgqm.A(zzgkk.class, zzgkkVar);
    }

    private zzgkk() {
    }

    public static zzgkj I() {
        return (zzgkj) zzb.h();
    }

    public static zzgkk K(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgkk) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void M(zzgkk zzgkkVar, zzgkn zzgknVar) {
        zzgknVar.getClass();
        zzgkkVar.zzd = zzgknVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new zzgkk();
        }
        zzgki zzgkiVar = null;
        if (i11 == 4) {
            return new zzgkj(zzgkiVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgkn L() {
        zzgkn zzgknVar = this.zzd;
        return zzgknVar == null ? zzgkn.K() : zzgknVar;
    }
}
