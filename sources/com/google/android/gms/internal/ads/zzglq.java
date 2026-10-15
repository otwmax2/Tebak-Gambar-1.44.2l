package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzglq extends zzgqm implements zzgrx {
    private static final zzglq zzb;
    private int zzd;
    private zzgqv zze = zzgqm.u();

    static {
        zzglq zzglqVar = new zzglq();
        zzb = zzglqVar;
        zzgqm.A(zzglq.class, zzglqVar);
    }

    private zzglq() {
    }

    public static zzgln I() {
        return (zzgln) zzb.h();
    }

    static /* synthetic */ void L(zzglq zzglqVar, zzglp zzglpVar) {
        zzglpVar.getClass();
        zzgqv zzgqvVar = zzglqVar.zze;
        if (!zzgqvVar.a()) {
            zzglqVar.zze = zzgqm.v(zzgqvVar);
        }
        zzglqVar.zze.add(zzglpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzd", "zze", zzglp.class});
        }
        if (i11 == 3) {
            return new zzglq();
        }
        zzglm zzglmVar = null;
        if (i11 == 4) {
            return new zzgln(zzglmVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
