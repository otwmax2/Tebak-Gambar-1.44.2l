package com.google.android.gms.internal.measurement;

import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgc extends zzkc implements zzlk {
    public static final /* synthetic */ int zza = 0;
    private static final zzgc zze;
    private boolean zzA;
    private long zzC;
    private int zzD;
    private boolean zzG;
    private int zzJ;
    private int zzK;
    private int zzL;
    private long zzN;
    private long zzO;
    private int zzR;
    private zzgf zzT;
    private long zzV;
    private long zzW;
    private int zzZ;
    private boolean zzaa;
    private boolean zzac;
    private zzfy zzad;
    private int zzf;
    private int zzg;
    private int zzh;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzt;
    private long zzx;
    private long zzy;
    private zzkj zzi = zzkc.o();
    private zzkj zzj = zzkc.o();
    private String zzp = BuildConfig.FLAVOR;
    private String zzq = BuildConfig.FLAVOR;
    private String zzr = BuildConfig.FLAVOR;
    private String zzs = BuildConfig.FLAVOR;
    private String zzu = BuildConfig.FLAVOR;
    private String zzv = BuildConfig.FLAVOR;
    private String zzw = BuildConfig.FLAVOR;
    private String zzz = BuildConfig.FLAVOR;
    private String zzB = BuildConfig.FLAVOR;
    private String zzE = BuildConfig.FLAVOR;
    private String zzF = BuildConfig.FLAVOR;
    private zzkj zzH = zzkc.o();
    private String zzI = BuildConfig.FLAVOR;
    private String zzM = BuildConfig.FLAVOR;
    private String zzP = BuildConfig.FLAVOR;
    private String zzQ = BuildConfig.FLAVOR;
    private String zzS = BuildConfig.FLAVOR;
    private zzkh zzU = zzkc.l();
    private String zzX = BuildConfig.FLAVOR;
    private String zzY = BuildConfig.FLAVOR;
    private String zzab = BuildConfig.FLAVOR;
    private String zzae = BuildConfig.FLAVOR;
    private zzkj zzaf = zzkc.o();
    private String zzag = BuildConfig.FLAVOR;

    static {
        zzgc zzgcVar = new zzgc();
        zze = zzgcVar;
        zzkc.s(zzgc.class, zzgcVar);
    }

    private zzgc() {
    }

    static /* synthetic */ void A0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzg |= Utility.DEFAULT_STREAM_BUFFER_SIZE;
        zzgcVar.zzae = str;
    }

    static /* synthetic */ void B0(zzgc zzgcVar) {
        zzgcVar.zzg &= -8193;
        zzgcVar.zzae = zze.zzae;
    }

    static /* synthetic */ void C0(zzgc zzgcVar, Iterable iterable) {
        zzkj zzkjVar = zzgcVar.zzaf;
        if (!zzkjVar.a()) {
            zzgcVar.zzaf = zzkc.p(zzkjVar);
        }
        zzil.e(iterable, zzgcVar.zzaf);
    }

    static /* synthetic */ void E0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzg |= 16384;
        zzgcVar.zzag = str;
    }

    static /* synthetic */ void F0(zzgc zzgcVar, int i10) {
        zzgcVar.Z0();
        zzgcVar.zzi.remove(i10);
    }

    static /* synthetic */ void G0(zzgc zzgcVar, int i10, zzgl zzglVar) {
        zzglVar.getClass();
        zzgcVar.a1();
        zzgcVar.zzj.set(i10, zzglVar);
    }

    static /* synthetic */ void H0(zzgc zzgcVar, zzgl zzglVar) {
        zzglVar.getClass();
        zzgcVar.a1();
        zzgcVar.zzj.add(zzglVar);
    }

    static /* synthetic */ void I0(zzgc zzgcVar, Iterable iterable) {
        zzgcVar.a1();
        zzil.e(iterable, zzgcVar.zzj);
    }

    static /* synthetic */ void J0(zzgc zzgcVar, int i10) {
        zzgcVar.a1();
        zzgcVar.zzj.remove(i10);
    }

    static /* synthetic */ void K(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 1073741824;
        zzgcVar.zzO = j10;
    }

    static /* synthetic */ void K0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 2;
        zzgcVar.zzk = j10;
    }

    static /* synthetic */ void L(zzgc zzgcVar) {
        zzgcVar.zzf &= Integer.MAX_VALUE;
        zzgcVar.zzP = zze.zzP;
    }

    static /* synthetic */ void L0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 4;
        zzgcVar.zzl = j10;
    }

    static /* synthetic */ void M0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 8;
        zzgcVar.zzm = j10;
    }

    static /* synthetic */ void N(zzgc zzgcVar, int i10) {
        zzgcVar.zzg |= 2;
        zzgcVar.zzR = i10;
    }

    static /* synthetic */ void N0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 16;
        zzgcVar.zzn = j10;
    }

    public static zzgb N1() {
        return (zzgb) zze.i();
    }

    static /* synthetic */ void O(zzgc zzgcVar, int i10, zzfs zzfsVar) {
        zzfsVar.getClass();
        zzgcVar.Z0();
        zzgcVar.zzi.set(i10, zzfsVar);
    }

    static /* synthetic */ void O0(zzgc zzgcVar) {
        zzgcVar.zzf &= -17;
        zzgcVar.zzn = 0L;
    }

    static /* synthetic */ void P(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzg |= 4;
        zzgcVar.zzS = str;
    }

    static /* synthetic */ void P0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 32;
        zzgcVar.zzo = j10;
    }

    static /* synthetic */ void Q(zzgc zzgcVar, zzgf zzgfVar) {
        zzgfVar.getClass();
        zzgcVar.zzT = zzgfVar;
        zzgcVar.zzg |= 8;
    }

    static /* synthetic */ void Q0(zzgc zzgcVar) {
        zzgcVar.zzf &= -33;
        zzgcVar.zzo = 0L;
    }

    static /* synthetic */ void R(zzgc zzgcVar, Iterable iterable) {
        zzkh zzkhVar = zzgcVar.zzU;
        if (!zzkhVar.a()) {
            int size = zzkhVar.size();
            zzgcVar.zzU = zzkhVar.K(size == 0 ? 10 : size + size);
        }
        zzil.e(iterable, zzgcVar.zzU);
    }

    static /* synthetic */ void R0(zzgc zzgcVar, String str) {
        zzgcVar.zzf |= 64;
        zzgcVar.zzp = "android";
    }

    static /* synthetic */ void S(zzgc zzgcVar, zzfs zzfsVar) {
        zzfsVar.getClass();
        zzgcVar.Z0();
        zzgcVar.zzi.add(zzfsVar);
    }

    static /* synthetic */ void S0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= 128;
        zzgcVar.zzq = str;
    }

    static /* synthetic */ void T0(zzgc zzgcVar) {
        zzgcVar.zzf &= -129;
        zzgcVar.zzq = zze.zzq;
    }

    static /* synthetic */ void U(zzgc zzgcVar, long j10) {
        zzgcVar.zzg |= 16;
        zzgcVar.zzV = j10;
    }

    static /* synthetic */ void U0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= 256;
        zzgcVar.zzr = str;
    }

    static /* synthetic */ void V(zzgc zzgcVar, long j10) {
        zzgcVar.zzg |= 32;
        zzgcVar.zzW = j10;
    }

    static /* synthetic */ void V0(zzgc zzgcVar) {
        zzgcVar.zzf &= -257;
        zzgcVar.zzr = zze.zzr;
    }

    static /* synthetic */ void W0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= 512;
        zzgcVar.zzs = str;
    }

    static /* synthetic */ void X(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= 2048;
        zzgcVar.zzu = str;
    }

    static /* synthetic */ void X0(zzgc zzgcVar, int i10) {
        zzgcVar.zzf |= 1024;
        zzgcVar.zzt = i10;
    }

    static /* synthetic */ void Y(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= 4096;
        zzgcVar.zzv = str;
    }

    static /* synthetic */ void Z(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= Utility.DEFAULT_STREAM_BUFFER_SIZE;
        zzgcVar.zzw = str;
    }

    private final void Z0() {
        zzkj zzkjVar = this.zzi;
        if (zzkjVar.a()) {
            return;
        }
        this.zzi = zzkc.p(zzkjVar);
    }

    static /* synthetic */ void a0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 16384;
        zzgcVar.zzx = j10;
    }

    private final void a1() {
        zzkj zzkjVar = this.zzj;
        if (zzkjVar.a()) {
            return;
        }
        this.zzj = zzkc.p(zzkjVar);
    }

    static /* synthetic */ void b0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 32768;
        zzgcVar.zzy = 61000L;
    }

    static /* synthetic */ void c0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
        zzgcVar.zzz = str;
    }

    static /* synthetic */ void d0(zzgc zzgcVar) {
        zzgcVar.zzf &= -65537;
        zzgcVar.zzz = zze.zzz;
    }

    static /* synthetic */ void e0(zzgc zzgcVar, boolean z10) {
        zzgcVar.zzf |= 131072;
        zzgcVar.zzA = z10;
    }

    static /* synthetic */ void f0(zzgc zzgcVar) {
        zzgcVar.zzf &= -131073;
        zzgcVar.zzA = false;
    }

    static /* synthetic */ void g0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= 262144;
        zzgcVar.zzB = str;
    }

    static /* synthetic */ void h0(zzgc zzgcVar) {
        zzgcVar.zzf &= -262145;
        zzgcVar.zzB = zze.zzB;
    }

    static /* synthetic */ void i0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 524288;
        zzgcVar.zzC = j10;
    }

    static /* synthetic */ void j0(zzgc zzgcVar, int i10) {
        zzgcVar.zzf |= 1048576;
        zzgcVar.zzD = i10;
    }

    static /* synthetic */ void k0(zzgc zzgcVar, String str) {
        zzgcVar.zzf |= 2097152;
        zzgcVar.zzE = str;
    }

    static /* synthetic */ void l0(zzgc zzgcVar) {
        zzgcVar.zzf &= -2097153;
        zzgcVar.zzE = zze.zzE;
    }

    static /* synthetic */ void m0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= 4194304;
        zzgcVar.zzF = str;
    }

    static /* synthetic */ void n0(zzgc zzgcVar, boolean z10) {
        zzgcVar.zzf |= 8388608;
        zzgcVar.zzG = z10;
    }

    static /* synthetic */ void o0(zzgc zzgcVar, Iterable iterable) {
        zzkj zzkjVar = zzgcVar.zzH;
        if (!zzkjVar.a()) {
            zzgcVar.zzH = zzkc.p(zzkjVar);
        }
        zzil.e(iterable, zzgcVar.zzH);
    }

    static /* synthetic */ void q0(zzgc zzgcVar, String str) {
        str.getClass();
        zzgcVar.zzf |= 16777216;
        zzgcVar.zzI = str;
    }

    static /* synthetic */ void r0(zzgc zzgcVar, int i10) {
        zzgcVar.zzf |= 33554432;
        zzgcVar.zzJ = i10;
    }

    static /* synthetic */ void s0(zzgc zzgcVar, int i10) {
        zzgcVar.zzf |= 1;
        zzgcVar.zzh = 1;
    }

    static /* synthetic */ void t0(zzgc zzgcVar) {
        zzgcVar.zzf &= -268435457;
        zzgcVar.zzM = zze.zzM;
    }

    static /* synthetic */ void u0(zzgc zzgcVar, long j10) {
        zzgcVar.zzf |= 536870912;
        zzgcVar.zzN = j10;
    }

    static /* synthetic */ void x0(zzgc zzgcVar, String str) {
        zzgcVar.zzg |= 128;
        zzgcVar.zzY = str;
    }

    static /* synthetic */ void y0(zzgc zzgcVar, Iterable iterable) {
        zzgcVar.Z0();
        zzil.e(iterable, zzgcVar.zzi);
    }

    public final String A() {
        return this.zzF;
    }

    public final int A1() {
        return this.zzj.size();
    }

    public final String B() {
        return this.zzE;
    }

    public final long B1() {
        return this.zzO;
    }

    public final String C() {
        return this.zzq;
    }

    public final long C1() {
        return this.zzN;
    }

    public final String D() {
        return this.zzp;
    }

    public final long D1() {
        return this.zzC;
    }

    public final String E() {
        return this.zzz;
    }

    public final long E1() {
        return this.zzV;
    }

    public final String F() {
        return this.zzae;
    }

    public final long F1() {
        return this.zzm;
    }

    public final String G() {
        return this.zzs;
    }

    public final long G1() {
        return this.zzx;
    }

    public final List H() {
        return this.zzH;
    }

    public final long H1() {
        return this.zzo;
    }

    public final List I() {
        return this.zzi;
    }

    public final long I1() {
        return this.zzn;
    }

    public final List J() {
        return this.zzj;
    }

    public final long J1() {
        return this.zzl;
    }

    public final long K1() {
        return this.zzk;
    }

    public final long L1() {
        return this.zzy;
    }

    public final zzfs M1(int i10) {
        return (zzfs) this.zzi.get(i10);
    }

    public final zzgl P1(int i10) {
        return (zzgl) this.zzj.get(i10);
    }

    public final String Q1() {
        return this.zzS;
    }

    public final String R1() {
        return this.zzv;
    }

    public final String S1() {
        return this.zzB;
    }

    public final int W() {
        return this.zzJ;
    }

    public final int Y0() {
        return this.zzD;
    }

    public final boolean b1() {
        return (this.zzf & 1073741824) != 0;
    }

    public final boolean c1() {
        return (this.zzf & 33554432) != 0;
    }

    public final boolean d1() {
        return (this.zzf & 1048576) != 0;
    }

    public final boolean e1() {
        return (this.zzf & 536870912) != 0;
    }

    public final boolean f1() {
        return (this.zzg & 128) != 0;
    }

    public final boolean g1() {
        return (this.zzf & 524288) != 0;
    }

    public final boolean h1() {
        return (this.zzg & 16) != 0;
    }

    public final boolean i1() {
        return (this.zzf & 8) != 0;
    }

    public final boolean j1() {
        return (this.zzf & 16384) != 0;
    }

    public final boolean k1() {
        return (this.zzf & 131072) != 0;
    }

    public final boolean l1() {
        return (this.zzf & 32) != 0;
    }

    public final boolean n1() {
        return (this.zzf & 16) != 0;
    }

    public final boolean o1() {
        return (this.zzf & 1) != 0;
    }

    public final boolean p1() {
        return (this.zzg & 2) != 0;
    }

    public final boolean q1() {
        return (this.zzf & 8388608) != 0;
    }

    public final boolean r1() {
        return (this.zzg & Utility.DEFAULT_STREAM_BUFFER_SIZE) != 0;
    }

    public final boolean s1() {
        return (this.zzf & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object t(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzkc.r(zze, "\u00014\u0000\u0002\u0001A4\u0000\u0005\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.", new Object[]{"zzf", "zzg", "zzh", "zzi", zzfs.class, "zzj", zzgl.class, "zzk", "zzl", "zzm", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzn", "zzG", "zzH", zzfo.class, "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", "zzZ", zzfk.f23496a, "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag"});
        }
        if (i11 == 3) {
            return new zzgc();
        }
        zzfj zzfjVar = null;
        if (i11 == 4) {
            return new zzgb(zzfjVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zze;
    }

    public final boolean t1() {
        return (this.zzf & 1024) != 0;
    }

    public final String u() {
        return this.zzu;
    }

    public final boolean u1() {
        return (this.zzf & 2) != 0;
    }

    public final String v() {
        return this.zzw;
    }

    public final boolean v0() {
        return this.zzA;
    }

    public final boolean v1() {
        return (this.zzf & 32768) != 0;
    }

    public final String w() {
        return this.zzY;
    }

    public final boolean w0() {
        return this.zzG;
    }

    public final int w1() {
        return this.zzi.size();
    }

    public final String x() {
        return this.zzr;
    }

    public final int x1() {
        return this.zzh;
    }

    public final String y() {
        return this.zzP;
    }

    public final int y1() {
        return this.zzR;
    }

    public final String z() {
        return this.zzI;
    }

    public final int z1() {
        return this.zzt;
    }
}
