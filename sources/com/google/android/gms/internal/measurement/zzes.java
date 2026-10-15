package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzes extends zzkc implements zzlk {
    private static final zzes zza;
    private int zze;
    private int zzf;
    private String zzg = BuildConfig.FLAVOR;
    private zzel zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        zzes zzesVar = new zzes();
        zza = zzesVar;
        zzkc.s(zzes.class, zzesVar);
    }

    private zzes() {
    }

    public static zzer w() {
        return (zzer) zza.i();
    }

    static /* synthetic */ void z(zzes zzesVar, String str) {
        zzesVar.zze |= 2;
        zzesVar.zzg = str;
    }

    public final boolean A() {
        return this.zzi;
    }

    public final boolean B() {
        return this.zzj;
    }

    public final boolean C() {
        return this.zzk;
    }

    public final boolean D() {
        return (this.zze & 1) != 0;
    }

    public final boolean E() {
        return (this.zze & 32) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new zzes();
        }
        zzef zzefVar = null;
        if (i11 == 4) {
            return new zzer(zzefVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzf;
    }

    public final zzel v() {
        zzel zzelVar = this.zzh;
        return zzelVar == null ? zzel.v() : zzelVar;
    }

    public final String y() {
        return this.zzg;
    }
}
