package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgjj extends zzgqm implements zzgrx {
    private static final zzgjj zzb;
    private zzgjs zzd;
    private zzgjd zze;
    private int zzf;

    static {
        zzgjj zzgjjVar = new zzgjj();
        zzb = zzgjjVar;
        zzgqm.A(zzgjj.class, zzgjjVar);
    }

    private zzgjj() {
    }

    public static zzgji J() {
        return (zzgji) zzb.h();
    }

    public static zzgjj L() {
        return zzb;
    }

    static /* synthetic */ void N(zzgjj zzgjjVar, zzgjs zzgjsVar) {
        zzgjsVar.getClass();
        zzgjjVar.zzd = zzgjsVar;
    }

    static /* synthetic */ void O(zzgjj zzgjjVar, zzgjd zzgjdVar) {
        zzgjdVar.getClass();
        zzgjjVar.zze = zzgjdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgjj();
        }
        zzgjh zzgjhVar = null;
        if (i11 == 4) {
            return new zzgji(zzgjhVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgjd I() {
        zzgjd zzgjdVar = this.zze;
        return zzgjdVar == null ? zzgjd.K() : zzgjdVar;
    }

    public final zzgjs M() {
        zzgjs zzgjsVar = this.zzd;
        return zzgjsVar == null ? zzgjs.K() : zzgjsVar;
    }

    public final int P() {
        int i10 = this.zzf;
        int i11 = 3;
        if (i10 == 0) {
            i11 = 2;
        } else if (i10 != 1) {
            i11 = i10 != 2 ? i10 != 3 ? 0 : 5 : 4;
        }
        if (i11 == 0) {
            return 1;
        }
        return i11;
    }
}
