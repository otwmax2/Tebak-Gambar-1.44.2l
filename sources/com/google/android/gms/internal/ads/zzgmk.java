package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgmk extends zzgqm implements zzgrx {
    private static final zzgmk zzb;
    private int zzd;
    private zzgpe zze = zzgpe.f19379p;

    static {
        zzgmk zzgmkVar = new zzgmk();
        zzb = zzgmkVar;
        zzgqm.A(zzgmk.class, zzgmkVar);
    }

    private zzgmk() {
    }

    public static zzgmj J() {
        return (zzgmj) zzb.h();
    }

    public static zzgmk L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgmk) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzgmk();
        }
        zzgmi zzgmiVar = null;
        if (i11 == 4) {
            return new zzgmj(zzgmiVar);
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
