package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgx extends zzkc implements zzlk {
    private static final zzgx zza;
    private int zze;
    private int zzf;
    private zzkj zzg = zzkc.o();
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;
    private boolean zzj;
    private double zzk;

    static {
        zzgx zzgxVar = new zzgx();
        zza = zzgxVar;
        zzkc.s(zzgx.class, zzgxVar);
    }

    private zzgx() {
    }

    public final boolean A() {
        return (this.zze & 8) != 0;
    }

    public final boolean B() {
        return (this.zze & 16) != 0;
    }

    public final boolean C() {
        return (this.zze & 4) != 0;
    }

    public final int D() {
        int iA = zzgw.a(this.zzf);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", zzgv.f23503a, "zzg", zzgx.class, "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new zzgx();
        }
        zzgm zzgmVar = null;
        if (i11 == 4) {
            return new zzgt(zzgmVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final double u() {
        return this.zzk;
    }

    public final String w() {
        return this.zzh;
    }

    public final String x() {
        return this.zzi;
    }

    public final List y() {
        return this.zzg;
    }

    public final boolean z() {
        return this.zzj;
    }
}
