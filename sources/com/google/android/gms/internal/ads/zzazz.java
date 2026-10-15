package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzazz extends zzgqm implements zzgrx {
    private static final zzazz zzb;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        zzazz zzazzVar = new zzazz();
        zzb = zzazzVar;
        zzgqm.A(zzazz.class, zzazzVar);
    }

    private zzazz() {
    }

    public static zzazy I() {
        return (zzazy) zzb.h();
    }

    static /* synthetic */ void K(zzazz zzazzVar, boolean z10) {
        zzazzVar.zzd |= 1;
        zzazzVar.zze = z10;
    }

    static /* synthetic */ void L(zzazz zzazzVar, int i10) {
        zzazzVar.zzd |= 2;
        zzazzVar.zzf = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzazz();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzazy(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final boolean M() {
        return this.zze;
    }
}
