package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgvb extends zzgqm implements zzgrx {
    private static final zzgvb zzb;
    private int zzd;
    private zzgva zze;
    private zzgpe zzg;
    private zzgpe zzh;
    private int zzi;
    private byte zzj = 2;
    private zzgqv zzf = zzgqm.u();

    static {
        zzgvb zzgvbVar = new zzgvb();
        zzb = zzgvbVar;
        zzgqm.A(zzgvb.class, zzgvbVar);
    }

    private zzgvb() {
        zzgpe zzgpeVar = zzgpe.f19379p;
        this.zzg = zzgpeVar;
        this.zzh = zzgpeVar;
    }

    public static zzguy I() {
        return (zzguy) zzb.h();
    }

    static /* synthetic */ void K(zzgvb zzgvbVar, zzgux zzguxVar) {
        zzguxVar.getClass();
        zzgqv zzgqvVar = zzgvbVar.zzf;
        if (!zzgqvVar.a()) {
            zzgvbVar.zzf = zzgqm.v(zzgqvVar);
        }
        zzgvbVar.zzf.add(zzguxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return Byte.valueOf(this.zzj);
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzd", "zze", "zzf", zzgux.class, "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzgvb();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzguy(zzgubVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        this.zzj = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
