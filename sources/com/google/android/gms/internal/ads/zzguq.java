package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzguq extends zzgqm implements zzgrx {
    private static final zzguq zzb;
    private int zzd;
    private zzgpe zze = zzgpe.f19379p;

    static {
        zzguq zzguqVar = new zzguq();
        zzb = zzguqVar;
        zzgqm.A(zzguq.class, zzguqVar);
    }

    private zzguq() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ည\u0000", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzguq();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgup(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
