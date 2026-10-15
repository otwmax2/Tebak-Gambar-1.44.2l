package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzawz extends zzgqm implements zzgrx {
    private static final zzawz zzb;
    private zzgqv zzd = zzgqm.u();

    static {
        zzawz zzawzVar = new zzawz();
        zzb = zzawzVar;
        zzgqm.A(zzawz.class, zzawzVar);
    }

    private zzawz() {
    }

    public static zzawt I() {
        return (zzawt) zzb.h();
    }

    static /* synthetic */ void K(zzawz zzawzVar, zzaws zzawsVar) {
        zzawsVar.getClass();
        zzgqv zzgqvVar = zzawzVar.zzd;
        if (!zzgqvVar.a()) {
            zzawzVar.zzd = zzgqm.v(zzgqvVar);
        }
        zzawzVar.zzd.add(zzawsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzaws.class});
        }
        if (i11 == 3) {
            return new zzawz();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzawt(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
