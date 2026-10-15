package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgkc extends zzgqm implements zzgrx {
    private static final zzgkc zzb;
    private zzgkf zzd;
    private int zze;
    private int zzf;

    static {
        zzgkc zzgkcVar = new zzgkc();
        zzb = zzgkcVar;
        zzgqm.A(zzgkc.class, zzgkcVar);
    }

    private zzgkc() {
    }

    public static zzgkb J() {
        return (zzgkb) zzb.h();
    }

    public static zzgkc L() {
        return zzb;
    }

    public static zzgkc M(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgkc) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void O(zzgkc zzgkcVar, zzgkf zzgkfVar) {
        zzgkfVar.getClass();
        zzgkcVar.zzd = zzgkfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgkc();
        }
        zzgka zzgkaVar = null;
        if (i11 == 4) {
            return new zzgkb(zzgkaVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zze;
    }

    public final zzgkf N() {
        zzgkf zzgkfVar = this.zzd;
        return zzgkfVar == null ? zzgkf.L() : zzgkfVar;
    }
}
