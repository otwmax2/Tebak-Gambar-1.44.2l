package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgvf extends zzgqm implements zzgrx {
    private static final zzgvf zzb;
    private int zzd;
    private zzgve zze;
    private zzgpe zzg;
    private zzgpe zzh;
    private int zzi;
    private zzgpe zzj;
    private byte zzk = 2;
    private zzgqv zzf = zzgqm.u();

    static {
        zzgvf zzgvfVar = new zzgvf();
        zzb = zzgvfVar;
        zzgqm.A(zzgvf.class, zzgvfVar);
    }

    private zzgvf() {
        zzgpe zzgpeVar = zzgpe.f19379p;
        this.zzg = zzgpeVar;
        this.zzh = zzgpeVar;
        this.zzj = zzgpeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return Byte.valueOf(this.zzk);
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzd", "zze", "zzf", zzgux.class, "zzg", "zzh", "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzgvf();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgvc(zzgubVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        this.zzk = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
