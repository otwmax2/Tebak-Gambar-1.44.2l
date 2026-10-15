package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzglz extends zzgqm implements zzgrx {
    private static final zzglz zzb;
    private int zzd;
    private zzgmc zze;

    static {
        zzglz zzglzVar = new zzglz();
        zzb = zzglzVar;
        zzgqm.A(zzglz.class, zzglzVar);
    }

    private zzglz() {
    }

    public static zzgly J() {
        return (zzgly) zzb.h();
    }

    public static zzglz L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzglz) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void O(zzglz zzglzVar, zzgmc zzgmcVar) {
        zzgmcVar.getClass();
        zzglzVar.zze = zzgmcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzglz();
        }
        zzglx zzglxVar = null;
        if (i11 == 4) {
            return new zzgly(zzglxVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzgmc M() {
        zzgmc zzgmcVar = this.zze;
        return zzgmcVar == null ? zzgmc.K() : zzgmcVar;
    }
}
