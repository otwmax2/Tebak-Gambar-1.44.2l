package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzguj extends zzgqm implements zzgrx {
    private static final zzgqs zzb = new zzguc();
    private static final zzguj zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private int zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;
    private int zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;
    private boolean zzt;
    private long zzu;
    private boolean zzw;
    private String zzh = BuildConfig.FLAVOR;
    private zzgqv zzi = zzgqm.u();
    private String zzn = BuildConfig.FLAVOR;
    private zzgqv zzs = zzgqm.u();
    private zzgqr zzv = zzgqm.q();

    static {
        zzguj zzgujVar = new zzguj();
        zzd = zzgujVar;
        zzgqm.A(zzguj.class, zzgujVar);
    }

    private zzguj() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzd, "\u0001\u0012\u0000\u0001\u0001\u0012\u0012\u0000\u0003\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004\u001a\u0005ဌ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006\tဈ\u0007\nင\b\u000bင\t\fင\n\rဇ\u000b\u000e\u001b\u000fဇ\f\u0010ဂ\r\u0011,\u0012ဇ\u000e", new Object[]{"zze", "zzf", zzgui.f19666a, "zzg", "zzh", "zzi", "zzj", zzguh.f19665a, "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", zzgug.class, "zzt", "zzu", "zzv", zzgua.a(), "zzw"});
        }
        if (i11 == 3) {
            return new zzguj();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgud(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzd;
    }
}
