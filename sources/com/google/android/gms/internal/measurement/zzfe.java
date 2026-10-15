package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfe extends zzkc implements zzlk {
    private static final zzfe zza;
    private int zze;
    private long zzf;
    private int zzh;
    private boolean zzm;
    private String zzg = BuildConfig.FLAVOR;
    private zzkj zzi = zzkc.o();
    private zzkj zzj = zzkc.o();
    private zzkj zzk = zzkc.o();
    private String zzl = BuildConfig.FLAVOR;
    private zzkj zzn = zzkc.o();
    private zzkj zzo = zzkc.o();
    private String zzp = BuildConfig.FLAVOR;

    static {
        zzfe zzfeVar = new zzfe();
        zza = zzfeVar;
        zzkc.s(zzfe.class, zzfeVar);
    }

    private zzfe() {
    }

    public static zzfe A() {
        return zza;
    }

    static /* synthetic */ void H(zzfe zzfeVar, int i10, zzfc zzfcVar) {
        zzfcVar.getClass();
        zzkj zzkjVar = zzfeVar.zzj;
        if (!zzkjVar.a()) {
            zzfeVar.zzj = zzkc.p(zzkjVar);
        }
        zzfeVar.zzj.set(i10, zzfcVar);
    }

    public static zzfd y() {
        return (zzfd) zza.i();
    }

    public final String B() {
        return this.zzg;
    }

    public final String C() {
        return this.zzp;
    }

    public final List D() {
        return this.zzk;
    }

    public final List E() {
        return this.zzo;
    }

    public final List F() {
        return this.zzn;
    }

    public final List G() {
        return this.zzi;
    }

    public final boolean J() {
        return this.zzm;
    }

    public final boolean K() {
        return (this.zze & 2) != 0;
    }

    public final boolean L() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zza, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", zzfi.class, "zzj", zzfc.class, "zzk", zzeh.class, "zzl", "zzm", "zzn", zzgs.class, "zzo", zzfa.class, "zzp"});
        }
        if (i11 == 3) {
            return new zzfe();
        }
        zzey zzeyVar = null;
        if (i11 == 4) {
            return new zzfd(zzeyVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zza;
    }

    public final int u() {
        return this.zzn.size();
    }

    public final int v() {
        return this.zzj.size();
    }

    public final long w() {
        return this.zzf;
    }

    public final zzfc x(int i10) {
        return (zzfc) this.zzj.get(i10);
    }
}
