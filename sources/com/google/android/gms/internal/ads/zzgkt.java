package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgkt extends zzgqm implements zzgrx {
    private static final zzgkt zzb;
    private int zzd;
    private zzgkn zze;
    private zzgpe zzf = zzgpe.f19379p;

    static {
        zzgkt zzgktVar = new zzgkt();
        zzb = zzgktVar;
        zzgqm.A(zzgkt.class, zzgktVar);
    }

    private zzgkt() {
    }

    public static zzgks K() {
        return (zzgks) zzb.h();
    }

    public static zzgkt M() {
        return zzb;
    }

    public static zzgkt N(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgkt) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void Q(zzgkt zzgktVar, zzgkn zzgknVar) {
        zzgknVar.getClass();
        zzgktVar.zze = zzgknVar;
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
            return new zzgkt();
        }
        zzgkr zzgkrVar = null;
        if (i11 == 4) {
            return new zzgks(zzgkrVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzgkn J() {
        zzgkn zzgknVar = this.zze;
        return zzgknVar == null ? zzgkn.K() : zzgknVar;
    }

    public final zzgpe O() {
        return this.zzf;
    }

    public final boolean S() {
        return this.zze != null;
    }
}
