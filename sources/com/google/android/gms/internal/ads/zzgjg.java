package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgjg extends zzgqm implements zzgrx {
    private static final zzgjg zzb;
    private zzgjj zzd;

    static {
        zzgjg zzgjgVar = new zzgjg();
        zzb = zzgjgVar;
        zzgqm.A(zzgjg.class, zzgjgVar);
    }

    private zzgjg() {
    }

    public static zzgjf I() {
        return (zzgjf) zzb.h();
    }

    public static zzgjg K(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgjg) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void M(zzgjg zzgjgVar, zzgjj zzgjjVar) {
        zzgjjVar.getClass();
        zzgjgVar.zzd = zzgjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new zzgjg();
        }
        zzgje zzgjeVar = null;
        if (i11 == 4) {
            return new zzgjf(zzgjeVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgjj L() {
        zzgjj zzgjjVar = this.zzd;
        return zzgjjVar == null ? zzgjj.L() : zzgjjVar;
    }
}
