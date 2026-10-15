package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzawy extends zzgqm implements zzgrx {
    private static final zzawy zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        zzawy zzawyVar = new zzawy();
        zzb = zzawyVar;
        zzgqm.A(zzawy.class, zzawyVar);
    }

    private zzawy() {
    }

    public static zzawx I() {
        return (zzawx) zzb.h();
    }

    static /* synthetic */ void K(zzawy zzawyVar, boolean z10) {
        zzawyVar.zzd |= 1;
        zzawyVar.zze = z10;
    }

    static /* synthetic */ void L(zzawy zzawyVar, boolean z10) {
        zzawyVar.zzd |= 2;
        zzawyVar.zzf = z10;
    }

    static /* synthetic */ void M(zzawy zzawyVar, int i10) {
        zzawyVar.zzd |= 4;
        zzawyVar.zzg = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzawy();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzawx(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
