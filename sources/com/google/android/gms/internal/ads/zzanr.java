package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzanr extends zzgqm implements zzgrx {
    private static final zzanr zzb;
    private int zzd;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;
    private long zzl = -1;

    static {
        zzanr zzanrVar = new zzanr();
        zzb = zzanrVar;
        zzgqm.A(zzanr.class, zzanrVar);
    }

    private zzanr() {
    }

    public static zzanq I() {
        return (zzanq) zzb.h();
    }

    static /* synthetic */ void K(zzanr zzanrVar, long j10) {
        zzanrVar.zzd |= 1;
        zzanrVar.zze = j10;
    }

    static /* synthetic */ void L(zzanr zzanrVar, long j10) {
        zzanrVar.zzd |= 4;
        zzanrVar.zzg = j10;
    }

    static /* synthetic */ void M(zzanr zzanrVar, long j10) {
        zzanrVar.zzd |= 8;
        zzanrVar.zzh = j10;
    }

    static /* synthetic */ void N(zzanr zzanrVar, long j10) {
        zzanrVar.zzd |= 16;
        zzanrVar.zzi = j10;
    }

    static /* synthetic */ void O(zzanr zzanrVar, long j10) {
        zzanrVar.zzd |= 32;
        zzanrVar.zzj = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i11 == 3) {
            return new zzanr();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzanq(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
