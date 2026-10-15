package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxw extends zzgqm implements zzgrx {
    private static final zzaxw zzb;
    private int zzd;
    private int zzf;
    private zzazc zzh;
    private String zze = BuildConfig.FLAVOR;
    private zzgqr zzg = zzgqm.q();

    static {
        zzaxw zzaxwVar = new zzaxw();
        zzb = zzaxwVar;
        zzgqm.A(zzaxw.class, zzaxwVar);
    }

    private zzaxw() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဌ\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzd", "zze", "zzf", zzaxr.f10110a, "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzaxw();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaxv(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
