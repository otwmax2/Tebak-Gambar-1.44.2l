package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgiy extends zzgqm implements zzgrx {
    private static final zzgiy zzb;

    static {
        zzgiy zzgiyVar = new zzgiy();
        zzb = zzgiyVar;
        zzgqm.A(zzgiy.class, zzgiyVar);
    }

    private zzgiy() {
    }

    public static zzgiy J() {
        return zzb;
    }

    public static zzgiy K(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgiy) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        zzgiw zzgiwVar = null;
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0000", null);
        }
        if (i11 == 3) {
            return new zzgiy();
        }
        if (i11 == 4) {
            return new zzgix(zzgiwVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
