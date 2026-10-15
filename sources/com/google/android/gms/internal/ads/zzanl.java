package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzanl extends zzgqm implements zzgrx {
    private static final zzanl zzb;
    private int zzd;
    private int zze;
    private long zzf = -1;

    static {
        zzanl zzanlVar = new zzanl();
        zzb = zzanlVar;
        zzgqm.A(zzanl.class, zzanlVar);
    }

    private zzanl() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", zzana.f9533a, "zzf"});
        }
        if (i11 == 3) {
            return new zzanl();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzank(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
