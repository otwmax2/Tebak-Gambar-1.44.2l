package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzghf extends zzgqm implements zzgrx {
    private static final zzghf zzb;
    private int zzd;
    private zzghl zze;
    private zzgjz zzf;

    static {
        zzghf zzghfVar = new zzghf();
        zzb = zzghfVar;
        zzgqm.A(zzghf.class, zzghfVar);
    }

    private zzghf() {
    }

    public static zzghe J() {
        return (zzghe) zzb.h();
    }

    public static zzghf L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzghf) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void P(zzghf zzghfVar, zzghl zzghlVar) {
        zzghlVar.getClass();
        zzghfVar.zze = zzghlVar;
    }

    static /* synthetic */ void Q(zzghf zzghfVar, zzgjz zzgjzVar) {
        zzgjzVar.getClass();
        zzghfVar.zzf = zzgjzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzghf();
        }
        zzghd zzghdVar = null;
        if (i11 == 4) {
            return new zzghe(zzghdVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzghl M() {
        zzghl zzghlVar = this.zze;
        return zzghlVar == null ? zzghl.L() : zzghlVar;
    }

    public final zzgjz N() {
        zzgjz zzgjzVar = this.zzf;
        return zzgjzVar == null ? zzgjz.L() : zzgjzVar;
    }
}
