package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaod extends zzgqm implements zzgrx {
    private static final zzaod zzb;
    private int zzd;
    private String zze = BuildConfig.FLAVOR;

    static {
        zzaod zzaodVar = new zzaod();
        zzb = zzaodVar;
        zzgqm.A(zzaod.class, zzaodVar);
    }

    private zzaod() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzaod();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzaoc(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
