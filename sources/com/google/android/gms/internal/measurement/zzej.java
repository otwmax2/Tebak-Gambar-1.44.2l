package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzej extends zzkc implements zzlk {
    private static final zzej zza;
    private int zze;
    private int zzf;
    private String zzg = BuildConfig.FLAVOR;
    private zzkj zzh = zzkc.o();
    private boolean zzi;
    private zzeq zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;

    static {
        zzej zzejVar = new zzej();
        zza = zzejVar;
        zzkc.s(zzej.class, zzejVar);
    }

    private zzej() {
    }

    static /* synthetic */ void C(zzej zzejVar, String str) {
        zzejVar.zze |= 2;
        zzejVar.zzg = str;
    }

    static /* synthetic */ void D(zzej zzejVar, int i10, zzel zzelVar) {
        zzelVar.getClass();
        zzkj zzkjVar = zzejVar.zzh;
        if (!zzkjVar.a()) {
            zzejVar.zzh = zzkc.p(zzkjVar);
        }
        zzejVar.zzh.set(i10, zzelVar);
    }

    public static zzei w() {
        return (zzei) zza.i();
    }

    public final String A() {
        return this.zzg;
    }

    public final List B() {
        return this.zzh;
    }

    public final boolean E() {
        return this.zzk;
    }

    public final boolean F() {
        return this.zzl;
    }

    public final boolean G() {
        return this.zzm;
    }

    public final boolean H() {
        return (this.zze & 8) != 0;
    }

    public final boolean I() {
        return (this.zze & 1) != 0;
    }

    public final boolean J() {
        return (this.zze & 64) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", zzel.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (i11 == 3) {
            return new zzej();
        }
        zzef zzefVar = null;
        if (i11 == 4) {
            return new zzei(zzefVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzh.size();
    }

    public final int v() {
        return this.zzf;
    }

    public final zzel y(int i10) {
        return (zzel) this.zzh.get(i10);
    }

    public final zzeq z() {
        zzeq zzeqVar = this.zzj;
        return zzeqVar == null ? zzeq.v() : zzeqVar;
    }
}
