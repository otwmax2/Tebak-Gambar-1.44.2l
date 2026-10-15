package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzga extends zzkc implements zzlk {
    private static final zzga zza;
    private zzkj zze = zzkc.o();

    static {
        zzga zzgaVar = new zzga();
        zza = zzgaVar;
        zzkc.s(zzga.class, zzgaVar);
    }

    private zzga() {
    }

    public static zzfz u() {
        return (zzfz) zza.i();
    }

    static /* synthetic */ void y(zzga zzgaVar, zzgc zzgcVar) {
        zzgcVar.getClass();
        zzkj zzkjVar = zzgaVar.zze;
        if (!zzkjVar.a()) {
            zzgaVar.zze = zzkc.p(zzkjVar);
        }
        zzgaVar.zze.add(zzgcVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", zzgc.class});
        }
        if (i11 == 3) {
            return new zzga();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzfz(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final zzgc w(int i10) {
        return (zzgc) this.zze.get(0);
    }

    public final List x() {
        return this.zze;
    }
}
