package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgjm extends zzgqm implements zzgrx {
    private static final zzgjm zzb;
    private int zzd;
    private zzgjp zze;
    private zzgpe zzf = zzgpe.f19379p;

    static {
        zzgjm zzgjmVar = new zzgjm();
        zzb = zzgjmVar;
        zzgqm.A(zzgjm.class, zzgjmVar);
    }

    private zzgjm() {
    }

    public static zzgjl J() {
        return (zzgjl) zzb.h();
    }

    public static zzgjm L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgjm) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void P(zzgjm zzgjmVar, zzgjp zzgjpVar) {
        zzgjpVar.getClass();
        zzgjmVar.zze = zzgjpVar;
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
            return new zzgjm();
        }
        zzgjk zzgjkVar = null;
        if (i11 == 4) {
            return new zzgjl(zzgjkVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzgjp M() {
        zzgjp zzgjpVar = this.zze;
        return zzgjpVar == null ? zzgjp.M() : zzgjpVar;
    }

    public final zzgpe N() {
        return this.zzf;
    }
}
