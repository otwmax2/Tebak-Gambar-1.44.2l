package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgvo extends zzgqm implements zzgrx {
    private static final zzgvo zzb;
    private int zzd;
    private int zze;
    private zzgvb zzg;
    private zzgvf zzh;
    private int zzi;
    private int zzl;
    private byte zzn = 2;
    private String zzf = BuildConfig.FLAVOR;
    private zzgqr zzj = zzgqm.q();
    private String zzk = BuildConfig.FLAVOR;
    private zzgqv zzm = zzgqm.u();

    static {
        zzgvo zzgvoVar = new zzgvo();
        zzb = zzgvoVar;
        zzgqm.A(zzgvo.class, zzgvoVar);
    }

    private zzgvo() {
    }

    public static zzgvn J() {
        return (zzgvn) zzb.h();
    }

    static /* synthetic */ void M(zzgvo zzgvoVar, int i10) {
        zzgvoVar.zzd |= 1;
        zzgvoVar.zze = i10;
    }

    static /* synthetic */ void N(zzgvo zzgvoVar, String str) {
        str.getClass();
        zzgvoVar.zzd |= 2;
        zzgvoVar.zzf = str;
    }

    static /* synthetic */ void O(zzgvo zzgvoVar, zzgvb zzgvbVar) {
        zzgvbVar.getClass();
        zzgvoVar.zzg = zzgvbVar;
        zzgvoVar.zzd |= 4;
    }

    static /* synthetic */ void P(zzgvo zzgvoVar, String str) {
        str.getClass();
        zzgqv zzgqvVar = zzgvoVar.zzm;
        if (!zzgqvVar.a()) {
            zzgvoVar.zzm = zzgqm.v(zzgqvVar);
        }
        zzgvoVar.zzm.add(str);
    }

    static /* synthetic */ void Q(zzgvo zzgvoVar, int i10) {
        zzgvoVar.zzl = i10 - 1;
        zzgvoVar.zzd |= 64;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return Byte.valueOf(this.zzn);
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzgvl.f19674a, "zzm"});
        }
        if (i11 == 3) {
            return new zzgvo();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgvn(zzgubVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        this.zzn = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final int I() {
        return this.zzm.size();
    }

    public final String L() {
        return this.zzf;
    }
}
