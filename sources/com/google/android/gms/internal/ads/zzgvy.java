package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgvy extends zzgqm implements zzgrx {
    private static final zzgvy zzb;
    private int zzd;
    private int zze;
    private int zzh;
    private String zzf = BuildConfig.FLAVOR;
    private zzgqr zzg = zzgqm.q();
    private zzgqv zzi = zzgqm.u();
    private zzgpe zzj = zzgpe.f19379p;

    static {
        zzgvy zzgvyVar = new zzgvy();
        zzb = zzgvyVar;
        zzgqm.A(zzgvy.class, zzgvyVar);
    }

    private zzgvy() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u0016\u0005င\u0002\u0006\u001b\u0007ည\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", zzgvw.class, "zzj"});
        }
        if (i11 == 3) {
            return new zzgvy();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgvx(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
