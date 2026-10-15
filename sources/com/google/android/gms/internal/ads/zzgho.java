package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgho extends zzgqm implements zzgrx {
    private static final zzgho zzb;
    private zzghr zzd;
    private int zze;

    static {
        zzgho zzghoVar = new zzgho();
        zzb = zzghoVar;
        zzgqm.A(zzgho.class, zzghoVar);
    }

    private zzgho() {
    }

    public static zzghn J() {
        return (zzghn) zzb.h();
    }

    public static zzgho L() {
        return zzb;
    }

    public static zzgho M(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgho) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void O(zzgho zzghoVar, zzghr zzghrVar) {
        zzghrVar.getClass();
        zzghoVar.zzd = zzghrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzgho();
        }
        zzghm zzghmVar = null;
        if (i11 == 4) {
            return new zzghn(zzghmVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zze;
    }

    public final zzghr N() {
        zzghr zzghrVar = this.zzd;
        return zzghrVar == null ? zzghr.L() : zzghrVar;
    }
}
