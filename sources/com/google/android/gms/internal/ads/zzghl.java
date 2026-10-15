package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzghl extends zzgqm implements zzgrx {
    private static final zzghl zzb;
    private int zzd;
    private zzghr zze;
    private zzgpe zzf = zzgpe.f19379p;

    static {
        zzghl zzghlVar = new zzghl();
        zzb = zzghlVar;
        zzgqm.A(zzghl.class, zzghlVar);
    }

    private zzghl() {
    }

    public static zzghk J() {
        return (zzghk) zzb.h();
    }

    public static zzghl L() {
        return zzb;
    }

    public static zzghl M(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzghl) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void Q(zzghl zzghlVar, zzghr zzghrVar) {
        zzghrVar.getClass();
        zzghlVar.zze = zzghrVar;
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
            return new zzghl();
        }
        zzghj zzghjVar = null;
        if (i11 == 4) {
            return new zzghk(zzghjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzghr N() {
        zzghr zzghrVar = this.zze;
        return zzghrVar == null ? zzghr.L() : zzghrVar;
    }

    public final zzgpe O() {
        return this.zzf;
    }
}
