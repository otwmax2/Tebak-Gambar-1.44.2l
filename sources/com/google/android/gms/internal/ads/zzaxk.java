package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxk extends zzgqm implements zzgrx {
    private static final zzaxk zzb;
    private int zzd;
    private int zze;
    private zzazc zzf;
    private zzazc zzg;
    private zzazc zzh;
    private zzgqv zzi = zzgqm.u();
    private int zzj;

    static {
        zzaxk zzaxkVar = new zzaxk();
        zzb = zzaxkVar;
        zzgqm.A(zzaxk.class, zzaxkVar);
    }

    private zzaxk() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", zzazc.class, "zzj"});
        }
        if (i11 == 3) {
            return new zzaxk();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaxj(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
