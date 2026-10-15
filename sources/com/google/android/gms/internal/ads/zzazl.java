package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzazl extends zzgqm implements zzgrx {
    private static final zzazl zzb;
    private int zzd;
    private int zze;

    static {
        zzazl zzazlVar = new zzazl();
        zzb = zzazlVar;
        zzgqm.A(zzazl.class, zzazlVar);
    }

    private zzazl() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"zzd", "zze", zzazk.f10135a});
        }
        if (i11 == 3) {
            return new zzazl();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzazj(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
