package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgwe extends zzgqm implements zzgrx {
    private static final zzgwe zzb;
    private int zzd;
    private boolean zzk;
    private double zzl;
    private int zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private String zze = BuildConfig.FLAVOR;
    private String zzf = BuildConfig.FLAVOR;
    private int zzg = 4;
    private zzgqv zzh = zzgqm.u();
    private String zzi = BuildConfig.FLAVOR;
    private String zzj = BuildConfig.FLAVOR;
    private zzgqv zzm = zzgqm.u();

    static {
        zzgwe zzgweVar = new zzgwe();
        zzb = zzgweVar;
        zzgqm.A(zzgwe.class, zzgweVar);
    }

    private zzgwe() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001ဈ\u0000\u0002ဌ\u0002\u0003\u001a\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဇ\u0005\u0007က\u0006\b\u001b\tဈ\u0001\nဌ\u0007\u000bဇ\b\fဇ\t\rဇ\n\u000eဇ\u000b", new Object[]{"zzd", "zze", "zzg", zzgwd.f19680a, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", zzgwc.class, "zzf", "zzn", zzgwa.f19679a, "zzo", "zzp", "zzq", "zzr"});
        }
        if (i11 == 3) {
            return new zzgwe();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgvz(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
