package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzane extends zzgqm implements zzgrx {
    private static final zzane zzb;
    private int zzd;
    private long zze = -1;
    private int zzf = 1000;
    private int zzg = 1000;

    static {
        zzane zzaneVar = new zzane();
        zzb = zzaneVar;
        zzgqm.A(zzane.class, zzaneVar);
    }

    private zzane() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            zzgqq zzgqqVar = zzany.f9539a;
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဌ\u0001\u0003ဌ\u0002", new Object[]{"zzd", "zze", "zzf", zzgqqVar, "zzg", zzgqqVar});
        }
        if (i11 == 3) {
            return new zzane();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzand(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
