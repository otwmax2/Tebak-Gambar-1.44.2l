package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgq extends zzkc implements zzlk {
    private static final zzgq zza;
    private int zze;
    private String zzf = BuildConfig.FLAVOR;
    private zzkj zzg = zzkc.o();

    static {
        zzgq zzgqVar = new zzgq();
        zza = zzgqVar;
        zzkc.s(zzgq.class, zzgqVar);
    }

    private zzgq() {
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zze", "zzf", "zzg", zzgx.class});
        }
        if (i11 == 3) {
            return new zzgq();
        }
        zzgm zzgmVar = null;
        if (i11 == 4) {
            return new zzgp(zzgmVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final String v() {
        return this.zzf;
    }

    public final List w() {
        return this.zzg;
    }
}
