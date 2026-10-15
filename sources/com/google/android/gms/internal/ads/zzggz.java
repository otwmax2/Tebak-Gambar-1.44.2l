package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzggz extends zzgqm implements zzgrx {
    private static final zzggz zzb;
    private int zzd;
    private zzghc zze;

    static {
        zzggz zzggzVar = new zzggz();
        zzb = zzggzVar;
        zzgqm.A(zzggz.class, zzggzVar);
    }

    private zzggz() {
    }

    public static zzggy J() {
        return (zzggy) zzb.h();
    }

    public static zzggz L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzggz) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void O(zzggz zzggzVar, zzghc zzghcVar) {
        zzghcVar.getClass();
        zzggzVar.zze = zzghcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzggz();
        }
        zzggx zzggxVar = null;
        if (i11 == 4) {
            return new zzggy(zzggxVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zzd;
    }

    public final zzghc M() {
        zzghc zzghcVar = this.zze;
        return zzghcVar == null ? zzghc.L() : zzghcVar;
    }
}
