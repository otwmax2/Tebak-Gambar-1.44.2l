package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzghi extends zzgqm implements zzgrx {
    private static final zzghi zzb;
    private zzgho zzd;
    private zzgkc zze;

    static {
        zzghi zzghiVar = new zzghi();
        zzb = zzghiVar;
        zzgqm.A(zzghi.class, zzghiVar);
    }

    private zzghi() {
    }

    public static zzghh I() {
        return (zzghh) zzb.h();
    }

    public static zzghi K(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzghi) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void N(zzghi zzghiVar, zzgho zzghoVar) {
        zzghoVar.getClass();
        zzghiVar.zzd = zzghoVar;
    }

    static /* synthetic */ void O(zzghi zzghiVar, zzgkc zzgkcVar) {
        zzgkcVar.getClass();
        zzghiVar.zze = zzgkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzghi();
        }
        zzghg zzghgVar = null;
        if (i11 == 4) {
            return new zzghh(zzghgVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgho L() {
        zzgho zzghoVar = this.zzd;
        return zzghoVar == null ? zzgho.L() : zzghoVar;
    }

    public final zzgkc M() {
        zzgkc zzgkcVar = this.zze;
        return zzgkcVar == null ? zzgkc.L() : zzgkcVar;
    }
}
