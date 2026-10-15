package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgiv extends zzgqm implements zzgrx {
    private static final zzgiv zzb;
    private int zzd;
    private zzgpe zze = zzgpe.f19379p;

    static {
        zzgiv zzgivVar = new zzgiv();
        zzb = zzgivVar;
        zzgqm.A(zzgiv.class, zzgivVar);
    }

    private zzgiv() {
    }

    public static zzgiu J() {
        return (zzgiu) zzb.h();
    }

    public static zzgiv L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgiv) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzgiv();
        }
        zzgit zzgitVar = null;
        if (i11 == 4) {
            return new zzgiu(zzgitVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzgpe M() {
        return this.zze;
    }
}
