package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzghu extends zzgqm implements zzgrx {
    private static final zzghu zzb;
    private int zzd;
    private zzgia zze;
    private zzgpe zzf = zzgpe.f19379p;

    static {
        zzghu zzghuVar = new zzghu();
        zzb = zzghuVar;
        zzgqm.A(zzghu.class, zzghuVar);
    }

    private zzghu() {
    }

    public static zzght J() {
        return (zzght) zzb.h();
    }

    public static zzghu L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzghu) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void P(zzghu zzghuVar, zzgia zzgiaVar) {
        zzgiaVar.getClass();
        zzghuVar.zze = zzgiaVar;
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
            return new zzghu();
        }
        zzghs zzghsVar = null;
        if (i11 == 4) {
            return new zzght(zzghsVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzgia M() {
        zzgia zzgiaVar = this.zze;
        return zzgiaVar == null ? zzgia.L() : zzgiaVar;
    }

    public final zzgpe N() {
        return this.zzf;
    }
}
