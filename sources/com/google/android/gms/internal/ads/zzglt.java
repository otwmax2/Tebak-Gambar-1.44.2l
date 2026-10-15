package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzglt extends zzgqm implements zzgrx {
    private static final zzglt zzb;
    private int zzd;
    private zzglw zze;

    static {
        zzglt zzgltVar = new zzglt();
        zzb = zzgltVar;
        zzgqm.A(zzglt.class, zzgltVar);
    }

    private zzglt() {
    }

    public static zzgls J() {
        return (zzgls) zzb.h();
    }

    public static zzglt L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzglt) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void O(zzglt zzgltVar, zzglw zzglwVar) {
        zzglwVar.getClass();
        zzgltVar.zze = zzglwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzglt();
        }
        zzglr zzglrVar = null;
        if (i11 == 4) {
            return new zzgls(zzglrVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzglw M() {
        zzglw zzglwVar = this.zze;
        return zzglwVar == null ? zzglw.J() : zzglwVar;
    }
}
