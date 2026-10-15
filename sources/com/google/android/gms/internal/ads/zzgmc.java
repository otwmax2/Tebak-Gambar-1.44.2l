package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgmc extends zzgqm implements zzgrx {
    private static final zzgmc zzb;
    private String zzd = BuildConfig.FLAVOR;
    private zzgld zze;

    static {
        zzgmc zzgmcVar = new zzgmc();
        zzb = zzgmcVar;
        zzgqm.A(zzgmc.class, zzgmcVar);
    }

    private zzgmc() {
    }

    public static zzgmc K() {
        return zzb;
    }

    public static zzgmc L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgmc) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzgmc();
        }
        zzgma zzgmaVar = null;
        if (i11 == 4) {
            return new zzgmb(zzgmaVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgld I() {
        zzgld zzgldVar = this.zze;
        return zzgldVar == null ? zzgld.K() : zzgldVar;
    }

    public final String M() {
        return this.zzd;
    }

    public final boolean N() {
        return this.zze != null;
    }
}
