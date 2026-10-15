package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfiq extends zzgqm implements zzgrx {
    private static final zzfiq zzb;
    private int zzd;
    private int zze;
    private String zzf = BuildConfig.FLAVOR;
    private String zzg = BuildConfig.FLAVOR;
    private zzfim zzh;

    static {
        zzfiq zzfiqVar = new zzfiq();
        zzb = zzfiqVar;
        zzgqm.A(zzfiq.class, zzfiqVar);
    }

    private zzfiq() {
    }

    public static zzfio I() {
        return (zzfio) zzb.h();
    }

    static /* synthetic */ void K(zzfiq zzfiqVar, String str) {
        str.getClass();
        zzfiqVar.zzd |= 2;
        zzfiqVar.zzf = str;
    }

    static /* synthetic */ void L(zzfiq zzfiqVar, zzfim zzfimVar) {
        zzfimVar.getClass();
        zzfiqVar.zzh = zzfimVar;
        zzfiqVar.zzd |= 8;
    }

    static /* synthetic */ void M(zzfiq zzfiqVar, int i10) {
        zzfiqVar.zze = 1;
        zzfiqVar.zzd = 1 | zzfiqVar.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzd", "zze", zzfip.f18279a, "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzfiq();
        }
        zzfin zzfinVar = null;
        if (i11 == 4) {
            return new zzfio(zzfinVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
