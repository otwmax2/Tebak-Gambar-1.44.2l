package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgmn extends zzgqm implements zzgrx {
    private static final zzgmn zzb;
    private int zzd;

    static {
        zzgmn zzgmnVar = new zzgmn();
        zzb = zzgmnVar;
        zzgqm.A(zzgmn.class, zzgmnVar);
    }

    private zzgmn() {
    }

    public static zzgmn J() {
        return zzb;
    }

    public static zzgmn K(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgmn) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new zzgmn();
        }
        zzgml zzgmlVar = null;
        if (i11 == 4) {
            return new zzgmm(zzgmlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
