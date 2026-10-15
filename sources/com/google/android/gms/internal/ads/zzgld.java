package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgld extends zzgqm implements zzgrx {
    private static final zzgld zzb;
    private String zzd = BuildConfig.FLAVOR;
    private zzgpe zze = zzgpe.f19379p;
    private int zzf;

    static {
        zzgld zzgldVar = new zzgld();
        zzb = zzgldVar;
        zzgqm.A(zzgld.class, zzgldVar);
    }

    private zzgld() {
    }

    public static zzglc I() {
        return (zzglc) zzb.h();
    }

    public static zzgld K() {
        return zzb;
    }

    static /* synthetic */ void O(zzgld zzgldVar, String str) {
        str.getClass();
        zzgldVar.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzgld();
        }
        zzglb zzglbVar = null;
        if (i11 == 4) {
            return new zzglc(zzglbVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgme L() {
        zzgme zzgmeVarC = zzgme.c(this.zzf);
        return zzgmeVarC == null ? zzgme.UNRECOGNIZED : zzgmeVarC;
    }

    public final zzgpe M() {
        return this.zze;
    }

    public final String N() {
        return this.zzd;
    }
}
