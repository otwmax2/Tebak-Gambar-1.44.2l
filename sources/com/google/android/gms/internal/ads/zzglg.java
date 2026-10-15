package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzglg extends zzgqm implements zzgrx {
    private static final zzglg zzb;
    private int zzf;
    private boolean zzg;
    private String zzd = BuildConfig.FLAVOR;
    private String zze = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;

    static {
        zzglg zzglgVar = new zzglg();
        zzb = zzglgVar;
        zzgqm.A(zzglg.class, zzglgVar);
    }

    private zzglg() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzglg();
        }
        zzgle zzgleVar = null;
        if (i11 == 4) {
            return new zzglf(zzgleVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzf;
    }

    public final String K() {
        return this.zzh;
    }

    public final String L() {
        return this.zzd;
    }

    public final String M() {
        return this.zze;
    }

    public final boolean N() {
        return this.zzg;
    }
}
