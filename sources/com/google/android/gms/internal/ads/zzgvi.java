package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgvi extends zzgqm implements zzgrx {
    private static final zzgvi zzb;
    private int zzd;
    private int zze;
    private String zzf = BuildConfig.FLAVOR;
    private zzgpe zzg;
    private zzgpe zzh;

    static {
        zzgvi zzgviVar = new zzgvi();
        zzb = zzgviVar;
        zzgqm.A(zzgvi.class, zzgviVar);
    }

    private zzgvi() {
        zzgpe zzgpeVar = zzgpe.f19379p;
        this.zzg = zzgpeVar;
        this.zzh = zzgpeVar;
    }

    public static zzgvg I() {
        return (zzgvg) zzb.h();
    }

    static /* synthetic */ void K(zzgvi zzgviVar, String str) {
        zzgviVar.zzd |= 2;
        zzgviVar.zzf = "image/png";
    }

    static /* synthetic */ void L(zzgvi zzgviVar, zzgpe zzgpeVar) {
        zzgpeVar.getClass();
        zzgviVar.zzd |= 4;
        zzgviVar.zzg = zzgpeVar;
    }

    static /* synthetic */ void M(zzgvi zzgviVar, int i10) {
        zzgviVar.zze = 1;
        zzgviVar.zzd = 1 | zzgviVar.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzd", "zze", zzgvh.f19672a, "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzgvi();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgvg(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
