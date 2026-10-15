package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgwc extends zzgqm implements zzgrx {
    private static final zzgwc zzb;
    private int zzd;
    private String zze = BuildConfig.FLAVOR;

    static {
        zzgwc zzgwcVar = new zzgwc();
        zzb = zzgwcVar;
        zzgqm.A(zzgwc.class, zzgwcVar);
    }

    private zzgwc() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzgwc();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgwb(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
