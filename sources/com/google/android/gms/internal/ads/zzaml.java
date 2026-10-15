package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaml extends zzgqm implements zzgrx {
    private static final zzaml zzb;
    private int zzd;
    private long zzf;
    private long zzj;
    private long zzk;
    private long zzm;
    private int zzq;
    private String zze = BuildConfig.FLAVOR;
    private String zzg = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;
    private String zzl = BuildConfig.FLAVOR;
    private String zzn = BuildConfig.FLAVOR;
    private String zzo = BuildConfig.FLAVOR;
    private zzgqv zzp = zzgqm.u();

    static {
        zzaml zzamlVar = new zzaml();
        zzb = zzamlVar;
        zzgqm.A(zzaml.class, zzamlVar);
    }

    private zzaml() {
    }

    public static zzamh I() {
        return (zzamh) zzb.h();
    }

    static /* synthetic */ void K(zzaml zzamlVar, long j10) {
        zzamlVar.zzd |= 2;
        zzamlVar.zzf = j10;
    }

    static /* synthetic */ void L(zzaml zzamlVar, String str) {
        str.getClass();
        zzamlVar.zzd |= 4;
        zzamlVar.zzg = str;
    }

    static /* synthetic */ void M(zzaml zzamlVar, String str) {
        str.getClass();
        zzamlVar.zzd |= 8;
        zzamlVar.zzh = str;
    }

    static /* synthetic */ void N(zzaml zzamlVar, String str) {
        zzamlVar.zzd |= 16;
        zzamlVar.zzi = str;
    }

    static /* synthetic */ void O(zzaml zzamlVar, String str) {
        zzamlVar.zzd |= 1024;
        zzamlVar.zzo = str;
    }

    static /* synthetic */ void P(zzaml zzamlVar, String str) {
        str.getClass();
        zzamlVar.zzd |= 1;
        zzamlVar.zze = str;
    }

    static /* synthetic */ void Q(zzaml zzamlVar, int i10) {
        zzamlVar.zzq = i10 - 1;
        zzamlVar.zzd |= 2048;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", zzamj.class, "zzq", zzamk.f9516a});
        }
        if (i11 == 3) {
            return new zzaml();
        }
        zzamg zzamgVar = null;
        if (i11 == 4) {
            return new zzamh(zzamgVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
