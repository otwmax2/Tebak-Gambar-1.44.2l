package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgs extends zzkc implements zzlk {
    private static final zzgs zza;
    private int zze;
    private zzkj zzf = zzkc.o();
    private zzgo zzg;

    static {
        zzgs zzgsVar = new zzgs();
        zza = zzgsVar;
        zzkc.s(zzgs.class, zzgsVar);
    }

    private zzgs() {
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", zzgx.class, "zzg"});
        }
        if (i11 == 3) {
            return new zzgs();
        }
        zzgm zzgmVar = null;
        if (i11 == 4) {
            return new zzgr(zzgmVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final zzgo u() {
        zzgo zzgoVar = this.zzg;
        return zzgoVar == null ? zzgo.w() : zzgoVar;
    }

    public final List w() {
        return this.zzf;
    }
}
