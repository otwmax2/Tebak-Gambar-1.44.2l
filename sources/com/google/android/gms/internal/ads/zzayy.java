package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzayy extends zzgqm implements zzgrx {
    private static final zzayy zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzayy zzayyVar = new zzayy();
        zzb = zzayyVar;
        zzgqm.A(zzayy.class, zzayyVar);
    }

    private zzayy() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzayy();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzayx(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
