package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfw extends zzkc implements zzlk {
    private static final zzfw zza;
    private int zze;
    private long zzh;
    private float zzi;
    private double zzj;
    private String zzf = BuildConfig.FLAVOR;
    private String zzg = BuildConfig.FLAVOR;
    private zzkj zzk = zzkc.o();

    static {
        zzfw zzfwVar = new zzfw();
        zza = zzfwVar;
        zzkc.s(zzfw.class, zzfwVar);
    }

    private zzfw() {
    }

    static /* synthetic */ void D(zzfw zzfwVar, String str) {
        str.getClass();
        zzfwVar.zze |= 1;
        zzfwVar.zzf = str;
    }

    static /* synthetic */ void E(zzfw zzfwVar, String str) {
        str.getClass();
        zzfwVar.zze |= 2;
        zzfwVar.zzg = str;
    }

    static /* synthetic */ void F(zzfw zzfwVar) {
        zzfwVar.zze &= -3;
        zzfwVar.zzg = zza.zzg;
    }

    static /* synthetic */ void G(zzfw zzfwVar, long j10) {
        zzfwVar.zze |= 4;
        zzfwVar.zzh = j10;
    }

    static /* synthetic */ void H(zzfw zzfwVar) {
        zzfwVar.zze &= -5;
        zzfwVar.zzh = 0L;
    }

    static /* synthetic */ void I(zzfw zzfwVar, double d10) {
        zzfwVar.zze |= 16;
        zzfwVar.zzj = d10;
    }

    static /* synthetic */ void J(zzfw zzfwVar) {
        zzfwVar.zze &= -17;
        zzfwVar.zzj = 0.0d;
    }

    static /* synthetic */ void K(zzfw zzfwVar, zzfw zzfwVar2) {
        zzfwVar2.getClass();
        zzfwVar.U();
        zzfwVar.zzk.add(zzfwVar2);
    }

    static /* synthetic */ void L(zzfw zzfwVar, Iterable iterable) {
        zzfwVar.U();
        zzil.e(iterable, zzfwVar.zzk);
    }

    private final void U() {
        zzkj zzkjVar = this.zzk;
        if (zzkjVar.a()) {
            return;
        }
        this.zzk = zzkc.p(zzkjVar);
    }

    public static zzfv y() {
        return (zzfv) zza.i();
    }

    public final String A() {
        return this.zzf;
    }

    public final String B() {
        return this.zzg;
    }

    public final List C() {
        return this.zzk;
    }

    public final boolean O() {
        return (this.zze & 16) != 0;
    }

    public final boolean P() {
        return (this.zze & 8) != 0;
    }

    public final boolean Q() {
        return (this.zze & 4) != 0;
    }

    public final boolean R() {
        return (this.zze & 1) != 0;
    }

    public final boolean S() {
        return (this.zze & 2) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzfw.class});
        }
        if (i11 == 3) {
            return new zzfw();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzfv(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final double u() {
        return this.zzj;
    }

    public final float v() {
        return this.zzi;
    }

    public final int w() {
        return this.zzk.size();
    }

    public final long x() {
        return this.zzh;
    }
}
