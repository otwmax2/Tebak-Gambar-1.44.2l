package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzglp extends zzgqm implements zzgrx {
    private static final zzglp zzb;
    private String zzd = BuildConfig.FLAVOR;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzglp zzglpVar = new zzglp();
        zzb = zzglpVar;
        zzgqm.A(zzglp.class, zzglpVar);
    }

    private zzglp() {
    }

    public static zzglo I() {
        return (zzglo) zzb.h();
    }

    static /* synthetic */ void K(zzglp zzglpVar, String str) {
        str.getClass();
        zzglpVar.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzglp();
        }
        zzglm zzglmVar = null;
        if (i11 == 4) {
            return new zzglo(zzglmVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
