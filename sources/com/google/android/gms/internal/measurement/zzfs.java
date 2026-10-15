package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfs extends zzkc implements zzlk {
    private static final zzfs zza;
    private int zze;
    private zzkj zzf = zzkc.o();
    private String zzg = BuildConfig.FLAVOR;
    private long zzh;
    private long zzi;
    private int zzj;

    static {
        zzfs zzfsVar = new zzfs();
        zza = zzfsVar;
        zzkc.s(zzfs.class, zzfsVar);
    }

    private zzfs() {
    }

    static /* synthetic */ void D(zzfs zzfsVar, int i10, zzfw zzfwVar) {
        zzfwVar.getClass();
        zzfsVar.P();
        zzfsVar.zzf.set(i10, zzfwVar);
    }

    static /* synthetic */ void E(zzfs zzfsVar, zzfw zzfwVar) {
        zzfwVar.getClass();
        zzfsVar.P();
        zzfsVar.zzf.add(zzfwVar);
    }

    static /* synthetic */ void F(zzfs zzfsVar, Iterable iterable) {
        zzfsVar.P();
        zzil.e(iterable, zzfsVar.zzf);
    }

    static /* synthetic */ void H(zzfs zzfsVar, int i10) {
        zzfsVar.P();
        zzfsVar.zzf.remove(i10);
    }

    static /* synthetic */ void I(zzfs zzfsVar, String str) {
        str.getClass();
        zzfsVar.zze |= 1;
        zzfsVar.zzg = str;
    }

    static /* synthetic */ void J(zzfs zzfsVar, long j10) {
        zzfsVar.zze |= 2;
        zzfsVar.zzh = j10;
    }

    static /* synthetic */ void K(zzfs zzfsVar, long j10) {
        zzfsVar.zze |= 4;
        zzfsVar.zzi = j10;
    }

    private final void P() {
        zzkj zzkjVar = this.zzf;
        if (zzkjVar.a()) {
            return;
        }
        this.zzf = zzkc.p(zzkjVar);
    }

    public static zzfr y() {
        return (zzfr) zza.i();
    }

    public final zzfw A(int i10) {
        return (zzfw) this.zzf.get(i10);
    }

    public final String B() {
        return this.zzg;
    }

    public final List C() {
        return this.zzf;
    }

    public final boolean L() {
        return (this.zze & 8) != 0;
    }

    public final boolean N() {
        return (this.zze & 4) != 0;
    }

    public final boolean O() {
        return (this.zze & 2) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", zzfw.class, "zzg", "zzh", "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzfs();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzfr(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzj;
    }

    public final int v() {
        return this.zzf.size();
    }

    public final long w() {
        return this.zzi;
    }

    public final long x() {
        return this.zzh;
    }
}
