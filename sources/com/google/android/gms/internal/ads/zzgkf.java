package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgkf extends zzgqm implements zzgrx {
    private static final zzgkf zzb;
    private int zzd;
    private int zze;

    static {
        zzgkf zzgkfVar = new zzgkf();
        zzb = zzgkfVar;
        zzgqm.A(zzgkf.class, zzgkfVar);
    }

    private zzgkf() {
    }

    public static zzgke J() {
        return (zzgke) zzb.h();
    }

    public static zzgkf L() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzgkf();
        }
        zzgkd zzgkdVar = null;
        if (i11 == 4) {
            return new zzgke(zzgkdVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zze;
    }

    public final int N() {
        int iB = zzgjw.b(this.zzd);
        if (iB == 0) {
            return 1;
        }
        return iB;
    }
}
