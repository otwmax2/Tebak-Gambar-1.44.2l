package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxg extends zzgqm implements zzgrx {
    private static final zzaxg zzb;
    private int zzd;
    private String zze = BuildConfig.FLAVOR;
    private zzgqv zzf = zzgqm.u();
    private int zzg;

    static {
        zzaxg zzaxgVar = new zzaxg();
        zzb = zzaxgVar;
        zzgqm.A(zzaxg.class, zzaxgVar);
    }

    private zzaxg() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဌ\u0001", new Object[]{"zzd", "zze", "zzf", zzaxe.class, "zzg", zzaxr.f10110a});
        }
        if (i11 == 3) {
            return new zzaxg();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaxf(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
