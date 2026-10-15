package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgve extends zzgqm implements zzgrx {
    private static final zzgve zzb;
    private int zzd;
    private int zze;
    private zzgpe zzf;
    private zzgpe zzg;

    static {
        zzgve zzgveVar = new zzgve();
        zzb = zzgveVar;
        zzgqm.A(zzgve.class, zzgveVar);
    }

    private zzgve() {
        zzgpe zzgpeVar = zzgpe.f19379p;
        this.zzf = zzgpeVar;
        this.zzg = zzgpeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzgve();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgvd(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
