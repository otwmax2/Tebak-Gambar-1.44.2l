package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasu extends zzgqm implements zzgrx {
    private static final zzasu zzb;
    private int zzd;
    private String zze = BuildConfig.FLAVOR;
    private String zzf = BuildConfig.FLAVOR;
    private long zzg;
    private long zzh;
    private long zzi;

    static {
        zzasu zzasuVar = new zzasu();
        zzb = zzasuVar;
        zzgqm.A(zzasu.class, zzasuVar);
    }

    private zzasu() {
    }

    public static zzast L() {
        return (zzast) zzb.h();
    }

    public static zzasu N() {
        return zzb;
    }

    public static zzasu O(zzgpe zzgpeVar) throws zzgqy {
        return (zzasu) zzgqm.l(zzb, zzgpeVar);
    }

    public static zzasu P(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzasu) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void S(zzasu zzasuVar, String str) {
        str.getClass();
        zzasuVar.zzd |= 1;
        zzasuVar.zze = str;
    }

    static /* synthetic */ void T(zzasu zzasuVar, long j10) {
        zzasuVar.zzd |= 16;
        zzasuVar.zzi = j10;
    }

    static /* synthetic */ void V(zzasu zzasuVar, String str) {
        str.getClass();
        zzasuVar.zzd |= 2;
        zzasuVar.zzf = str;
    }

    static /* synthetic */ void W(zzasu zzasuVar, long j10) {
        zzasuVar.zzd |= 4;
        zzasuVar.zzg = j10;
    }

    static /* synthetic */ void X(zzasu zzasuVar, long j10) {
        zzasuVar.zzd |= 8;
        zzasuVar.zzh = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzasu();
        }
        zzass zzassVar = null;
        if (i11 == 4) {
            return new zzast(zzassVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final long I() {
        return this.zzh;
    }

    public final long J() {
        return this.zzg;
    }

    public final long K() {
        return this.zzi;
    }

    public final String Q() {
        return this.zzf;
    }

    public final String R() {
        return this.zze;
    }
}
