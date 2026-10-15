package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgjs extends zzgqm implements zzgrx {
    private static final zzgjs zzb;
    private int zzd;
    private int zze;
    private zzgpe zzf = zzgpe.f19379p;

    static {
        zzgjs zzgjsVar = new zzgjs();
        zzb = zzgjsVar;
        zzgqm.A(zzgjs.class, zzgjsVar);
    }

    private zzgjs() {
    }

    public static zzgjr I() {
        return (zzgjr) zzb.h();
    }

    public static zzgjs K() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgjs();
        }
        zzgjq zzgjqVar = null;
        if (i11 == 4) {
            return new zzgjr(zzgjqVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgpe L() {
        return this.zzf;
    }

    public final int N() {
        int i10 = this.zzd;
        int i11 = 5;
        if (i10 == 0) {
            i11 = 2;
        } else if (i10 == 2) {
            i11 = 4;
        } else if (i10 != 3) {
            i11 = i10 != 4 ? i10 != 5 ? 0 : 7 : 6;
        }
        if (i11 == 0) {
            return 1;
        }
        return i11;
    }

    public final int O() {
        int iB = zzgjw.b(this.zze);
        if (iB == 0) {
            return 1;
        }
        return iB;
    }
}
