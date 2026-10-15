package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaob extends zzgqm implements zzgrx {
    private static final zzaob zzb;
    private int zzd;
    private long zze;
    private String zzf = BuildConfig.FLAVOR;
    private zzgpe zzg = zzgpe.f19379p;

    static {
        zzaob zzaobVar = new zzaob();
        zzb = zzaobVar;
        zzgqm.A(zzaob.class, zzaobVar);
    }

    private zzaob() {
    }

    public static zzaob K() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzaob();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzaoa(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final long I() {
        return this.zze;
    }

    public final boolean L() {
        return (this.zzd & 1) != 0;
    }
}
