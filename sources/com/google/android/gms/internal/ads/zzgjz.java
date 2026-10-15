package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgjz extends zzgqm implements zzgrx {
    private static final zzgjz zzb;
    private int zzd;
    private zzgkf zze;
    private zzgpe zzf = zzgpe.f19379p;

    static {
        zzgjz zzgjzVar = new zzgjz();
        zzb = zzgjzVar;
        zzgqm.A(zzgjz.class, zzgjzVar);
    }

    private zzgjz() {
    }

    public static zzgjy J() {
        return (zzgjy) zzb.h();
    }

    public static zzgjz L() {
        return zzb;
    }

    public static zzgjz M(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgjz) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void Q(zzgjz zzgjzVar, zzgkf zzgkfVar) {
        zzgkfVar.getClass();
        zzgjzVar.zze = zzgkfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgjz();
        }
        zzgjx zzgjxVar = null;
        if (i11 == 4) {
            return new zzgjy(zzgjxVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzgkf N() {
        zzgkf zzgkfVar = this.zze;
        return zzgkfVar == null ? zzgkf.L() : zzgkfVar;
    }

    public final zzgpe O() {
        return this.zzf;
    }
}
