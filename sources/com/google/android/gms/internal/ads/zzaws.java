package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaws extends zzgqm implements zzgrx {
    private static final zzaws zzb;
    private int zzd;
    private int zze;
    private zzaww zzf;
    private zzawy zzg;

    static {
        zzaws zzawsVar = new zzaws();
        zzb = zzawsVar;
        zzgqm.A(zzaws.class, zzawsVar);
    }

    private zzaws() {
    }

    public static zzawr I() {
        return (zzawr) zzb.h();
    }

    static /* synthetic */ void K(zzaws zzawsVar, zzaww zzawwVar) {
        zzawwVar.getClass();
        zzawsVar.zzf = zzawwVar;
        zzawsVar.zzd |= 2;
    }

    static /* synthetic */ void L(zzaws zzawsVar, zzawy zzawyVar) {
        zzawyVar.getClass();
        zzawsVar.zzg = zzawyVar;
        zzawsVar.zzd |= 4;
    }

    static /* synthetic */ void M(zzaws zzawsVar, int i10) {
        zzawsVar.zze = 1;
        zzawsVar.zzd = 1 | zzawsVar.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", zzawu.f10095a, "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzaws();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzawr(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
