package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgis extends zzgqm implements zzgrx {
    private static final zzgis zzb;
    private int zzd;
    private int zze;

    static {
        zzgis zzgisVar = new zzgis();
        zzb = zzgisVar;
        zzgqm.A(zzgis.class, zzgisVar);
    }

    private zzgis() {
    }

    public static zzgir J() {
        return (zzgir) zzb.h();
    }

    public static zzgis L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgis) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzgis();
        }
        zzgiq zzgiqVar = null;
        if (i11 == 4) {
            return new zzgir(zzgiqVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }
}
