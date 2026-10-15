package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeh extends zzkc implements zzlk {
    private static final zzeh zza;
    private int zze;
    private int zzf;
    private zzkj zzg = zzkc.o();
    private zzkj zzh = zzkc.o();
    private boolean zzi;
    private boolean zzj;

    static {
        zzeh zzehVar = new zzeh();
        zza = zzehVar;
        zzkc.s(zzeh.class, zzehVar);
    }

    private zzeh() {
    }

    static /* synthetic */ void C(zzeh zzehVar, int i10, zzes zzesVar) {
        zzesVar.getClass();
        zzkj zzkjVar = zzehVar.zzg;
        if (!zzkjVar.a()) {
            zzehVar.zzg = zzkc.p(zzkjVar);
        }
        zzehVar.zzg.set(i10, zzesVar);
    }

    static /* synthetic */ void D(zzeh zzehVar, int i10, zzej zzejVar) {
        zzejVar.getClass();
        zzkj zzkjVar = zzehVar.zzh;
        if (!zzkjVar.a()) {
            zzehVar.zzh = zzkc.p(zzkjVar);
        }
        zzehVar.zzh.set(i10, zzejVar);
    }

    public final List A() {
        return this.zzh;
    }

    public final List B() {
        return this.zzg;
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
            return zzkc.r(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", zzes.class, "zzh", zzej.class, "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzeh();
        }
        zzef zzefVar = null;
        if (i11 == 4) {
            return new zzeg(zzefVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzf;
    }

    public final int v() {
        return this.zzh.size();
    }

    public final int w() {
        return this.zzg.size();
    }

    public final zzej y(int i10) {
        return (zzej) this.zzh.get(i10);
    }

    public final zzes z(int i10) {
        return (zzes) this.zzg.get(i10);
    }
}
