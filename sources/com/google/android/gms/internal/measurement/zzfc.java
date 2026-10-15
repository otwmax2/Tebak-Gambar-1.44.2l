package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfc extends zzkc implements zzlk {
    private static final zzfc zza;
    private int zze;
    private String zzf = BuildConfig.FLAVOR;
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    static {
        zzfc zzfcVar = new zzfc();
        zza = zzfcVar;
        zzkc.s(zzfc.class, zzfcVar);
    }

    private zzfc() {
    }

    static /* synthetic */ void x(zzfc zzfcVar, String str) {
        str.getClass();
        zzfcVar.zze |= 1;
        zzfcVar.zzf = str;
    }

    public final boolean A() {
        return (this.zze & 2) != 0;
    }

    public final boolean B() {
        return (this.zze & 4) != 0;
    }

    public final boolean C() {
        return (this.zze & 8) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzfc();
        }
        zzey zzeyVar = null;
        if (i11 == 4) {
            return new zzfb(zzeyVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzi;
    }

    public final String w() {
        return this.zzf;
    }

    public final boolean y() {
        return this.zzg;
    }

    public final boolean z() {
        return this.zzh;
    }
}
