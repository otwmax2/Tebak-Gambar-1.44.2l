package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzggw extends zzgqm implements zzgrx {
    private static final zzggw zzb;
    private int zzd;
    private zzgpe zze = zzgpe.f19379p;
    private zzghc zzf;

    static {
        zzggw zzggwVar = new zzggw();
        zzb = zzggwVar;
        zzgqm.A(zzggw.class, zzggwVar);
    }

    private zzggw() {
    }

    public static zzggv J() {
        return (zzggv) zzb.h();
    }

    public static zzggw L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzggw) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void Q(zzggw zzggwVar, zzghc zzghcVar) {
        zzghcVar.getClass();
        zzggwVar.zzf = zzghcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzggw();
        }
        zzggu zzgguVar = null;
        if (i11 == 4) {
            return new zzggv(zzgguVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzghc M() {
        zzghc zzghcVar = this.zzf;
        return zzghcVar == null ? zzghc.L() : zzghcVar;
    }

    public final zzgpe N() {
        return this.zze;
    }
}
