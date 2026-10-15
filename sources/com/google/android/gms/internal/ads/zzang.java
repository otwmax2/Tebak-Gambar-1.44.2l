package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzang extends zzgqm implements zzgrx {
    private static final zzang zzb;
    private int zzd;
    private long zze = -1;

    static {
        zzang zzangVar = new zzang();
        zzb = zzangVar;
        zzgqm.A(zzang.class, zzangVar);
    }

    private zzang() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဂ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzang();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzanf(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
