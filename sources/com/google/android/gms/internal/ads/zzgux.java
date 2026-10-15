package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgux extends zzgqm implements zzgrx {
    private static final zzgux zzb;
    private int zzd;
    private zzgpe zze;
    private zzgpe zzf;
    private byte zzg = 2;

    static {
        zzgux zzguxVar = new zzgux();
        zzb = zzguxVar;
        zzgqm.A(zzgux.class, zzguxVar);
    }

    private zzgux() {
        zzgpe zzgpeVar = zzgpe.f19379p;
        this.zze = zzgpeVar;
        this.zzf = zzgpeVar;
    }

    public static zzguw I() {
        return (zzguw) zzb.h();
    }

    static /* synthetic */ void K(zzgux zzguxVar, zzgpe zzgpeVar) {
        zzguxVar.zzd |= 1;
        zzguxVar.zze = zzgpeVar;
    }

    static /* synthetic */ void L(zzgux zzguxVar, zzgpe zzgpeVar) {
        zzguxVar.zzd |= 2;
        zzguxVar.zzf = zzgpeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return Byte.valueOf(this.zzg);
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgux();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzguw(zzgubVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        this.zzg = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
