package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfa extends zzkc implements zzlk {
    private static final zzfa zza;
    private int zze;
    private String zzf = BuildConfig.FLAVOR;
    private zzkj zzg = zzkc.o();
    private boolean zzh;

    static {
        zzfa zzfaVar = new zzfa();
        zza = zzfaVar;
        zzkc.s(zzfa.class, zzfaVar);
    }

    private zzfa() {
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zze", "zzf", "zzg", zzfg.class, "zzh"});
        }
        if (i11 == 3) {
            return new zzfa();
        }
        zzey zzeyVar = null;
        if (i11 == 4) {
            return new zzez(zzeyVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final String v() {
        return this.zzf;
    }
}
