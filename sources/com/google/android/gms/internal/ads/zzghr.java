package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzghr extends zzgqm implements zzgrx {
    private static final zzghr zzb;
    private int zzd;

    static {
        zzghr zzghrVar = new zzghr();
        zzb = zzghrVar;
        zzgqm.A(zzghr.class, zzghrVar);
    }

    private zzghr() {
    }

    public static zzghq J() {
        return (zzghq) zzb.h();
    }

    public static zzghr L() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new zzghr();
        }
        zzghp zzghpVar = null;
        if (i11 == 4) {
            return new zzghq(zzghpVar);
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
