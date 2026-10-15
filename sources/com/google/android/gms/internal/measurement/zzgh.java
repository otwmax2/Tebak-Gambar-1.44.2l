package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgh extends zzkc implements zzlk {
    private static final zzgh zza;
    private zzki zze = zzkc.m();
    private zzki zzf = zzkc.m();
    private zzkj zzg = zzkc.o();
    private zzkj zzh = zzkc.o();

    static {
        zzgh zzghVar = new zzgh();
        zza = zzghVar;
        zzkc.s(zzgh.class, zzghVar);
    }

    private zzgh() {
    }

    public static zzgh B() {
        return zza;
    }

    static /* synthetic */ void H(zzgh zzghVar, Iterable iterable) {
        zzki zzkiVar = zzghVar.zze;
        if (!zzkiVar.a()) {
            zzghVar.zze = zzkc.n(zzkiVar);
        }
        zzil.e(iterable, zzghVar.zze);
    }

    static /* synthetic */ void J(zzgh zzghVar, Iterable iterable) {
        zzki zzkiVar = zzghVar.zzf;
        if (!zzkiVar.a()) {
            zzghVar.zzf = zzkc.n(zzkiVar);
        }
        zzil.e(iterable, zzghVar.zzf);
    }

    static /* synthetic */ void L(zzgh zzghVar, Iterable iterable) {
        zzghVar.Q();
        zzil.e(iterable, zzghVar.zzg);
    }

    static /* synthetic */ void N(zzgh zzghVar, int i10) {
        zzghVar.Q();
        zzghVar.zzg.remove(i10);
    }

    static /* synthetic */ void O(zzgh zzghVar, Iterable iterable) {
        zzghVar.R();
        zzil.e(iterable, zzghVar.zzh);
    }

    static /* synthetic */ void P(zzgh zzghVar, int i10) {
        zzghVar.R();
        zzghVar.zzh.remove(i10);
    }

    private final void Q() {
        zzkj zzkjVar = this.zzg;
        if (zzkjVar.a()) {
            return;
        }
        this.zzg = zzkc.p(zzkjVar);
    }

    private final void R() {
        zzkj zzkjVar = this.zzh;
        if (zzkjVar.a()) {
            return;
        }
        this.zzh = zzkc.p(zzkjVar);
    }

    public static zzgg z() {
        return (zzgg) zza.i();
    }

    public final zzgj C(int i10) {
        return (zzgj) this.zzh.get(i10);
    }

    public final List D() {
        return this.zzg;
    }

    public final List E() {
        return this.zzf;
    }

    public final List F() {
        return this.zzh;
    }

    public final List G() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", zzfq.class, "zzh", zzgj.class});
        }
        if (i11 == 3) {
            return new zzgh();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzgg(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzg.size();
    }

    public final int v() {
        return this.zzf.size();
    }

    public final int w() {
        return this.zzh.size();
    }

    public final int x() {
        return this.zze.size();
    }

    public final zzfq y(int i10) {
        return (zzfq) this.zzg.get(i10);
    }
}
