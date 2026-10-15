package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgj extends zzkc implements zzlk {
    private static final zzgj zza;
    private int zze;
    private int zzf;
    private zzki zzg = zzkc.m();

    static {
        zzgj zzgjVar = new zzgj();
        zza = zzgjVar;
        zzkc.s(zzgj.class, zzgjVar);
    }

    private zzgj() {
    }

    static /* synthetic */ void A(zzgj zzgjVar, int i10) {
        zzgjVar.zze |= 1;
        zzgjVar.zzf = i10;
    }

    static /* synthetic */ void B(zzgj zzgjVar, Iterable iterable) {
        zzki zzkiVar = zzgjVar.zzg;
        if (!zzkiVar.a()) {
            zzgjVar.zzg = zzkc.n(zzkiVar);
        }
        zzil.e(iterable, zzgjVar.zzg);
    }

    public static zzgi x() {
        return (zzgi) zza.i();
    }

    public final boolean C() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzgj();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzgi(zzfjVar);
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
        return this.zzf;
    }

    public final long w(int i10) {
        return this.zzg.h(i10);
    }

    public final List z() {
        return this.zzg;
    }
}
