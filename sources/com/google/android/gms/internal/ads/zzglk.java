package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzglk extends zzgqm implements zzgrx {
    private static final zzglk zzb;
    private zzgky zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzglk zzglkVar = new zzglk();
        zzb = zzglkVar;
        zzgqm.A(zzglk.class, zzglkVar);
    }

    private zzglk() {
    }

    public static zzglj K() {
        return (zzglj) zzb.h();
    }

    static /* synthetic */ void N(zzglk zzglkVar, zzgky zzgkyVar) {
        zzgkyVar.getClass();
        zzglkVar.zzd = zzgkyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzglk();
        }
        zzglh zzglhVar = null;
        if (i11 == 4) {
            return new zzglj(zzglhVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzf;
    }

    public final zzgky J() {
        zzgky zzgkyVar = this.zzd;
        return zzgkyVar == null ? zzgky.L() : zzgkyVar;
    }

    public final zzgme M() {
        zzgme zzgmeVarC = zzgme.c(this.zzg);
        return zzgmeVarC == null ? zzgme.UNRECOGNIZED : zzgmeVarC;
    }

    public final boolean Q() {
        return this.zzd != null;
    }

    public final int R() {
        int i10 = this.zze;
        int i11 = 3;
        if (i10 == 0) {
            i11 = 2;
        } else if (i10 != 1) {
            i11 = i10 != 2 ? i10 != 3 ? 0 : 5 : 4;
        }
        if (i11 == 0) {
            return 1;
        }
        return i11;
    }
}
