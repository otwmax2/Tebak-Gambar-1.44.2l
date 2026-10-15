package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfo extends zzkc implements zzlk {
    private static final zzfo zza;
    private int zze;
    private int zzf;
    private zzgh zzg;
    private zzgh zzh;
    private boolean zzi;

    static {
        zzfo zzfoVar = new zzfo();
        zza = zzfoVar;
        zzkc.s(zzfo.class, zzfoVar);
    }

    private zzfo() {
    }

    static /* synthetic */ void A(zzfo zzfoVar, zzgh zzghVar) {
        zzghVar.getClass();
        zzfoVar.zzg = zzghVar;
        zzfoVar.zze |= 2;
    }

    static /* synthetic */ void B(zzfo zzfoVar, zzgh zzghVar) {
        zzfoVar.zzh = zzghVar;
        zzfoVar.zze |= 4;
    }

    static /* synthetic */ void C(zzfo zzfoVar, boolean z10) {
        zzfoVar.zze |= 8;
        zzfoVar.zzi = z10;
    }

    public static zzfn v() {
        return (zzfn) zza.i();
    }

    static /* synthetic */ void z(zzfo zzfoVar, int i10) {
        zzfoVar.zze |= 1;
        zzfoVar.zzf = i10;
    }

    public final boolean D() {
        return this.zzi;
    }

    public final boolean E() {
        return (this.zze & 1) != 0;
    }

    public final boolean F() {
        return (this.zze & 8) != 0;
    }

    public final boolean G() {
        return (this.zze & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzfo();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzfn(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzf;
    }

    public final zzgh x() {
        zzgh zzghVar = this.zzg;
        return zzghVar == null ? zzgh.B() : zzghVar;
    }

    public final zzgh y() {
        zzgh zzghVar = this.zzh;
        return zzghVar == null ? zzgh.B() : zzghVar;
    }
}
