package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxp extends zzgqm implements zzgrx {
    private static final zzaxp zzb;
    private int zzd;
    private int zze;
    private zzaze zzf;
    private String zzg = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;

    static {
        zzaxp zzaxpVar = new zzaxp();
        zzb = zzaxpVar;
        zzgqm.A(zzaxp.class, zzaxpVar);
    }

    private zzaxp() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0000\u0005ဌ\u0000\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzd", "zze", zzaxo.f10109a, "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzaxp();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaxn(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
