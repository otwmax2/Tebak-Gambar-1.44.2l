package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasr extends zzgqm implements zzgrx {
    private static final zzasr zzb;
    private int zzd;
    private zzasu zze;
    private zzgpe zzf;
    private zzgpe zzg;

    static {
        zzasr zzasrVar = new zzasr();
        zzb = zzasrVar;
        zzgqm.A(zzasr.class, zzasrVar);
    }

    private zzasr() {
        zzgpe zzgpeVar = zzgpe.f19379p;
        this.zzf = zzgpeVar;
        this.zzg = zzgpeVar;
    }

    public static zzasr J(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzasr) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzasr();
        }
        zzasp zzaspVar = null;
        if (i11 == 4) {
            return new zzasq(zzaspVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzasu K() {
        zzasu zzasuVar = this.zze;
        return zzasuVar == null ? zzasu.N() : zzasuVar;
    }

    public final zzgpe L() {
        return this.zzg;
    }

    public final zzgpe M() {
        return this.zzf;
    }
}
