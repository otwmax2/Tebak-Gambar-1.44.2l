package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgvw extends zzgqm implements zzgrx {
    private static final zzgvw zzb;
    private int zzd;
    private String zze = BuildConfig.FLAVOR;
    private String zzf = BuildConfig.FLAVOR;

    static {
        zzgvw zzgvwVar = new zzgvw();
        zzb = zzgvwVar;
        zzgqm.A(zzgvw.class, zzgvwVar);
    }

    private zzgvw() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgvw();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgvv(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
