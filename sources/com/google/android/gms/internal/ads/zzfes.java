package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfes extends zzgqm implements zzgrx {
    private static final zzfes zzb;
    private int zzd;
    private boolean zze;
    private long zzf;
    private int zzg;
    private int zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private int zzo;
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;
    private String zzj = BuildConfig.FLAVOR;
    private String zzp = BuildConfig.FLAVOR;
    private String zzq = BuildConfig.FLAVOR;
    private String zzr = BuildConfig.FLAVOR;
    private String zzs = BuildConfig.FLAVOR;
    private String zzt = BuildConfig.FLAVOR;
    private String zzu = BuildConfig.FLAVOR;
    private String zzv = BuildConfig.FLAVOR;
    private String zzw = BuildConfig.FLAVOR;

    static {
        zzfes zzfesVar = new zzfes();
        zzb = zzfesVar;
        zzgqm.A(zzfes.class, zzfesVar);
    }

    private zzfes() {
    }

    public static zzfer I() {
        return (zzfer) zzb.h();
    }

    static /* synthetic */ void K(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzh = str;
    }

    static /* synthetic */ void L(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzi = str;
    }

    static /* synthetic */ void M(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzj = str;
    }

    static /* synthetic */ void Q(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzp = str;
    }

    static /* synthetic */ void R(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzq = str;
    }

    static /* synthetic */ void S(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzr = str;
    }

    static /* synthetic */ void W(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzt = str;
    }

    static /* synthetic */ void X(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzu = str;
    }

    static /* synthetic */ void Y(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzv = str;
    }

    static /* synthetic */ void Z(zzfes zzfesVar, String str) {
        str.getClass();
        zzfesVar.zzw = str;
    }

    static /* synthetic */ void c0(zzfes zzfesVar, int i10) {
        if (i10 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        zzfesVar.zzl = i10 - 2;
    }

    static /* synthetic */ void d0(zzfes zzfesVar, int i10) {
        if (i10 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        zzfesVar.zzo = i10 - 2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0014\u0000\u0000\u0001\u0014\u0014\u0000\u0000\u0000\u0001\f\u0002\u0007\u0003\u0002\u0004\f\u0005Ȉ\u0006Ȉ\u0007Ȉ\b\u0004\t\f\n\u0004\u000b\u0002\f\f\rȈ\u000eȈ\u000fȈ\u0010Ȉ\u0011Ȉ\u0012Ȉ\u0013Ȉ\u0014Ȉ", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw"});
        }
        if (i11 == 3) {
            return new zzfes();
        }
        zzfeq zzfeqVar = null;
        if (i11 == 4) {
            return new zzfer(zzfeqVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
