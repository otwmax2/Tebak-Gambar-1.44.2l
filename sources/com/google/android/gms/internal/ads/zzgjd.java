package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgjd extends zzgqm implements zzgrx {
    private static final zzgjd zzb;
    private zzgld zzd;

    static {
        zzgjd zzgjdVar = new zzgjd();
        zzb = zzgjdVar;
        zzgqm.A(zzgjd.class, zzgjdVar);
    }

    private zzgjd() {
    }

    public static zzgjc I() {
        return (zzgjc) zzb.h();
    }

    public static zzgjd K() {
        return zzb;
    }

    static /* synthetic */ void M(zzgjd zzgjdVar, zzgld zzgldVar) {
        zzgldVar.getClass();
        zzgjdVar.zzd = zzgldVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new zzgjd();
        }
        zzgjb zzgjbVar = null;
        if (i11 == 4) {
            return new zzgjc(zzgjbVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgld L() {
        zzgld zzgldVar = this.zzd;
        return zzgldVar == null ? zzgld.K() : zzgldVar;
    }
}
