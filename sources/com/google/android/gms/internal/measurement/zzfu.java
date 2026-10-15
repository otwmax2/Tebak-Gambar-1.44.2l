package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfu extends zzkc implements zzlk {
    private static final zzfu zza;
    private int zze;
    private String zzf = BuildConfig.FLAVOR;
    private long zzg;

    static {
        zzfu zzfuVar = new zzfu();
        zza = zzfuVar;
        zzkc.s(zzfu.class, zzfuVar);
    }

    private zzfu() {
    }

    public static zzft u() {
        return (zzft) zza.i();
    }

    static /* synthetic */ void w(zzfu zzfuVar, String str) {
        str.getClass();
        zzfuVar.zze |= 1;
        zzfuVar.zzf = str;
    }

    static /* synthetic */ void x(zzfu zzfuVar, long j10) {
        zzfuVar.zze |= 2;
        zzfuVar.zzg = j10;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzfu();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzft(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
