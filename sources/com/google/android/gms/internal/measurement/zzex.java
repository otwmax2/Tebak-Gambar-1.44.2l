package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzex extends zzkc implements zzlk {
    private static final zzex zza;
    private int zze;
    private int zzf;
    private boolean zzh;
    private String zzg = BuildConfig.FLAVOR;
    private zzkj zzi = zzkc.o();

    static {
        zzex zzexVar = new zzex();
        zza = zzexVar;
        zzkc.s(zzex.class, zzexVar);
    }

    private zzex() {
    }

    public static zzex w() {
        return zza;
    }

    public final boolean A() {
        return (this.zze & 4) != 0;
    }

    public final boolean B() {
        return (this.zze & 2) != 0;
    }

    public final boolean C() {
        return (this.zze & 1) != 0;
    }

    public final int D() {
        int iA = zzew.a(this.zzf);
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
            return zzkc.r(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", zzev.f23488a, "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzex();
        }
        zzef zzefVar = null;
        if (i11 == 4) {
            return new zzet(zzefVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzi.size();
    }

    public final String x() {
        return this.zzg;
    }

    public final List y() {
        return this.zzi;
    }

    public final boolean z() {
        return this.zzh;
    }
}
