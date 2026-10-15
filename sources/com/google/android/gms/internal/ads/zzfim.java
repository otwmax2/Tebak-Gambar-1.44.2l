package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfim extends zzgqm implements zzgrx {
    private static final zzgqs zzb = new zzfij();
    private static final zzfim zzd;
    private int zze;
    private zzgqr zzf = zzgqm.q();
    private String zzg = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;

    static {
        zzfim zzfimVar = new zzfim();
        zzd = zzfimVar;
        zzgqm.A(zzfim.class, zzfimVar);
    }

    private zzfim() {
    }

    public static zzfil I() {
        return (zzfil) zzd.h();
    }

    static /* synthetic */ void K(zzfim zzfimVar, String str) {
        str.getClass();
        zzfimVar.zze |= 1;
        zzfimVar.zzg = str;
    }

    static /* synthetic */ void L(zzfim zzfimVar, int i10) {
        zzgqr zzgqrVar = zzfimVar.zzf;
        if (!zzgqrVar.a()) {
            zzfimVar.zzf = zzgqm.r(zzgqrVar);
        }
        zzfimVar.zzf.j0(2);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzd, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zze", "zzf", zzfik.f18277a, "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzfim();
        }
        zzfij zzfijVar = null;
        if (i11 == 4) {
            return new zzfil(zzfijVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzd;
    }
}
