package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzans extends zzgqm implements zzgrx {
    private static final zzans zzb;
    private long zzA;
    private long zzB;
    private long zzF;
    private long zzG;
    private long zzH;
    private long zzJ;
    private zzanu zzM;
    private zzann zzaC;
    private long zzaI;
    private zzane zzaL;
    private zzang zzaM;
    private int zzaP;
    private long zzaQ;
    private boolean zzaT;
    private long zzaV;
    private zzaob zzaW;
    private zzanp zzae;
    private zzanr zzag;
    private int zzar;
    private int zzas;
    private int zzat;
    private zzaod zzau;
    private int zzd;
    private int zze;
    private int zzf;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private long zzr;
    private long zzt;
    private long zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzg = BuildConfig.FLAVOR;
    private String zzh = BuildConfig.FLAVOR;
    private String zzs = BuildConfig.FLAVOR;
    private String zzC = BuildConfig.FLAVOR;
    private String zzD = "D";
    private String zzE = BuildConfig.FLAVOR;
    private String zzI = BuildConfig.FLAVOR;
    private long zzK = -1;
    private long zzL = -1;
    private long zzN = -1;
    private long zzO = -1;
    private long zzP = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private String zzT = "D";
    private String zzU = "D";
    private long zzV = -1;
    private int zzW = 1000;
    private int zzX = 1000;
    private long zzY = -1;
    private long zzZ = -1;
    private long zzaa = -1;
    private long zzab = -1;
    private long zzac = -1;
    private int zzad = 1000;
    private zzgqv zzaf = zzgqm.u();
    private long zzah = -1;
    private long zzai = -1;
    private long zzaj = -1;
    private long zzak = -1;
    private long zzal = -1;
    private long zzam = -1;
    private long zzan = -1;
    private long zzao = -1;
    private String zzap = "D";
    private long zzaq = -1;
    private long zzav = -1;
    private int zzaw = 1000;
    private int zzax = 1000;
    private String zzay = "D";
    private zzgqv zzaz = zzgqm.u();
    private int zzaA = 1000;
    private zzgqv zzaB = zzgqm.u();
    private String zzaD = BuildConfig.FLAVOR;
    private long zzaE = -1;
    private long zzaF = -1;
    private long zzaG = -1;
    private long zzaH = -1;
    private long zzaJ = -1;
    private String zzaK = BuildConfig.FLAVOR;
    private long zzaN = -1;
    private long zzaO = -1;
    private String zzaR = BuildConfig.FLAVOR;
    private int zzaS = 2;
    private String zzaU = BuildConfig.FLAVOR;
    private long zzaX = -1;
    private String zzaY = BuildConfig.FLAVOR;

    static {
        zzans zzansVar = new zzans();
        zzb = zzansVar;
        zzgqm.A(zzans.class, zzansVar);
    }

    private zzans() {
    }

    static /* synthetic */ void A0(zzans zzansVar, int i10) {
        zzansVar.zzax = i10 - 1;
        zzansVar.zzf |= 16;
    }

    static /* synthetic */ void B0(zzans zzansVar, int i10) {
        zzansVar.zzaP = i10 - 1;
        zzansVar.zzf |= 1048576;
    }

    static /* synthetic */ void C0(zzans zzansVar, int i10) {
        zzansVar.zzaS = 5;
        zzansVar.zzf |= 8388608;
    }

    public static zzans E0() {
        return zzb;
    }

    public static zzans F0(byte[] bArr, zzgpy zzgpyVar) throws zzgqy {
        return (zzans) zzgqm.p(zzb, bArr, zzgpyVar);
    }

    static /* synthetic */ void I(zzans zzansVar, long j10) {
        zzansVar.zzd |= 134217728;
        zzansVar.zzH = j10;
    }

    static /* synthetic */ void J(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zzd |= 268435456;
        zzansVar.zzI = str;
    }

    static /* synthetic */ void J0(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zzd |= 1;
        zzansVar.zzg = str;
    }

    static /* synthetic */ void K(zzans zzansVar, long j10) {
        zzansVar.zzd |= 536870912;
        zzansVar.zzJ = j10;
    }

    static /* synthetic */ void K0(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zzd |= 2;
        zzansVar.zzh = str;
    }

    static /* synthetic */ void L(zzans zzansVar, long j10) {
        zzansVar.zzd |= 1073741824;
        zzansVar.zzK = j10;
    }

    static /* synthetic */ void L0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 4;
        zzansVar.zzi = j10;
    }

    static /* synthetic */ void M(zzans zzansVar, long j10) {
        zzansVar.zzd |= Integer.MIN_VALUE;
        zzansVar.zzL = j10;
    }

    static /* synthetic */ void M0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 16;
        zzansVar.zzk = j10;
    }

    static /* synthetic */ void N(zzans zzansVar, long j10) {
        zzansVar.zze |= 2;
        zzansVar.zzN = j10;
    }

    static /* synthetic */ void N0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 32;
        zzansVar.zzl = j10;
    }

    static /* synthetic */ void O(zzans zzansVar, long j10) {
        zzansVar.zze |= 4;
        zzansVar.zzO = j10;
    }

    static /* synthetic */ void O0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 1024;
        zzansVar.zzq = j10;
    }

    static /* synthetic */ void P(zzans zzansVar, long j10) {
        zzansVar.zze |= 8;
        zzansVar.zzP = j10;
    }

    static /* synthetic */ void P0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 2048;
        zzansVar.zzr = j10;
    }

    static /* synthetic */ void Q(zzans zzansVar, long j10) {
        zzansVar.zze |= 16;
        zzansVar.zzQ = j10;
    }

    static /* synthetic */ void Q0(zzans zzansVar, long j10) {
        zzansVar.zzd |= Utility.DEFAULT_STREAM_BUFFER_SIZE;
        zzansVar.zzt = j10;
    }

    static /* synthetic */ void R(zzans zzansVar, long j10) {
        zzansVar.zze |= 32;
        zzansVar.zzR = j10;
    }

    static /* synthetic */ void R0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 16384;
        zzansVar.zzu = j10;
    }

    static /* synthetic */ void S(zzans zzansVar, long j10) {
        zzansVar.zze |= 64;
        zzansVar.zzS = j10;
    }

    static /* synthetic */ void S0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 32768;
        zzansVar.zzv = j10;
    }

    static /* synthetic */ void T(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zze |= 128;
        zzansVar.zzT = str;
    }

    static /* synthetic */ void T0(zzans zzansVar, long j10) {
        zzansVar.zzd |= NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
        zzansVar.zzw = j10;
    }

    static /* synthetic */ void U0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 524288;
        zzansVar.zzz = j10;
    }

    static /* synthetic */ void V(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zze |= 256;
        zzansVar.zzU = str;
    }

    static /* synthetic */ void V0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 1048576;
        zzansVar.zzA = j10;
    }

    static /* synthetic */ void W(zzans zzansVar, long j10) {
        zzansVar.zze |= 4096;
        zzansVar.zzY = j10;
    }

    static /* synthetic */ void W0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 2097152;
        zzansVar.zzB = j10;
    }

    static /* synthetic */ void X(zzans zzansVar, long j10) {
        zzansVar.zze |= Utility.DEFAULT_STREAM_BUFFER_SIZE;
        zzansVar.zzZ = j10;
    }

    static /* synthetic */ void X0(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zzd |= 4194304;
        zzansVar.zzC = str;
    }

    static /* synthetic */ void Y(zzans zzansVar, long j10) {
        zzansVar.zze |= 16384;
        zzansVar.zzaa = j10;
    }

    static /* synthetic */ void Y0(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zzd |= 16777216;
        zzansVar.zzE = str;
    }

    static /* synthetic */ void Z(zzans zzansVar, zzanp zzanpVar) {
        zzanpVar.getClass();
        zzansVar.zzae = zzanpVar;
        zzansVar.zze |= 262144;
    }

    static /* synthetic */ void Z0(zzans zzansVar, long j10) {
        zzansVar.zzd |= 33554432;
        zzansVar.zzF = j10;
    }

    static /* synthetic */ void a0(zzans zzansVar, zzanp zzanpVar) {
        zzanpVar.getClass();
        zzgqv zzgqvVar = zzansVar.zzaf;
        if (!zzgqvVar.a()) {
            zzansVar.zzaf = zzgqm.v(zzgqvVar);
        }
        zzansVar.zzaf.add(zzanpVar);
    }

    static /* synthetic */ void a1(zzans zzansVar, long j10) {
        zzansVar.zzd |= 67108864;
        zzansVar.zzG = j10;
    }

    static /* synthetic */ void c0(zzans zzansVar, zzanr zzanrVar) {
        zzanrVar.getClass();
        zzansVar.zzag = zzanrVar;
        zzansVar.zze |= 524288;
    }

    static /* synthetic */ void d0(zzans zzansVar, long j10) {
        zzansVar.zze |= 2097152;
        zzansVar.zzai = j10;
    }

    static /* synthetic */ void e0(zzans zzansVar, long j10) {
        zzansVar.zze |= 4194304;
        zzansVar.zzaj = j10;
    }

    static /* synthetic */ void f0(zzans zzansVar, long j10) {
        zzansVar.zze |= 8388608;
        zzansVar.zzak = j10;
    }

    static /* synthetic */ void g0(zzans zzansVar, long j10) {
        zzansVar.zze |= 67108864;
        zzansVar.zzan = j10;
    }

    static /* synthetic */ void h0(zzans zzansVar, long j10) {
        zzansVar.zze |= 134217728;
        zzansVar.zzao = j10;
    }

    static /* synthetic */ void i0(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zze |= 268435456;
        zzansVar.zzap = str;
    }

    public static zzamv j0() {
        return (zzamv) zzb.h();
    }

    static /* synthetic */ void k0(zzans zzansVar, long j10) {
        zzansVar.zzf |= 512;
        zzansVar.zzaE = j10;
    }

    static /* synthetic */ void l0(zzans zzansVar, long j10) {
        zzansVar.zzf |= 1024;
        zzansVar.zzaF = j10;
    }

    static /* synthetic */ void m0(zzans zzansVar, long j10) {
        zzansVar.zzf |= 2048;
        zzansVar.zzaG = j10;
    }

    static /* synthetic */ void n0(zzans zzansVar, long j10) {
        zzansVar.zzf |= 4096;
        zzansVar.zzaH = j10;
    }

    static /* synthetic */ void o0(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zzf |= 32768;
        zzansVar.zzaK = str;
    }

    static /* synthetic */ void p0(zzans zzansVar, String str) {
        str.getClass();
        zzansVar.zzf |= 4194304;
        zzansVar.zzaR = str;
    }

    static /* synthetic */ void q0(zzans zzansVar, boolean z10) {
        zzansVar.zzf |= 16777216;
        zzansVar.zzaT = z10;
    }

    static /* synthetic */ void r0(zzans zzansVar, long j10) {
        zzansVar.zzf |= 67108864;
        zzansVar.zzaV = j10;
    }

    static /* synthetic */ void w0(zzans zzansVar, int i10) {
        zzansVar.zzW = i10 - 1;
        zzansVar.zze |= 1024;
    }

    static /* synthetic */ void x0(zzans zzansVar, int i10) {
        zzansVar.zzX = i10 - 1;
        zzansVar.zze |= 2048;
    }

    static /* synthetic */ void y0(zzans zzansVar, int i10) {
        zzansVar.zzad = i10 - 1;
        zzansVar.zze |= 131072;
    }

    static /* synthetic */ void z0(zzans zzansVar, int i10) {
        zzansVar.zzaw = i10 - 1;
        zzansVar.zzf |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            zzgqq zzgqqVar = zzany.f9539a;
            return zzgqm.x(zzb, "\u0001a\u0000\u0003\u0001Įa\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂU\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈV\u0019ဂZ\u001aဌW\u001bဈ\u0016\u001cဇX\u001dဈ\u0018\u001eဈY\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0ဌ*1ဌ+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08ဌ19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=Aဌ>Bဌ?Cဈ<Dဌ@EဉAFဂBGဂ8Hဂ9IဌCJဂ)Kဈ\u0017LဌDMဈEN\u001bOဌFP\u001bQဉGRဈHSဂITဂJUဂKVဂLWဂMXဂNYဈOZဉP[ဉQ\\ဂR]ဂS^ဌTÉဉ[ĭဂ\\Įဈ]", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaQ", "zzA", "zzB", "zzaR", "zzaV", "zzaS", zzana.f9533a, "zzC", "zzaT", "zzE", "zzaU", "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzaf", zzanp.class, "zzR", "zzS", "zzT", "zzU", "zzW", zzgqqVar, "zzX", zzgqqVar, "zzae", "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", zzgqqVar, "zzag", "zzah", "zzai", "zzaj", "zzak", "zzan", "zzao", "zzaq", "zzar", zzanx.f9538a, "zzas", zzanz.f9540a, "zzap", "zzat", zzamw.f9520a, "zzau", "zzav", "zzal", "zzam", "zzaw", zzgqqVar, "zzV", "zzD", "zzax", zzgqqVar, "zzay", "zzaz", zzanl.class, "zzaA", zzgqqVar, "zzaB", zzamy.class, "zzaC", "zzaD", "zzaE", "zzaF", "zzaG", "zzaH", "zzaI", "zzaJ", "zzaK", "zzaL", "zzaM", "zzaN", "zzaO", "zzaP", zzani.f9536a, "zzaW", "zzaX", "zzaY"});
        }
        if (i11 == 3) {
            return new zzans();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzamv(zzamuVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzaob G0() {
        zzaob zzaobVar = this.zzaW;
        return zzaobVar == null ? zzaob.K() : zzaobVar;
    }

    public final String H0() {
        return this.zzaR;
    }

    public final String I0() {
        return this.zzC;
    }

    public final boolean s0() {
        return this.zzaT;
    }

    public final boolean t0() {
        return (this.zzd & 4194304) != 0;
    }

    public final boolean u0() {
        return (this.zzf & 134217728) != 0;
    }

    public final int v0() {
        int iA = zzanb.a(this.zzaS);
        if (iA == 0) {
            return 3;
        }
        return iA;
    }
}
