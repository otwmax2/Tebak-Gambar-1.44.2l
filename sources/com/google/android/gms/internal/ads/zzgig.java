package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgig extends zzgqm implements zzgrx {
    private static final zzgig zzb;
    private int zzd;
    private int zze;

    static {
        zzgig zzgigVar = new zzgig();
        zzb = zzgigVar;
        zzgqm.A(zzgig.class, zzgigVar);
    }

    private zzgig() {
    }

    public static zzgif J() {
        return (zzgif) zzb.h();
    }

    public static zzgig L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgig) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzgig();
        }
        zzgie zzgieVar = null;
        if (i11 == 4) {
            return new zzgif(zzgieVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }
}
