package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxu extends zzgqm implements zzgrx {
    private static final zzaxu zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private zzaze zzi;
    private zzaxm zzk;
    private zzaxp zzl;
    private zzayi zzm;
    private zzawq zzn;
    private zzays zzo;
    private zzazz zzp;
    private zzawz zzq;
    private String zzf = BuildConfig.FLAVOR;
    private int zzh = 1000;
    private zzgqu zzj = zzgqm.s();

    static {
        zzaxu zzaxuVar = new zzaxu();
        zzb = zzaxuVar;
        zzgqm.A(zzaxu.class, zzaxuVar);
    }

    private zzaxu() {
    }

    public static zzaxt K() {
        return (zzaxt) zzb.h();
    }

    static /* synthetic */ void N(zzaxu zzaxuVar, String str) {
        str.getClass();
        zzaxuVar.zzd |= 2;
        zzaxuVar.zzf = str;
    }

    static /* synthetic */ void O(zzaxu zzaxuVar, Iterable iterable) {
        zzgqu zzgquVar = zzaxuVar.zzj;
        if (!zzgquVar.a()) {
            int size = zzgquVar.size();
            zzaxuVar.zzj = zzgquVar.K(size == 0 ? 10 : size + size);
        }
        zzgon.e(iterable, zzaxuVar.zzj);
    }

    static /* synthetic */ void Q(zzaxu zzaxuVar, zzaxm zzaxmVar) {
        zzaxmVar.getClass();
        zzaxuVar.zzk = zzaxmVar;
        zzaxuVar.zzd |= 32;
    }

    static /* synthetic */ void R(zzaxu zzaxuVar, zzawq zzawqVar) {
        zzawqVar.getClass();
        zzaxuVar.zzn = zzawqVar;
        zzaxuVar.zzd |= 256;
    }

    static /* synthetic */ void S(zzaxu zzaxuVar, zzays zzaysVar) {
        zzaysVar.getClass();
        zzaxuVar.zzo = zzaysVar;
        zzaxuVar.zzd |= 512;
    }

    static /* synthetic */ void T(zzaxu zzaxuVar, zzazz zzazzVar) {
        zzazzVar.getClass();
        zzaxuVar.zzp = zzazzVar;
        zzaxuVar.zzd |= 1024;
    }

    static /* synthetic */ void V(zzaxu zzaxuVar, zzawz zzawzVar) {
        zzawzVar.getClass();
        zzaxuVar.zzq = zzawzVar;
        zzaxuVar.zzd |= 2048;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\fဌ\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzaxr.f10110a, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq"});
        }
        if (i11 == 3) {
            return new zzaxu();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaxt(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzawq I() {
        zzawq zzawqVar = this.zzn;
        return zzawqVar == null ? zzawq.J() : zzawqVar;
    }

    public final zzaxm J() {
        zzaxm zzaxmVar = this.zzk;
        return zzaxmVar == null ? zzaxm.J() : zzaxmVar;
    }

    public final String M() {
        return this.zzf;
    }
}
