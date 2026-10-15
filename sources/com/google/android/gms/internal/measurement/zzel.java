package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzel extends zzkc implements zzlk {
    private static final zzel zza;
    private int zze;
    private zzex zzf;
    private zzeq zzg;
    private boolean zzh;
    private String zzi = BuildConfig.FLAVOR;

    static {
        zzel zzelVar = new zzel();
        zza = zzelVar;
        zzkc.s(zzel.class, zzelVar);
    }

    private zzel() {
    }

    public static zzel v() {
        return zza;
    }

    static /* synthetic */ void z(zzel zzelVar, String str) {
        zzelVar.zze |= 8;
        zzelVar.zzi = str;
    }

    public final boolean A() {
        return this.zzh;
    }

    public final boolean B() {
        return (this.zze & 4) != 0;
    }

    public final boolean C() {
        return (this.zze & 2) != 0;
    }

    public final boolean D() {
        return (this.zze & 8) != 0;
    }

    public final boolean E() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzel();
        }
        zzef zzefVar = null;
        if (i11 == 4) {
            return new zzek(zzefVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final zzeq w() {
        zzeq zzeqVar = this.zzg;
        return zzeqVar == null ? zzeq.v() : zzeqVar;
    }

    public final zzex x() {
        zzex zzexVar = this.zzf;
        return zzexVar == null ? zzex.w() : zzexVar;
    }

    public final String y() {
        return this.zzi;
    }
}
