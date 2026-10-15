package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgky extends zzgqm implements zzgrx {
    private static final zzgky zzb;
    private String zzd = BuildConfig.FLAVOR;
    private zzgpe zze = zzgpe.f19379p;
    private int zzf;

    static {
        zzgky zzgkyVar = new zzgky();
        zzb = zzgkyVar;
        zzgqm.A(zzgky.class, zzgkyVar);
    }

    private zzgky() {
    }

    public static zzgkv I() {
        return (zzgkv) zzb.h();
    }

    public static zzgky L() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgky();
        }
        zzgku zzgkuVar = null;
        if (i11 == 4) {
            return new zzgkv(zzgkuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgkx J() {
        zzgkx zzgkxVarC = zzgkx.c(this.zzf);
        return zzgkxVarC == null ? zzgkx.UNRECOGNIZED : zzgkxVarC;
    }

    public final zzgpe M() {
        return this.zze;
    }

    public final String N() {
        return this.zzd;
    }
}
