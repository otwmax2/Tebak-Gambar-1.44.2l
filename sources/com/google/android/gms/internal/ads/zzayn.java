package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzayn extends zzgqm implements zzgrx {
    private static final zzgqs zzb = new zzayl();
    private static final zzayn zzd;
    private int zze;
    private long zzf;
    private int zzg;
    private long zzh;
    private long zzi;
    private zzgqr zzj = zzgqm.q();
    private zzayi zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private long zzr;

    static {
        zzayn zzaynVar = new zzayn();
        zzd = zzaynVar;
        zzgqm.A(zzayn.class, zzaynVar);
    }

    private zzayn() {
    }

    static /* synthetic */ void I(zzayn zzaynVar, int i10) {
        zzaynVar.zzm = i10 - 1;
        zzaynVar.zze |= 64;
    }

    static /* synthetic */ void J(zzayn zzaynVar, int i10) {
        zzaynVar.zzn = i10 - 1;
        zzaynVar.zze |= 128;
    }

    static /* synthetic */ void K(zzayn zzaynVar, int i10) {
        zzaynVar.zzp = i10 - 1;
        zzaynVar.zze |= 512;
    }

    public static zzaym Q() {
        return (zzaym) zzd.h();
    }

    public static zzayn S(byte[] bArr) throws zzgqy {
        return (zzayn) zzgqm.m(zzd, bArr);
    }

    static /* synthetic */ void W(zzayn zzaynVar, long j10) {
        zzaynVar.zze |= 1;
        zzaynVar.zzf = j10;
    }

    static /* synthetic */ void X(zzayn zzaynVar, long j10) {
        zzaynVar.zze |= 4;
        zzaynVar.zzh = j10;
    }

    static /* synthetic */ void Y(zzayn zzaynVar, long j10) {
        zzaynVar.zze |= 8;
        zzaynVar.zzi = j10;
    }

    static /* synthetic */ void Z(zzayn zzaynVar, Iterable iterable) {
        zzgqr zzgqrVar = zzaynVar.zzj;
        if (!zzgqrVar.a()) {
            zzaynVar.zzj = zzgqm.r(zzgqrVar);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzaynVar.zzj.j0(((zzaxc) it.next()).zza());
        }
    }

    static /* synthetic */ void a0(zzayn zzaynVar, zzayi zzayiVar) {
        zzayiVar.getClass();
        zzaynVar.zzk = zzayiVar;
        zzaynVar.zze |= 16;
    }

    static /* synthetic */ void b0(zzayn zzaynVar, int i10) {
        zzaynVar.zze |= 256;
        zzaynVar.zzo = i10;
    }

    static /* synthetic */ void c0(zzayn zzaynVar, zzayr zzayrVar) {
        zzaynVar.zzq = zzayrVar.zza();
        zzaynVar.zze |= 1024;
    }

    static /* synthetic */ void d0(zzayn zzaynVar, long j10) {
        zzaynVar.zze |= 2048;
        zzaynVar.zzr = j10;
    }

    static /* synthetic */ void j0(zzayn zzaynVar, int i10) {
        zzaynVar.zzg = i10 - 1;
        zzaynVar.zze |= 2;
    }

    static /* synthetic */ void k0(zzayn zzaynVar, int i10) {
        zzaynVar.zzl = i10 - 1;
        zzaynVar.zze |= 32;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            zzgqq zzgqqVar = zzaxr.f10110a;
            return zzgqm.x(zzd, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n\rဂ\u000b", new Object[]{"zze", "zzf", "zzg", zzgqqVar, "zzh", "zzi", "zzj", zzaxc.e(), "zzk", "zzl", zzgqqVar, "zzm", zzgqqVar, "zzn", zzgqqVar, "zzo", "zzp", zzgqqVar, "zzq", zzayr.e(), "zzr"});
        }
        if (i11 == 3) {
            return new zzayn();
        }
        zzawl zzawlVar = null;
        if (i11 == 4) {
            return new zzaym(zzawlVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzd;
    }

    public final int L() {
        return this.zzo;
    }

    public final long M() {
        return this.zzi;
    }

    public final long N() {
        return this.zzh;
    }

    public final long O() {
        return this.zzf;
    }

    public final zzayi P() {
        zzayi zzayiVar = this.zzk;
        return zzayiVar == null ? zzayi.K() : zzayiVar;
    }

    public final zzayr T() {
        zzayr zzayrVarC = zzayr.c(this.zzq);
        return zzayrVarC == null ? zzayr.UNSPECIFIED : zzayrVarC;
    }

    public final List V() {
        return new zzgqt(this.zzj, zzb);
    }

    public final int e0() {
        int iA = zzaxs.a(this.zzm);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }

    public final int f0() {
        int iA = zzaxs.a(this.zzn);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }

    public final int g0() {
        int iA = zzaxs.a(this.zzp);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }

    public final int h0() {
        int iA = zzaxs.a(this.zzg);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }

    public final int i0() {
        int iA = zzaxs.a(this.zzl);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }
}
