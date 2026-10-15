package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgjp extends zzgqm implements zzgrx {
    private static final zzgjp zzb;
    private int zzd;
    private zzgjj zze;
    private zzgpe zzf;
    private zzgpe zzg;

    static {
        zzgjp zzgjpVar = new zzgjp();
        zzb = zzgjpVar;
        zzgqm.A(zzgjp.class, zzgjpVar);
    }

    private zzgjp() {
        zzgpe zzgpeVar = zzgpe.f19379p;
        this.zzf = zzgpeVar;
        this.zzg = zzgpeVar;
    }

    public static zzgjo K() {
        return (zzgjo) zzb.h();
    }

    public static zzgjp M() {
        return zzb;
    }

    public static zzgjp N(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgjp) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void R(zzgjp zzgjpVar, zzgjj zzgjjVar) {
        zzgjjVar.getClass();
        zzgjpVar.zze = zzgjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzgjp();
        }
        zzgjn zzgjnVar = null;
        if (i11 == 4) {
            return new zzgjo(zzgjnVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzgjj J() {
        zzgjj zzgjjVar = this.zze;
        return zzgjjVar == null ? zzgjj.L() : zzgjjVar;
    }

    public final zzgpe O() {
        return this.zzf;
    }

    public final zzgpe P() {
        return this.zzg;
    }
}
