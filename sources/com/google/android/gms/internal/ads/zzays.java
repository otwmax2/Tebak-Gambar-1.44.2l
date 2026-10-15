package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzays extends zzgqm implements zzgrx {
    private static final zzays zzb;
    private int zzd;
    private int zzf;
    private int zzg;
    private long zzh;
    private long zzk;
    private int zzl;
    private zzgqv zze = zzgqm.u();
    private String zzi = BuildConfig.FLAVOR;
    private String zzj = BuildConfig.FLAVOR;

    static {
        zzays zzaysVar = new zzays();
        zzb = zzaysVar;
        zzgqm.A(zzays.class, zzaysVar);
    }

    private zzays() {
    }

    public static zzayo I() {
        return (zzayo) zzb.h();
    }

    static /* synthetic */ void K(zzays zzaysVar, Iterable iterable) {
        zzgqv zzgqvVar = zzaysVar.zze;
        if (!zzgqvVar.a()) {
            zzaysVar.zze = zzgqm.v(zzgqvVar);
        }
        zzgon.e(iterable, zzaysVar.zze);
    }

    static /* synthetic */ void L(zzays zzaysVar, int i10) {
        zzaysVar.zzd |= 1;
        zzaysVar.zzf = i10;
    }

    static /* synthetic */ void M(zzays zzaysVar, int i10) {
        zzaysVar.zzd |= 2;
        zzaysVar.zzg = i10;
    }

    static /* synthetic */ void N(zzays zzaysVar, long j10) {
        zzaysVar.zzd |= 4;
        zzaysVar.zzh = j10;
    }

    static /* synthetic */ void O(zzays zzaysVar, String str) {
        str.getClass();
        zzaysVar.zzd |= 8;
        zzaysVar.zzi = str;
    }

    static /* synthetic */ void P(zzays zzaysVar, String str) {
        str.getClass();
        zzaysVar.zzd |= 16;
        zzaysVar.zzj = str;
    }

    static /* synthetic */ void Q(zzays zzaysVar, long j10) {
        zzaysVar.zzd |= 32;
        zzaysVar.zzk = j10;
    }

    static /* synthetic */ void R(zzays zzaysVar, int i10) {
        zzaysVar.zzd |= 64;
        zzaysVar.zzl = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005\bင\u0006", new Object[]{"zzd", "zze", zzayn.class, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i11 == 3) {
            return new zzays();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzayo(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
