package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxm extends zzgqm implements zzgrx {
    private static final zzaxm zzb;
    private int zzd;
    private zzazc zzf;
    private int zzg;
    private zzaze zzh;
    private int zzi;
    private String zze = BuildConfig.FLAVOR;
    private int zzj = 1000;
    private int zzk = 1000;
    private int zzl = 1000;

    static {
        zzaxm zzaxmVar = new zzaxm();
        zzb = zzaxmVar;
        zzgqm.A(zzaxm.class, zzaxmVar);
    }

    private zzaxm() {
    }

    public static zzaxm J() {
        return zzb;
    }

    static /* synthetic */ void K(zzaxm zzaxmVar, String str) {
        zzaxmVar.zzd |= 1;
        zzaxmVar.zze = str;
    }

    static /* synthetic */ void L(zzaxm zzaxmVar, zzaze zzazeVar) {
        zzazeVar.getClass();
        zzaxmVar.zzh = zzazeVar;
        zzaxmVar.zzd |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            zzgqq zzgqqVar = zzaxr.f10110a;
            return zzgqm.x(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzgqqVar, "zzk", zzgqqVar, "zzl", zzgqqVar});
        }
        if (i11 == 3) {
            return new zzaxm();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaxl(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
