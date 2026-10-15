package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzguv extends zzgqm implements zzgrx {
    private static final zzguv zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private long zzh;

    static {
        zzguv zzguvVar = new zzguv();
        zzb = zzguvVar;
        zzgqm.A(zzguv.class, zzguvVar);
    }

    private zzguv() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဇ\u0002\u0004ဂ\u0003", new Object[]{"zzd", "zze", zzguu.f19669a, "zzf", zzgus.f19668a, "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzguv();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgut(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
