package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzanw extends zzgqm implements zzgrx {
    private static final zzanw zzb;
    private int zzd;
    private zzgpe zze;
    private zzgpe zzf;
    private zzgpe zzg;
    private zzgpe zzh;

    static {
        zzanw zzanwVar = new zzanw();
        zzb = zzanwVar;
        zzgqm.A(zzanw.class, zzanwVar);
    }

    private zzanw() {
        zzgpe zzgpeVar = zzgpe.f19379p;
        this.zze = zzgpeVar;
        this.zzf = zzgpeVar;
        this.zzg = zzgpeVar;
        this.zzh = zzgpeVar;
    }

    public static zzanv I() {
        return (zzanv) zzb.h();
    }

    public static zzanw K(byte[] bArr, zzgpy zzgpyVar) throws zzgqy {
        return (zzanw) zzgqm.p(zzb, bArr, zzgpyVar);
    }

    static /* synthetic */ void P(zzanw zzanwVar, zzgpe zzgpeVar) {
        zzanwVar.zzd |= 1;
        zzanwVar.zze = zzgpeVar;
    }

    static /* synthetic */ void Q(zzanw zzanwVar, zzgpe zzgpeVar) {
        zzanwVar.zzd |= 2;
        zzanwVar.zzf = zzgpeVar;
    }

    static /* synthetic */ void R(zzanw zzanwVar, zzgpe zzgpeVar) {
        zzanwVar.zzd |= 4;
        zzanwVar.zzg = zzgpeVar;
    }

    static /* synthetic */ void S(zzanw zzanwVar, zzgpe zzgpeVar) {
        zzanwVar.zzd |= 8;
        zzanwVar.zzh = zzgpeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzanw();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzanv(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgpe L() {
        return this.zze;
    }

    public final zzgpe M() {
        return this.zzf;
    }

    public final zzgpe N() {
        return this.zzh;
    }

    public final zzgpe O() {
        return this.zzg;
    }
}
