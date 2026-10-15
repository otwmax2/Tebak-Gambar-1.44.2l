package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfew extends zzgqm implements zzgrx {
    private static final zzfew zzb;
    private zzfes zzd;

    static {
        zzfew zzfewVar = new zzfew();
        zzb = zzfewVar;
        zzgqm.A(zzfew.class, zzfewVar);
    }

    private zzfew() {
    }

    public static zzfev I() {
        return (zzfev) zzb.h();
    }

    static /* synthetic */ void K(zzfew zzfewVar, zzfes zzfesVar) {
        zzfesVar.getClass();
        zzfewVar.zzd = zzfesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0001\u0000\u0000\u0006\u0006\u0001\u0000\u0000\u0000\u0006\t", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new zzfew();
        }
        zzfet zzfetVar = null;
        if (i11 == 4) {
            return new zzfev(zzfetVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
