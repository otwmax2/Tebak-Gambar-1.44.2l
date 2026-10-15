package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgo extends zzkc implements zzlk {
    private static final zzgo zza;
    private zzkj zze = zzkc.o();

    static {
        zzgo zzgoVar = new zzgo();
        zza = zzgoVar;
        zzkc.s(zzgo.class, zzgoVar);
    }

    private zzgo() {
    }

    public static zzgo w() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", zzgq.class});
        }
        if (i11 == 3) {
            return new zzgo();
        }
        zzgm zzgmVar = null;
        if (i11 == 4) {
            return new zzgn(zzgmVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zze.size();
    }

    public final List x() {
        return this.zze;
    }
}
