package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgl extends zzkc implements zzlk {
    private static final zzgl zza;
    private int zze;
    private long zzf;
    private String zzg = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;
    private long zzi;
    private float zzj;
    private double zzk;

    static {
        zzgl zzglVar = new zzgl();
        zza = zzglVar;
        zzkc.s(zzgl.class, zzglVar);
    }

    private zzgl() {
    }

    static /* synthetic */ void B(zzgl zzglVar, long j10) {
        zzglVar.zze |= 1;
        zzglVar.zzf = j10;
    }

    static /* synthetic */ void C(zzgl zzglVar, String str) {
        str.getClass();
        zzglVar.zze |= 2;
        zzglVar.zzg = str;
    }

    static /* synthetic */ void D(zzgl zzglVar, String str) {
        str.getClass();
        zzglVar.zze |= 4;
        zzglVar.zzh = str;
    }

    static /* synthetic */ void E(zzgl zzglVar) {
        zzglVar.zze &= -5;
        zzglVar.zzh = zza.zzh;
    }

    static /* synthetic */ void F(zzgl zzglVar, long j10) {
        zzglVar.zze |= 8;
        zzglVar.zzi = j10;
    }

    static /* synthetic */ void G(zzgl zzglVar) {
        zzglVar.zze &= -9;
        zzglVar.zzi = 0L;
    }

    static /* synthetic */ void H(zzgl zzglVar, double d10) {
        zzglVar.zze |= 32;
        zzglVar.zzk = d10;
    }

    static /* synthetic */ void I(zzgl zzglVar) {
        zzglVar.zze &= -33;
        zzglVar.zzk = 0.0d;
    }

    public static zzgk x() {
        return (zzgk) zza.i();
    }

    public final String A() {
        return this.zzh;
    }

    public final boolean J() {
        return (this.zze & 32) != 0;
    }

    public final boolean K() {
        return (this.zze & 8) != 0;
    }

    public final boolean L() {
        return (this.zze & 1) != 0;
    }

    public final boolean N() {
        return (this.zze & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new zzgl();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzgk(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final double u() {
        return this.zzk;
    }

    public final long v() {
        return this.zzi;
    }

    public final long w() {
        return this.zzf;
    }

    public final String z() {
        return this.zzg;
    }
}
