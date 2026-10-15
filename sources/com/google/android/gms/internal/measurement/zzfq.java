package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfq extends zzkc implements zzlk {
    private static final zzfq zza;
    private int zze;
    private int zzf;
    private long zzg;

    static {
        zzfq zzfqVar = new zzfq();
        zza = zzfqVar;
        zzkc.s(zzfq.class, zzfqVar);
    }

    private zzfq() {
    }

    public static zzfp w() {
        return (zzfp) zza.i();
    }

    static /* synthetic */ void y(zzfq zzfqVar, int i10) {
        zzfqVar.zze |= 1;
        zzfqVar.zzf = i10;
    }

    static /* synthetic */ void z(zzfq zzfqVar, long j10) {
        zzfqVar.zze |= 2;
        zzfqVar.zzg = j10;
    }

    public final boolean A() {
        return (this.zze & 2) != 0;
    }

    public final boolean B() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzfq();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzfp(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzf;
    }

    public final long v() {
        return this.zzg;
    }
}
