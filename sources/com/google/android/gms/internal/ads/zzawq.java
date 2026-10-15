package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzawq extends zzgqm implements zzgrx {
    private static final zzawq zzb;
    private int zzd;
    private int zze;
    private zzaxg zzg;
    private zzaxi zzh;
    private zzaxk zzj;
    private zzayu zzk;
    private zzayk zzl;
    private zzaxy zzm;
    private zzaya zzn;
    private int zzf = 1000;
    private zzgqv zzi = zzgqm.u();
    private zzgqv zzo = zzgqm.u();

    static {
        zzawq zzawqVar = new zzawq();
        zzb = zzawqVar;
        zzgqm.A(zzawq.class, zzawqVar);
    }

    private zzawq() {
    }

    public static zzawq J() {
        return zzb;
    }

    static /* synthetic */ void L(zzawq zzawqVar, zzawo zzawoVar) {
        zzawqVar.zze = zzawoVar.zza();
        zzawqVar.zzd |= 1;
    }

    static /* synthetic */ void M(zzawq zzawqVar, zzaxi zzaxiVar) {
        zzaxiVar.getClass();
        zzawqVar.zzh = zzaxiVar;
        zzawqVar.zzd |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007ဌ\u0000\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzd", "zze", zzawo.e(), "zzf", zzaxr.f10110a, "zzg", "zzh", "zzi", zzaxe.class, "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", zzazg.class});
        }
        if (i11 == 3) {
            return new zzawq();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzawp(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzaxi K() {
        zzaxi zzaxiVar = this.zzh;
        return zzaxiVar == null ? zzaxi.J() : zzaxiVar;
    }
}
