package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzamo extends zzgqm implements zzgrx {
    private static final zzamo zzb;
    private int zzd;
    private zzamq zze;
    private zzamt zzf;

    static {
        zzamo zzamoVar = new zzamo();
        zzb = zzamoVar;
        zzgqm.A(zzamo.class, zzamoVar);
    }

    private zzamo() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzamo();
        }
        zzamm zzammVar = null;
        if (i11 == 4) {
            return new zzamn(zzammVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
