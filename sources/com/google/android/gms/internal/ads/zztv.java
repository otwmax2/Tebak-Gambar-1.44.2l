package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import com.facebook.appevents.AppEventsConstants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zztv implements zzsq, zzzx, zzwy, zzxd, zzuh {
    private static final Map Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final zzaf f20728a0;
    private zzsp B;
    private zzacy C;
    private boolean F;
    private boolean G;
    private boolean H;
    private zztu I;
    private zzaax J;
    private boolean L;
    private boolean N;
    private boolean O;
    private int P;
    private boolean Q;
    private long R;
    private boolean T;
    private int U;
    private boolean V;
    private boolean W;
    private final zzwx X;
    private final zzwt Y;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Uri f20729o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzfg f20730p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzpz f20731q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zztb f20732r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzpt f20733s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zztr f20734t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final long f20735u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zztl f20737w;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzxg f20736v = new zzxg("ProgressiveMediaPeriod");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final zzdo f20738x = new zzdo(zzdm.f15127a);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Runnable f20739y = new Runnable() { // from class: com.google.android.gms.internal.ads.zztm
        @Override // java.lang.Runnable
        public final void run() {
            this.f20701o.G();
        }
    };

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Runnable f20740z = new Runnable() { // from class: com.google.android.gms.internal.ads.zztn
        @Override // java.lang.Runnable
        public final void run() {
            this.f20702o.u();
        }
    };
    private final Handler A = zzew.d(null);
    private zztt[] E = new zztt[0];
    private zzui[] D = new zzui[0];
    private long S = -9223372036854775807L;
    private long K = -9223372036854775807L;
    private int M = 1;

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        Z = Collections.unmodifiableMap(map);
        zzad zzadVar = new zzad();
        zzadVar.h("icy");
        zzadVar.s("application/x-icy");
        f20728a0 = zzadVar.y();
    }

    public zztv(Uri uri, zzfg zzfgVar, zztl zztlVar, zzpz zzpzVar, zzpt zzptVar, zzwx zzwxVar, zztb zztbVar, zztr zztrVar, zzwt zzwtVar, String str, int i10, byte[] bArr) {
        this.f20729o = uri;
        this.f20730p = zzfgVar;
        this.f20731q = zzpzVar;
        this.f20733s = zzptVar;
        this.X = zzwxVar;
        this.f20732r = zztbVar;
        this.f20734t = zztrVar;
        this.Y = zzwtVar;
        this.f20735u = i10;
        this.f20737w = zztlVar;
    }

    private final int B() {
        int iU = 0;
        for (zzui zzuiVar : this.D) {
            iU += zzuiVar.u();
        }
        return iU;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long C(boolean r6) {
        /*
            r5 = this;
            r0 = 0
            r1 = -9223372036854775808
        L3:
            com.google.android.gms.internal.ads.zzui[] r3 = r5.D
            int r4 = r3.length
            if (r0 >= r4) goto L22
            if (r6 != 0) goto L15
            com.google.android.gms.internal.ads.zztu r4 = r5.I
            java.util.Objects.requireNonNull(r4)
            boolean[] r4 = r4.f20726c
            boolean r4 = r4[r0]
            if (r4 == 0) goto L1f
        L15:
            r3 = r3[r0]
            long r3 = r3.w()
            long r1 = java.lang.Math.max(r1, r3)
        L1f:
            int r0 = r0 + 1
            goto L3
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztv.C(boolean):long");
    }

    private final zzabb E(zztt zzttVar) {
        int length = this.D.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (zzttVar.equals(this.E[i10])) {
                return this.D[i10];
            }
        }
        zzui zzuiVar = new zzui(this.Y, this.f20731q, this.f20733s, null);
        zzuiVar.G(this);
        int i11 = length + 1;
        zztt[] zzttVarArr = (zztt[]) Arrays.copyOf(this.E, i11);
        zzttVarArr[length] = zzttVar;
        this.E = (zztt[]) zzew.E(zzttVarArr);
        zzui[] zzuiVarArr = (zzui[]) Arrays.copyOf(this.D, i11);
        zzuiVarArr[length] = zzuiVar;
        this.D = (zzui[]) zzew.E(zzuiVarArr);
        return zzuiVar;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private final void F() {
        zzdl.f(this.G);
        Objects.requireNonNull(this.I);
        Objects.requireNonNull(this.J);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        int i10;
        if (this.W || this.G || !this.F || this.J == null) {
            return;
        }
        for (zzui zzuiVar : this.D) {
            if (zzuiVar.x() == null) {
                return;
            }
        }
        this.f20738x.c();
        int length = this.D.length;
        zzcp[] zzcpVarArr = new zzcp[length];
        boolean[] zArr = new boolean[length];
        for (int i11 = 0; i11 < length; i11++) {
            zzaf zzafVarX = this.D[i11].x();
            Objects.requireNonNull(zzafVarX);
            String str = zzafVarX.f8731l;
            boolean zG = zzbt.g(str);
            boolean z10 = zG || zzbt.h(str);
            zArr[i11] = z10;
            this.H = z10 | this.H;
            zzacy zzacyVar = this.C;
            if (zzacyVar != null) {
                if (zG || this.E[i11].f20723b) {
                    zzbq zzbqVar = zzafVarX.f8729j;
                    zzbq zzbqVar2 = zzbqVar == null ? new zzbq(-9223372036854775807L, zzacyVar) : zzbqVar.v(zzacyVar);
                    zzad zzadVarB = zzafVarX.b();
                    zzadVarB.m(zzbqVar2);
                    zzafVarX = zzadVarB.y();
                }
                if (zG && zzafVarX.f8725f == -1 && zzafVarX.f8726g == -1 && (i10 = zzacyVar.f8540o) != -1) {
                    zzad zzadVarB2 = zzafVarX.b();
                    zzadVarB2.d0(i10);
                    zzafVarX = zzadVarB2.y();
                }
            }
            zzcpVarArr[i11] = new zzcp(Integer.toString(i11), zzafVarX.c(this.f20731q.N0(zzafVarX)));
        }
        this.I = new zztu(new zzur(zzcpVarArr), zArr);
        this.G = true;
        zzsp zzspVar = this.B;
        Objects.requireNonNull(zzspVar);
        zzspVar.e(this);
    }

    private final void H(int i10) {
        F();
        zztu zztuVar = this.I;
        boolean[] zArr = zztuVar.f20727d;
        if (zArr[i10]) {
            return;
        }
        zzaf zzafVarB = zztuVar.f20724a.b(i10).b(0);
        this.f20732r.d(zzbt.b(zzafVarB.f8731l), zzafVarB, 0, null, this.R);
        zArr[i10] = true;
    }

    private final void I(int i10) {
        F();
        boolean[] zArr = this.I.f20725b;
        if (this.T && zArr[i10] && !this.D[i10].J(false)) {
            this.S = 0L;
            this.T = false;
            this.O = true;
            this.R = 0L;
            this.U = 0;
            for (zzui zzuiVar : this.D) {
                zzuiVar.E(false);
            }
            zzsp zzspVar = this.B;
            Objects.requireNonNull(zzspVar);
            zzspVar.g(this);
        }
    }

    private final void J() {
        zztq zztqVar = new zztq(this, this.f20729o, this.f20730p, this.f20737w, this, this.f20738x);
        if (this.G) {
            zzdl.f(K());
            long j10 = this.K;
            if (j10 != -9223372036854775807L && this.S > j10) {
                this.V = true;
                this.S = -9223372036854775807L;
                return;
            }
            zzaax zzaaxVar = this.J;
            Objects.requireNonNull(zzaaxVar);
            zztq.h(zztqVar, zzaaxVar.c(this.S).f8349a.f8355b, this.S);
            for (zzui zzuiVar : this.D) {
                zzuiVar.F(this.S);
            }
            this.S = -9223372036854775807L;
        }
        this.U = B();
        long jA = this.f20736v.a(zztqVar, this, zzwx.a(this.M));
        zzfl zzflVar = zztqVar.f20716k;
        this.f20732r.l(new zzsj(zztqVar.f20706a, zzflVar, zzflVar.f18368a, Collections.emptyMap(), jA, 0L, 0L), 1, -1, null, 0, null, zztqVar.f20715j, this.K);
    }

    private final boolean K() {
        return this.S != -9223372036854775807L;
    }

    private final boolean L() {
        return this.O || K();
    }

    static /* bridge */ /* synthetic */ long P(zztv zztvVar, boolean z10) {
        return zztvVar.C(true);
    }

    static /* bridge */ /* synthetic */ void t(final zztv zztvVar) {
        zztvVar.A.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzto
            @Override // java.lang.Runnable
            public final void run() {
                this.f20703o.v();
            }
        });
    }

    final boolean A(int i10) {
        return !L() && this.D[i10].J(this.V);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long D(long j10) {
        F();
        boolean[] zArr = this.I.f20725b;
        if (true != this.J.f()) {
            j10 = 0;
        }
        this.O = false;
        this.R = j10;
        if (K()) {
            this.S = j10;
            return j10;
        }
        if (this.M != 7) {
            int length = this.D.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (this.D[i10].K(j10, false) || (!zArr[i10] && this.H)) {
                }
            }
            return j10;
        }
        this.T = false;
        this.S = j10;
        this.V = false;
        zzxg zzxgVar = this.f20736v;
        if (zzxgVar.l()) {
            for (zzui zzuiVar : this.D) {
                zzuiVar.z();
            }
            this.f20736v.g();
        } else {
            zzxgVar.h();
            for (zzui zzuiVar2 : this.D) {
                zzuiVar2.E(false);
            }
        }
        return j10;
    }

    final int M(int i10, zzjo zzjoVar, zzgr zzgrVar, int i11) {
        if (L()) {
            return -3;
        }
        H(i10);
        int iV = this.D[i10].v(zzjoVar, zzgrVar, i11, this.V);
        if (iV == -3) {
            I(i10);
        }
        return iV;
    }

    final int N(int i10, long j10) {
        if (L()) {
            return 0;
        }
        H(i10);
        zzui zzuiVar = this.D[i10];
        int iT = zzuiVar.t(j10, this.V);
        zzuiVar.H(iT);
        if (iT != 0) {
            return iT;
        }
        I(i10);
        return 0;
    }

    final zzabb S() {
        return E(new zztt(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long a() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final void b(long j10) {
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean c(long j10) {
        if (this.V || this.f20736v.k() || this.T) {
            return false;
        }
        if (this.G && this.P == 0) {
            return false;
        }
        boolean zE = this.f20738x.e();
        if (this.f20736v.l()) {
            return zE;
        }
        J();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long d() {
        if (!this.O) {
            return -9223372036854775807L;
        }
        if (!this.V && B() <= this.U) {
            return -9223372036854775807L;
        }
        this.O = false;
        return this.R;
    }

    @Override // com.google.android.gms.internal.ads.zzzx
    public final void e(final zzaax zzaaxVar) {
        this.A.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zztp
            @Override // java.lang.Runnable
            public final void run() {
                this.f20704o.w(zzaaxVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final zzur f() {
        F();
        return this.I.f20724a;
    }

    @Override // com.google.android.gms.internal.ads.zzzx
    public final void f0() {
        this.F = true;
        this.A.post(this.f20739y);
    }

    @Override // com.google.android.gms.internal.ads.zzwy
    public final /* bridge */ /* synthetic */ zzxa g(zzxc zzxcVar, long j10, long j11, IOException iOException, int i10) {
        long jMin;
        zzxa zzxaVarB;
        zzaax zzaaxVar;
        zztq zztqVar = (zztq) zzxcVar;
        zzgh zzghVar = zztqVar.f20708c;
        zzsj zzsjVar = new zzsj(zztqVar.f20706a, zztqVar.f20716k, zzghVar.o(), zzghVar.p(), j10, j11, zzghVar.n());
        long unused = zztqVar.f20715j;
        int i11 = zzew.f17494a;
        if ((iOException instanceof zzbu) || (iOException instanceof FileNotFoundException) || (iOException instanceof zzfy) || (iOException instanceof zzxf)) {
            jMin = -9223372036854775807L;
            break;
        }
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof zzfh) && ((zzfh) cause).f18198o == 2008) {
                jMin = -9223372036854775807L;
                break;
            }
        }
        jMin = Math.min((i10 - 1) * 1000, 5000);
        if (jMin == -9223372036854775807L) {
            zzxaVarB = zzxg.f21001g;
        } else {
            int iB = B();
            boolean z10 = iB > this.U;
            if (this.Q || !((zzaaxVar = this.J) == null || zzaaxVar.b() == -9223372036854775807L)) {
                this.U = iB;
            } else {
                boolean z11 = this.G;
                if (!z11 || L()) {
                    this.O = z11;
                    this.R = 0L;
                    this.U = 0;
                    for (zzui zzuiVar : this.D) {
                        zzuiVar.E(false);
                    }
                    zztq.h(zztqVar, 0L, 0L);
                } else {
                    this.T = true;
                    zzxaVarB = zzxg.f21000f;
                }
            }
            zzxaVarB = zzxg.b(z10, jMin);
        }
        zzxa zzxaVar = zzxaVarB;
        boolean z12 = !zzxaVar.c();
        this.f20732r.j(zzsjVar, 1, -1, null, 0, null, zztqVar.f20715j, this.K, iOException, z12);
        if (z12) {
            long unused2 = zztqVar.f20706a;
        }
        return zzxaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void h(long j10, boolean z10) {
        F();
        if (K()) {
            return;
        }
        boolean[] zArr = this.I.f20726c;
        int length = this.D.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.D[i10].y(j10, false, zArr[i10]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void i() throws IOException {
        x();
        if (this.V && !this.G) {
            throw zzbu.a("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long j(zzwe[] zzweVarArr, boolean[] zArr, zzuj[] zzujVarArr, boolean[] zArr2, long j10) {
        boolean z10;
        zzwe zzweVar;
        F();
        zztu zztuVar = this.I;
        zzur zzurVar = zztuVar.f20724a;
        boolean[] zArr3 = zztuVar.f20726c;
        int i10 = this.P;
        int i11 = 0;
        for (int i12 = 0; i12 < zzweVarArr.length; i12++) {
            zzuj zzujVar = zzujVarArr[i12];
            if (zzujVar != null && (zzweVarArr[i12] == null || !zArr[i12])) {
                int i13 = ((zzts) zzujVar).f20720a;
                zzdl.f(zArr3[i13]);
                this.P--;
                zArr3[i13] = false;
                zzujVarArr[i12] = null;
            }
        }
        if (this.N) {
            z10 = i10 == 0;
        } else if (j10 == 0) {
            j10 = 0;
        }
        for (int i14 = 0; i14 < zzweVarArr.length; i14++) {
            if (zzujVarArr[i14] == null && (zzweVar = zzweVarArr[i14]) != null) {
                zzdl.f(zzweVar.a() == 1);
                zzdl.f(zzweVar.h(0) == 0);
                int iA = zzurVar.a(zzweVar.b());
                zzdl.f(!zArr3[iA]);
                this.P++;
                zArr3[iA] = true;
                zzujVarArr[i14] = new zzts(this, iA);
                zArr2[i14] = true;
                if (!z10) {
                    zzui zzuiVar = this.D[iA];
                    z10 = (zzuiVar.K(j10, true) || zzuiVar.s() == 0) ? false : true;
                }
            }
        }
        if (this.P == 0) {
            this.T = false;
            this.O = false;
            if (this.f20736v.l()) {
                zzui[] zzuiVarArr = this.D;
                int length = zzuiVarArr.length;
                while (i11 < length) {
                    zzuiVarArr[i11].z();
                    i11++;
                }
                this.f20736v.g();
            } else {
                for (zzui zzuiVar2 : this.D) {
                    zzuiVar2.E(false);
                }
            }
        } else if (z10) {
            j10 = D(j10);
            while (i11 < zzujVarArr.length) {
                if (zzujVarArr[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.N = true;
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzwy
    public final /* bridge */ /* synthetic */ void k(zzxc zzxcVar, long j10, long j11) {
        zzaax zzaaxVar;
        if (this.K == -9223372036854775807L && (zzaaxVar = this.J) != null) {
            boolean zF = zzaaxVar.f();
            long jC = C(true);
            long j12 = jC == Long.MIN_VALUE ? 0L : jC + 10000;
            this.K = j12;
            this.f20734t.b(j12, zF, this.L);
        }
        zztq zztqVar = (zztq) zzxcVar;
        zzgh zzghVar = zztqVar.f20708c;
        zzsj zzsjVar = new zzsj(zztqVar.f20706a, zztqVar.f20716k, zzghVar.o(), zzghVar.p(), j10, j11, zzghVar.n());
        long unused = zztqVar.f20706a;
        this.f20732r.h(zzsjVar, 1, -1, null, 0, null, zztqVar.f20715j, this.K);
        this.V = true;
        zzsp zzspVar = this.B;
        Objects.requireNonNull(zzspVar);
        zzspVar.g(this);
    }

    @Override // com.google.android.gms.internal.ads.zzwy
    public final /* bridge */ /* synthetic */ void l(zzxc zzxcVar, long j10, long j11, boolean z10) {
        zztq zztqVar = (zztq) zzxcVar;
        zzgh zzghVar = zztqVar.f20708c;
        zzsj zzsjVar = new zzsj(zztqVar.f20706a, zztqVar.f20716k, zzghVar.o(), zzghVar.p(), j10, j11, zzghVar.n());
        long unused = zztqVar.f20706a;
        this.f20732r.f(zzsjVar, 1, -1, null, 0, null, zztqVar.f20715j, this.K);
        if (z10) {
            return;
        }
        for (zzui zzuiVar : this.D) {
            zzuiVar.E(false);
        }
        if (this.P > 0) {
            zzsp zzspVar = this.B;
            Objects.requireNonNull(zzspVar);
            zzspVar.g(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void m(zzsp zzspVar, long j10) {
        this.B = zzspVar;
        this.f20738x.e();
        J();
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean n() {
        return this.f20736v.l() && this.f20738x.d();
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long o(long j10, zzkq zzkqVar) {
        long j11;
        F();
        if (!this.J.f()) {
            return 0L;
        }
        zzaav zzaavVarC = this.J.c(j10);
        long j12 = zzaavVarC.f8349a.f8354a;
        long j13 = zzaavVarC.f8350b.f8354a;
        long j14 = zzkqVar.f20083a;
        if (j14 != 0) {
            j11 = j14;
        } else {
            if (zzkqVar.f20084b == 0) {
                return j10;
            }
            j11 = 0;
        }
        long jI0 = zzew.i0(j10, j11, Long.MIN_VALUE);
        long jB0 = zzew.b0(j10, zzkqVar.f20084b, Long.MAX_VALUE);
        boolean z10 = jI0 <= j12 && j12 <= jB0;
        boolean z11 = jI0 <= j13 && j13 <= jB0;
        if (z10 && z11) {
            if (Math.abs(j12 - j10) > Math.abs(j13 - j10)) {
                return j13;
            }
        } else if (!z10) {
            return z11 ? j13 : jI0;
        }
        return j12;
    }

    @Override // com.google.android.gms.internal.ads.zzuh
    public final void p(zzaf zzafVar) {
        this.A.post(this.f20739y);
    }

    @Override // com.google.android.gms.internal.ads.zzzx
    public final zzabb q(int i10, int i11) {
        return E(new zztt(i10, false));
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void s() {
        for (zzui zzuiVar : this.D) {
            zzuiVar.D();
        }
        this.f20737w.b();
    }

    final /* synthetic */ void u() {
        if (this.W) {
            return;
        }
        zzsp zzspVar = this.B;
        Objects.requireNonNull(zzspVar);
        zzspVar.g(this);
    }

    final /* synthetic */ void v() {
        this.Q = true;
    }

    final /* synthetic */ void w(zzaax zzaaxVar) {
        this.J = this.C == null ? zzaaxVar : new zzaaw(-9223372036854775807L, 0L);
        this.K = zzaaxVar.b();
        boolean z10 = false;
        if (!this.Q && zzaaxVar.b() == -9223372036854775807L) {
            z10 = true;
        }
        this.L = z10;
        this.M = true == z10 ? 7 : 1;
        this.f20734t.b(this.K, zzaaxVar.f(), this.L);
        if (this.G) {
            return;
        }
        G();
    }

    final void x() throws IOException {
        this.f20736v.i(zzwx.a(this.M));
    }

    final void y(int i10) throws IOException {
        this.D[i10].B();
        x();
    }

    public final void z() {
        if (this.G) {
            for (zzui zzuiVar : this.D) {
                zzuiVar.C();
            }
        }
        this.f20736v.j(this);
        this.A.removeCallbacksAndMessages(null);
        this.B = null;
        this.W = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long zzb() {
        long jC;
        F();
        if (this.V || this.P == 0) {
            return Long.MIN_VALUE;
        }
        if (K()) {
            return this.S;
        }
        if (this.H) {
            int length = this.D.length;
            jC = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                zztu zztuVar = this.I;
                if (zztuVar.f20725b[i10] && zztuVar.f20726c[i10] && !this.D[i10].I()) {
                    jC = Math.min(jC, this.D[i10].w());
                }
            }
        } else {
            jC = Long.MAX_VALUE;
        }
        if (jC == Long.MAX_VALUE) {
            jC = C(false);
        }
        return jC == Long.MIN_VALUE ? this.R : jC;
    }
}
