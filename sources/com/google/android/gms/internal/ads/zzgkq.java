package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgkq extends zzgqm implements zzgrx {
    private static final zzgkq zzb;
    private int zzd;
    private zzgkt zze;
    private zzgpe zzf = zzgpe.f19379p;

    static {
        zzgkq zzgkqVar = new zzgkq();
        zzb = zzgkqVar;
        zzgqm.A(zzgkq.class, zzgkqVar);
    }

    private zzgkq() {
    }

    public static zzgkp J() {
        return (zzgkp) zzb.h();
    }

    public static zzgkq L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgkq) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void P(zzgkq zzgkqVar, zzgkt zzgktVar) {
        zzgktVar.getClass();
        zzgkqVar.zze = zzgktVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgkq();
        }
        zzgko zzgkoVar = null;
        if (i11 == 4) {
            return new zzgkp(zzgkoVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzgkt M() {
        zzgkt zzgktVar = this.zze;
        return zzgktVar == null ? zzgkt.M() : zzgktVar;
    }

    public final zzgpe N() {
        return this.zzf;
    }

    public final boolean R() {
        return this.zze != null;
    }
}
