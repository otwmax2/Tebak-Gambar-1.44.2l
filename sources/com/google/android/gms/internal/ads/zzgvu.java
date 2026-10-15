package com.google.android.gms.internal.ads;

import com.facebook.internal.Utility;
import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgvu extends zzgqm implements zzgrx {
    private static final zzgvu zzb;
    private zzgur zzB;
    private zzguj zzD;
    private int zzd;
    private int zze;
    private int zzf;
    private zzgun zzj;
    private zzgvi zzn;
    private boolean zzo;
    private boolean zzr;
    private boolean zzs;
    private zzgvq zzu;
    private boolean zzv;
    private zzgvt zzz;
    private byte zzF = 2;
    private String zzg = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;
    private String zzi = BuildConfig.FLAVOR;
    private zzgqv zzk = zzgqm.u();
    private zzgqv zzl = zzgqm.u();
    private String zzm = BuildConfig.FLAVOR;
    private zzgqv zzp = zzgqm.u();
    private String zzq = BuildConfig.FLAVOR;
    private zzgpe zzt = zzgpe.f19379p;
    private String zzw = BuildConfig.FLAVOR;
    private zzgqv zzx = zzgqm.u();
    private zzgqv zzy = zzgqm.u();
    private zzgqv zzA = zzgqm.u();
    private String zzC = BuildConfig.FLAVOR;
    private zzgqv zzE = zzgqm.u();

    static {
        zzgvu zzgvuVar = new zzgvu();
        zzb = zzgvuVar;
        zzgqm.A(zzgvu.class, zzgvuVar);
    }

    private zzgvu() {
    }

    public static zzgul I() {
        return (zzgul) zzb.h();
    }

    static /* synthetic */ void N(zzgvu zzgvuVar, String str) {
        str.getClass();
        zzgvuVar.zzd |= 4;
        zzgvuVar.zzg = str;
    }

    static /* synthetic */ void O(zzgvu zzgvuVar, String str) {
        str.getClass();
        zzgvuVar.zzd |= 8;
        zzgvuVar.zzh = str;
    }

    static /* synthetic */ void P(zzgvu zzgvuVar, zzgun zzgunVar) {
        zzgunVar.getClass();
        zzgvuVar.zzj = zzgunVar;
        zzgvuVar.zzd |= 32;
    }

    static /* synthetic */ void Q(zzgvu zzgvuVar, zzgvo zzgvoVar) {
        zzgvoVar.getClass();
        zzgqv zzgqvVar = zzgvuVar.zzk;
        if (!zzgqvVar.a()) {
            zzgvuVar.zzk = zzgqm.v(zzgqvVar);
        }
        zzgvuVar.zzk.add(zzgvoVar);
    }

    static /* synthetic */ void R(zzgvu zzgvuVar, String str) {
        zzgvuVar.zzd |= 64;
        zzgvuVar.zzm = str;
    }

    static /* synthetic */ void S(zzgvu zzgvuVar) {
        zzgvuVar.zzd &= -65;
        zzgvuVar.zzm = zzb.zzm;
    }

    static /* synthetic */ void T(zzgvu zzgvuVar, zzgvi zzgviVar) {
        zzgviVar.getClass();
        zzgvuVar.zzn = zzgviVar;
        zzgvuVar.zzd |= 128;
    }

    static /* synthetic */ void V(zzgvu zzgvuVar, zzgvq zzgvqVar) {
        zzgvqVar.getClass();
        zzgvuVar.zzu = zzgvqVar;
        zzgvuVar.zzd |= Utility.DEFAULT_STREAM_BUFFER_SIZE;
    }

    static /* synthetic */ void W(zzgvu zzgvuVar, Iterable iterable) {
        zzgqv zzgqvVar = zzgvuVar.zzx;
        if (!zzgqvVar.a()) {
            zzgvuVar.zzx = zzgqm.v(zzgqvVar);
        }
        zzgon.e(iterable, zzgvuVar.zzx);
    }

    static /* synthetic */ void X(zzgvu zzgvuVar, Iterable iterable) {
        zzgqv zzgqvVar = zzgvuVar.zzy;
        if (!zzgqvVar.a()) {
            zzgvuVar.zzy = zzgqm.v(zzgqvVar);
        }
        zzgon.e(iterable, zzgvuVar.zzy);
    }

    static /* synthetic */ void Y(zzgvu zzgvuVar, int i10) {
        zzgvuVar.zze = i10 - 1;
        zzgvuVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return Byte.valueOf(this.zzF);
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0001\u001b\u0000\u0001\u0001\u001b\u001b\u0000\u0007\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ\u0000\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0010\u001b\u0011ဉ\r\u0012ဇ\u000e\u0013ဈ\u000f\u0014\u001a\u0015\u001a\u0016ဉ\u0010\u0017\u001b\u0018ဉ\u0011\u0019ဈ\u0012\u001aဉ\u0013\u001b\u001b", new Object[]{"zzd", "zzg", "zzh", "zzi", "zzk", zzgvo.class, "zzo", "zzp", "zzq", "zzr", "zzs", "zze", zzgvj.f19673a, "zzf", zzguk.f19667a, "zzj", "zzm", "zzn", "zzt", "zzl", zzgvy.class, "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", zzgwe.class, "zzB", "zzC", "zzD", "zzE", zzguv.class});
        }
        if (i11 == 3) {
            return new zzgvu();
        }
        zzgub zzgubVar = null;
        if (i11 == 4) {
            return new zzgul(zzgubVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        this.zzF = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final String K() {
        return this.zzm;
    }

    public final String L() {
        return this.zzg;
    }

    public final List M() {
        return this.zzk;
    }
}
