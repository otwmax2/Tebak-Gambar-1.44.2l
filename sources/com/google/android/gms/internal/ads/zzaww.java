package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaww extends zzgqm implements zzgrx {
    private static final zzaww zzb;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        zzaww zzawwVar = new zzaww();
        zzb = zzawwVar;
        zzgqm.A(zzaww.class, zzawwVar);
    }

    private zzaww() {
    }

    public static zzawv I() {
        return (zzawv) zzb.h();
    }

    public static zzaww K() {
        return zzb;
    }

    static /* synthetic */ void L(zzaww zzawwVar, boolean z10) {
        zzawwVar.zzd |= 1;
        zzawwVar.zze = z10;
    }

    static /* synthetic */ void M(zzaww zzawwVar, int i10) {
        zzawwVar.zzd |= 2;
        zzawwVar.zzf = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzaww();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzawv(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
