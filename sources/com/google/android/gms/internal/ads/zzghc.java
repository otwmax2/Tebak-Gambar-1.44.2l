package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzghc extends zzgqm implements zzgrx {
    private static final zzghc zzb;
    private int zzd;

    static {
        zzghc zzghcVar = new zzghc();
        zzb = zzghcVar;
        zzgqm.A(zzghc.class, zzghcVar);
    }

    private zzghc() {
    }

    public static zzghb J() {
        return (zzghb) zzb.h();
    }

    public static zzghc L() {
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
            return new zzghc();
        }
        zzgha zzghaVar = null;
        if (i11 == 4) {
            return new zzghb(zzghaVar);
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
