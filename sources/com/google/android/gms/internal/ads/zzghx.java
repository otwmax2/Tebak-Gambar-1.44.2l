package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzghx extends zzgqm implements zzgrx {
    private static final zzghx zzb;
    private zzgia zzd;
    private int zze;

    static {
        zzghx zzghxVar = new zzghx();
        zzb = zzghxVar;
        zzgqm.A(zzghx.class, zzghxVar);
    }

    private zzghx() {
    }

    public static zzghw J() {
        return (zzghw) zzb.h();
    }

    public static zzghx L(zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        return (zzghx) zzgqm.n(zzb, zzgpeVar, zzgpyVar);
    }

    static /* synthetic */ void N(zzghx zzghxVar, zzgia zzgiaVar) {
        zzgiaVar.getClass();
        zzghxVar.zzd = zzgiaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzghx();
        }
        zzghv zzghvVar = null;
        if (i11 == 4) {
            return new zzghw(zzghvVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zze;
    }

    public final zzgia M() {
        zzgia zzgiaVar = this.zzd;
        return zzgiaVar == null ? zzgia.L() : zzgiaVar;
    }
}
