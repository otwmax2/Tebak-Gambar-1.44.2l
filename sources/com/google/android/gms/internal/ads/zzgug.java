package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgug extends zzgqm implements zzgrx {
    private static final zzgug zzb;
    private int zzd;
    private int zze;
    private long zzf;
    private zzgpe zzg = zzgpe.f19379p;

    static {
        zzgug zzgugVar = new zzgug();
        zzb = zzgugVar;
        zzgqm.A(zzgug.class, zzgugVar);
    }

    private zzgug() {
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဂ\u0001\u0003ည\u0002", new Object[]{"zzd", "zze", zzguf.f19664a, "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzgug();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgue(zzgubVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
