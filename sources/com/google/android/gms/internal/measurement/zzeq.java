package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeq extends zzkc implements zzlk {
    private static final zzeq zza;
    private int zze;
    private int zzf;
    private boolean zzg;
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;
    private String zzj = BuildConfig.FLAVOR;

    static {
        zzeq zzeqVar = new zzeq();
        zza = zzeqVar;
        zzkc.s(zzeq.class, zzeqVar);
    }

    private zzeq() {
    }

    public static zzeq v() {
        return zza;
    }

    public final boolean A() {
        return (this.zze & 1) != 0;
    }

    public final boolean B() {
        return (this.zze & 4) != 0;
    }

    public final boolean C() {
        return (this.zze & 2) != 0;
    }

    public final boolean D() {
        return (this.zze & 16) != 0;
    }

    public final boolean E() {
        return (this.zze & 8) != 0;
    }

    public final int F() {
        int iA = zzep.a(this.zzf);
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
            return zzkc.r(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zze", "zzf", zzeo.f23486a, "zzg", "zzh", "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzeq();
        }
        zzef zzefVar = null;
        if (i11 == 4) {
            return new zzem(zzefVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final String w() {
        return this.zzh;
    }

    public final String x() {
        return this.zzj;
    }

    public final String y() {
        return this.zzi;
    }

    public final boolean z() {
        return this.zzg;
    }
}
