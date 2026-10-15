package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgim extends zzgqm implements zzgrx {
    private static final zzgim zzb;
    private int zzd;
    private int zze;

    static {
        zzgim zzgimVar = new zzgim();
        zzb = zzgimVar;
        zzgqm.A(zzgim.class, zzgimVar);
    }

    private zzgim() {
    }

    public static zzgil J() {
        return (zzgil) zzb.h();
    }

    public static zzgim L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzgim) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zze", "zzd"});
        }
        if (i11 == 3) {
            return new zzgim();
        }
        zzgik zzgikVar = null;
        if (i11 == 4) {
            return new zzgil(zzgikVar);
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
