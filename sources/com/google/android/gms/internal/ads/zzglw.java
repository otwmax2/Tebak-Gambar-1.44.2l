package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzglw extends zzgqm implements zzgrx {
    private static final zzglw zzb;
    private String zzd = BuildConfig.FLAVOR;

    static {
        zzglw zzglwVar = new zzglw();
        zzb = zzglwVar;
        zzgqm.A(zzglw.class, zzglwVar);
    }

    private zzglw() {
    }

    public static zzglw J() {
        return zzb;
    }

    public static zzglw K(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzglw) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new zzglw();
        }
        zzglu zzgluVar = null;
        if (i11 == 4) {
            return new zzglv(zzgluVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final String L() {
        return this.zzd;
    }
}
