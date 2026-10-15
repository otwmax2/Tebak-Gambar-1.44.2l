package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaza extends zzgqm implements zzgrx {
    private static final zzaza zzb;
    private int zzd;
    private String zze = BuildConfig.FLAVOR;
    private int zzf;
    private zzazc zzg;

    static {
        zzaza zzazaVar = new zzaza();
        zzb = zzazaVar;
        zzgqm.A(zzaza.class, zzazaVar);
    }

    private zzaza() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", "zzf", zzaxr.f10110a, "zzg"});
        }
        if (i11 == 3) {
            return new zzaza();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzayz(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
