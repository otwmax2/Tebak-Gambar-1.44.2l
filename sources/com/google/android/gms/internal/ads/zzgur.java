package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgur extends zzgqm implements zzgrx {
    private static final zzgur zzb;
    private int zzd;
    private zzguq zzf;
    private long zzg;
    private String zze = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;

    static {
        zzgur zzgurVar = new zzgur();
        zzb = zzgurVar;
        zzgqm.A(zzgur.class, zzgurVar);
    }

    private zzgur() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003ဂ\u0002\u0004ဈ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzgur();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzguo(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
