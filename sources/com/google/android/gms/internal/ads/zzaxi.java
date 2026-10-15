package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxi extends zzgqm implements zzgrx {
    private static final zzaxi zzb;
    private int zzd;
    private String zze = BuildConfig.FLAVOR;
    private zzgqv zzf = zzgqm.u();
    private int zzg = 1000;
    private int zzh = 1000;
    private int zzi = 1000;

    static {
        zzaxi zzaxiVar = new zzaxi();
        zzb = zzaxiVar;
        zzgqm.A(zzaxi.class, zzaxiVar);
    }

    private zzaxi() {
    }

    public static zzaxi J() {
        return zzb;
    }

    static /* synthetic */ void K(zzaxi zzaxiVar, String str) {
        str.getClass();
        zzaxiVar.zzd |= 1;
        zzaxiVar.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            zzgqq zzgqqVar = zzaxr.f10110a;
            return zzgqm.x(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzd", "zze", "zzf", zzaxe.class, "zzg", zzgqqVar, "zzh", zzgqqVar, "zzi", zzgqqVar});
        }
        if (i11 == 3) {
            return new zzaxi();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaxh(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
