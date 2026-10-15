package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaze extends zzgqm implements zzgrx {
    private static final zzaze zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzaze zzazeVar = new zzaze();
        zzb = zzazeVar;
        zzgqm.A(zzaze.class, zzazeVar);
    }

    private zzaze() {
    }

    public static zzazd I() {
        return (zzazd) zzb.h();
    }

    static /* synthetic */ void K(zzaze zzazeVar, int i10) {
        zzazeVar.zzd |= 1;
        zzazeVar.zze = i10;
    }

    static /* synthetic */ void L(zzaze zzazeVar, int i10) {
        zzazeVar.zzd |= 2;
        zzazeVar.zzf = i10;
    }

    static /* synthetic */ void M(zzaze zzazeVar, int i10) {
        zzazeVar.zzd |= 4;
        zzazeVar.zzg = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzaze();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzazd(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
