package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzayi extends zzgqm implements zzgrx {
    private static final zzayi zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzayi zzayiVar = new zzayi();
        zzb = zzayiVar;
        zzgqm.A(zzayi.class, zzayiVar);
    }

    private zzayi() {
    }

    public static zzayb I() {
        return (zzayb) zzb.h();
    }

    public static zzayi K() {
        return zzb;
    }

    static /* synthetic */ void P(zzayi zzayiVar, int i10) {
        zzayiVar.zze = i10 - 1;
        zzayiVar.zzd |= 1;
    }

    static /* synthetic */ void Q(zzayi zzayiVar, int i10) {
        zzayiVar.zzf = i10 - 1;
        zzayiVar.zzd |= 2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001", new Object[]{"zzd", "zze", zzayg.f10123a, "zzf", zzayd.f10121a});
        }
        if (i11 == 3) {
            return new zzayi();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzayb(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final boolean L() {
        return (this.zzd & 2) != 0;
    }

    public final boolean M() {
        return (this.zzd & 1) != 0;
    }

    public final int N() {
        int iA = zzaye.a(this.zzf);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }

    public final int O() {
        int iA = zzayh.a(this.zze);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }
}
