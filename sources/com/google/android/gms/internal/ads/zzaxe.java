package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxe extends zzgqm implements zzgrx {
    private static final zzaxe zzb;
    private int zzd;
    private int zze;
    private zzayy zzf;

    static {
        zzaxe zzaxeVar = new zzaxe();
        zzb = zzaxeVar;
        zzgqm.A(zzaxe.class, zzaxeVar);
    }

    private zzaxe() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzd", "zze", zzaxc.e(), "zzf"});
        }
        if (i11 == 3) {
            return new zzaxe();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaxd(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
