package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgvq extends zzgqm implements zzgrx {
    private static final zzgvq zzb;
    private int zzd;
    private long zzf;
    private boolean zzg;
    private int zzh;
    private String zze = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;
    private String zzj = BuildConfig.FLAVOR;

    static {
        zzgvq zzgvqVar = new zzgvq();
        zzb = zzgvqVar;
        zzgqm.A(zzgvq.class, zzgvqVar);
    }

    private zzgvq() {
    }

    public static zzgvp I() {
        return (zzgvp) zzb.h();
    }

    static /* synthetic */ void K(zzgvq zzgvqVar, String str) {
        zzgvqVar.zzd |= 1;
        zzgvqVar.zze = str;
    }

    static /* synthetic */ void L(zzgvq zzgvqVar, long j10) {
        zzgvqVar.zzd |= 2;
        zzgvqVar.zzf = j10;
    }

    static /* synthetic */ void M(zzgvq zzgvqVar, boolean z10) {
        zzgvqVar.zzd |= 4;
        zzgvqVar.zzg = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004ဌ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzgvr.f19676a, "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzgvq();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgvp(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
