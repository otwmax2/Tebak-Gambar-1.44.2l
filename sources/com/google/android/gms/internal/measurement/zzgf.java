package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgf extends zzkc implements zzlk {
    private static final zzgf zza;
    private int zze;
    private int zzf = 1;
    private zzkj zzg = zzkc.o();

    static {
        zzgf zzgfVar = new zzgf();
        zza = zzgfVar;
        zzkc.s(zzgf.class, zzgfVar);
    }

    private zzgf() {
    }

    public static zzgd u() {
        return (zzgd) zza.i();
    }

    static /* synthetic */ void w(zzgf zzgfVar, zzfu zzfuVar) {
        zzfuVar.getClass();
        zzkj zzkjVar = zzgfVar.zzg;
        if (!zzkjVar.a()) {
            zzgfVar.zzg = zzkc.p(zzkjVar);
        }
        zzgfVar.zzg.add(zzfuVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b", new Object[]{"zze", "zzf", zzge.f23501a, "zzg", zzfu.class});
        }
        if (i11 == 3) {
            return new zzgf();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzgd(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }
}
