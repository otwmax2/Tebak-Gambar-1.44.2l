package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzanp extends zzgqm implements zzgrx {
    private static final zzanp zzb;
    private int zzd;
    private long zzt;
    private long zzu;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private int zzk = 1000;
    private long zzl = -1;
    private long zzm = -1;
    private long zzn = -1;
    private int zzo = 1000;
    private long zzp = -1;
    private long zzq = -1;
    private long zzr = -1;
    private long zzs = -1;
    private long zzv = -1;
    private long zzw = -1;
    private long zzx = -1;
    private long zzy = -1;

    static {
        zzanp zzanpVar = new zzanp();
        zzb = zzanpVar;
        zzgqm.A(zzanp.class, zzanpVar);
    }

    private zzanp() {
    }

    public static zzano I() {
        return (zzano) zzb.h();
    }

    static /* synthetic */ void K(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 1;
        zzanpVar.zze = j10;
    }

    static /* synthetic */ void L(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 2;
        zzanpVar.zzf = j10;
    }

    static /* synthetic */ void M(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 4;
        zzanpVar.zzg = j10;
    }

    static /* synthetic */ void N(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 8;
        zzanpVar.zzh = j10;
    }

    static /* synthetic */ void O(zzanp zzanpVar) {
        zzanpVar.zzd &= -9;
        zzanpVar.zzh = -1L;
    }

    static /* synthetic */ void P(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 16;
        zzanpVar.zzi = j10;
    }

    static /* synthetic */ void Q(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 32;
        zzanpVar.zzj = j10;
    }

    static /* synthetic */ void R(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 128;
        zzanpVar.zzl = j10;
    }

    static /* synthetic */ void S(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 256;
        zzanpVar.zzm = j10;
    }

    static /* synthetic */ void T(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 512;
        zzanpVar.zzn = j10;
    }

    static /* synthetic */ void V(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 2048;
        zzanpVar.zzp = j10;
    }

    static /* synthetic */ void W(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 4096;
        zzanpVar.zzq = j10;
    }

    static /* synthetic */ void X(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= Utility.DEFAULT_STREAM_BUFFER_SIZE;
        zzanpVar.zzr = j10;
    }

    static /* synthetic */ void Y(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 16384;
        zzanpVar.zzs = j10;
    }

    static /* synthetic */ void Z(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 32768;
        zzanpVar.zzt = j10;
    }

    static /* synthetic */ void a0(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
        zzanpVar.zzu = j10;
    }

    static /* synthetic */ void b0(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 131072;
        zzanpVar.zzv = j10;
    }

    static /* synthetic */ void c0(zzanp zzanpVar, long j10) {
        zzanpVar.zzd |= 262144;
        zzanpVar.zzw = j10;
    }

    static /* synthetic */ void d0(zzanp zzanpVar, int i10) {
        zzanpVar.zzk = i10 - 1;
        zzanpVar.zzd |= 64;
    }

    static /* synthetic */ void e0(zzanp zzanpVar, int i10) {
        zzanpVar.zzo = i10 - 1;
        zzanpVar.zzd |= 1024;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            zzgqq zzgqqVar = zzany.f9539a;
            return zzgqm.x(zzb, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzgqqVar, "zzl", "zzm", "zzn", "zzo", zzgqqVar, "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy"});
        }
        if (i11 == 3) {
            return new zzanp();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzano(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
