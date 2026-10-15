package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzui implements zzabb {
    private boolean A;
    private boolean B;
    private zzqa C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzuc f20775a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzpz f20778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzpt f20779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzuh f20780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzaf f20781g;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f20789o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f20790p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f20791q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f20792r;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f20796v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private zzaf f20799y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private zzaf f20800z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzue f20776b = new zzue();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f20782h = 1000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f20783i = new int[1000];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long[] f20784j = new long[1000];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long[] f20787m = new long[1000];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int[] f20786l = new int[1000];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int[] f20785k = new int[1000];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzaba[] f20788n = new zzaba[1000];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzup f20777c = new zzup(new zzdp() { // from class: com.google.android.gms.internal.ads.zzud
    });

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f20793s = Long.MIN_VALUE;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f20794t = Long.MIN_VALUE;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f20795u = Long.MIN_VALUE;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f20798x = true;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f20797w = true;

    protected zzui(zzwt zzwtVar, zzpz zzpzVar, zzpt zzptVar, byte[] bArr) {
        this.f20778d = zzpzVar;
        this.f20779e = zzptVar;
        this.f20775a = new zzuc(zzwtVar, null);
    }

    static /* synthetic */ void A(zzug zzugVar) {
        zzpy zzpyVar = zzugVar.f20774b;
        int i10 = zzpx.f20438a;
    }

    private final int L(int i10, int i11, long j10, boolean z10) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long j11 = this.f20787m[i10];
            if (j11 > j10) {
                return i12;
            }
            if (!z10 || (this.f20786l[i10] & 1) != 0) {
                if (j11 == j10) {
                    return i13;
                }
                i12 = i13;
            }
            i10++;
            if (i10 == this.f20782h) {
                i10 = 0;
            }
        }
        return i12;
    }

    private final int g(int i10) {
        int i11 = this.f20791q + i10;
        int i12 = this.f20782h;
        return i11 < i12 ? i11 : i11 - i12;
    }

    private final synchronized int h(zzjo zzjoVar, zzgr zzgrVar, boolean z10, boolean z11, zzue zzueVar) {
        zzgrVar.f19508d = false;
        if (!p()) {
            if (!z11 && !this.f20796v) {
                zzaf zzafVar = this.f20800z;
                if (zzafVar == null || (!z10 && zzafVar == this.f20781g)) {
                    return -3;
                }
                m(zzafVar, zzjoVar);
                return -5;
            }
            zzgrVar.c(4);
            return -4;
        }
        zzaf zzafVar2 = ((zzug) this.f20777c.a(this.f20790p + this.f20792r)).f20773a;
        if (!z10 && zzafVar2 == this.f20781g) {
            int iG = g(this.f20792r);
            if (!q(iG)) {
                zzgrVar.f19508d = true;
                return -3;
            }
            zzgrVar.c(this.f20786l[iG]);
            long j10 = this.f20787m[iG];
            zzgrVar.f19509e = j10;
            if (j10 < this.f20793s) {
                zzgrVar.a(Integer.MIN_VALUE);
            }
            zzueVar.f20770a = this.f20785k[iG];
            zzueVar.f20771b = this.f20784j[iG];
            zzueVar.f20772c = this.f20788n[iG];
            return -4;
        }
        m(zzafVar2, zzjoVar);
        return -5;
    }

    private final synchronized long i(long j10, boolean z10, boolean z11) {
        int i10;
        int i11 = this.f20789o;
        if (i11 != 0) {
            long[] jArr = this.f20787m;
            int i12 = this.f20791q;
            if (j10 >= jArr[i12]) {
                if (z11 && (i10 = this.f20792r) != i11) {
                    i11 = i10 + 1;
                }
                int iL = L(i12, i11, j10, false);
                if (iL == -1) {
                    return -1L;
                }
                return k(iL);
            }
        }
        return -1L;
    }

    private final synchronized long j() {
        int i10 = this.f20789o;
        if (i10 == 0) {
            return -1L;
        }
        return k(i10);
    }

    private final long k(int i10) {
        long j10 = this.f20794t;
        long jMax = Long.MIN_VALUE;
        if (i10 != 0) {
            int iG = g(i10 - 1);
            for (int i11 = 0; i11 < i10; i11++) {
                jMax = Math.max(jMax, this.f20787m[iG]);
                if ((this.f20786l[iG] & 1) != 0) {
                    break;
                }
                iG--;
                if (iG == -1) {
                    iG = this.f20782h - 1;
                }
            }
        }
        this.f20794t = Math.max(j10, jMax);
        this.f20789o -= i10;
        int i12 = this.f20790p + i10;
        this.f20790p = i12;
        int i13 = this.f20791q + i10;
        this.f20791q = i13;
        int i14 = this.f20782h;
        if (i13 >= i14) {
            this.f20791q = i13 - i14;
        }
        int i15 = this.f20792r - i10;
        this.f20792r = i15;
        if (i15 < 0) {
            this.f20792r = 0;
        }
        this.f20777c.e(i12);
        if (this.f20789o != 0) {
            return this.f20784j[this.f20791q];
        }
        int i16 = this.f20791q;
        if (i16 == 0) {
            i16 = this.f20782h;
        }
        int i17 = i16 - 1;
        return this.f20784j[i17] + ((long) this.f20785k[i17]);
    }

    private final synchronized void l(long j10, int i10, long j11, int i11, zzaba zzabaVar) {
        int i12 = this.f20789o;
        if (i12 > 0) {
            int iG = g(i12 - 1);
            zzdl.d(this.f20784j[iG] + ((long) this.f20785k[iG]) <= j11);
        }
        this.f20796v = (536870912 & i10) != 0;
        this.f20795u = Math.max(this.f20795u, j10);
        int iG2 = g(this.f20789o);
        this.f20787m[iG2] = j10;
        this.f20784j[iG2] = j11;
        this.f20785k[iG2] = i11;
        this.f20786l[iG2] = i10;
        this.f20788n[iG2] = zzabaVar;
        this.f20783i[iG2] = 0;
        if (this.f20777c.f() || !((zzug) this.f20777c.b()).f20773a.equals(this.f20800z)) {
            zzpy zzpyVar = zzpy.f20439a;
            zzup zzupVar = this.f20777c;
            int i13 = this.f20790p + this.f20789o;
            zzaf zzafVar = this.f20800z;
            Objects.requireNonNull(zzafVar);
            zzupVar.c(i13, new zzug(zzafVar, zzpyVar, null));
        }
        int i14 = this.f20789o + 1;
        this.f20789o = i14;
        int i15 = this.f20782h;
        if (i14 == i15) {
            int i16 = i15 + 1000;
            int[] iArr = new int[i16];
            long[] jArr = new long[i16];
            long[] jArr2 = new long[i16];
            int[] iArr2 = new int[i16];
            int[] iArr3 = new int[i16];
            zzaba[] zzabaVarArr = new zzaba[i16];
            int i17 = this.f20791q;
            int i18 = i15 - i17;
            System.arraycopy(this.f20784j, i17, jArr, 0, i18);
            System.arraycopy(this.f20787m, this.f20791q, jArr2, 0, i18);
            System.arraycopy(this.f20786l, this.f20791q, iArr2, 0, i18);
            System.arraycopy(this.f20785k, this.f20791q, iArr3, 0, i18);
            System.arraycopy(this.f20788n, this.f20791q, zzabaVarArr, 0, i18);
            System.arraycopy(this.f20783i, this.f20791q, iArr, 0, i18);
            int i19 = this.f20791q;
            System.arraycopy(this.f20784j, 0, jArr, i18, i19);
            System.arraycopy(this.f20787m, 0, jArr2, i18, i19);
            System.arraycopy(this.f20786l, 0, iArr2, i18, i19);
            System.arraycopy(this.f20785k, 0, iArr3, i18, i19);
            System.arraycopy(this.f20788n, 0, zzabaVarArr, i18, i19);
            System.arraycopy(this.f20783i, 0, iArr, i18, i19);
            this.f20784j = jArr;
            this.f20787m = jArr2;
            this.f20786l = iArr2;
            this.f20785k = iArr3;
            this.f20788n = zzabaVarArr;
            this.f20783i = iArr;
            this.f20791q = 0;
            this.f20782h = i16;
        }
    }

    private final void m(zzaf zzafVar, zzjo zzjoVar) {
        zzaf zzafVar2 = this.f20781g;
        boolean z10 = zzafVar2 == null;
        zzx zzxVar = z10 ? null : zzafVar2.f8734o;
        this.f20781g = zzafVar;
        zzx zzxVar2 = zzafVar.f8734o;
        zzjoVar.f19944a = zzafVar.c(this.f20778d.N0(zzafVar));
        zzjoVar.f19945b = this.C;
        if (z10 || !zzew.u(zzxVar, zzxVar2)) {
            zzqa zzqaVar = zzafVar.f8734o != null ? new zzqa(new zzpr(new zzqc(1), 6001)) : null;
            this.C = zzqaVar;
            zzjoVar.f19945b = zzqaVar;
        }
    }

    private final void n() {
        if (this.C != null) {
            this.C = null;
            this.f20781g = null;
        }
    }

    private final synchronized void o() {
        this.f20792r = 0;
        this.f20775a.g();
    }

    private final boolean p() {
        return this.f20792r != this.f20789o;
    }

    private final boolean q(int i10) {
        if (this.C != null) {
            return (this.f20786l[i10] & 1073741824) != 0 ? false : false;
        }
        return true;
    }

    private final synchronized boolean r(zzaf zzafVar) {
        this.f20798x = false;
        if (zzew.u(zzafVar, this.f20800z)) {
            return false;
        }
        if (this.f20777c.f() || !((zzug) this.f20777c.b()).f20773a.equals(zzafVar)) {
            this.f20800z = zzafVar;
        } else {
            this.f20800z = ((zzug) this.f20777c.b()).f20773a;
        }
        zzaf zzafVar2 = this.f20800z;
        this.A = zzbt.f(zzafVar2.f8731l, zzafVar2.f8728i);
        this.B = false;
        return true;
    }

    public final void B() throws IOException {
        zzqa zzqaVar = this.C;
        if (zzqaVar != null) {
            throw zzqaVar.a();
        }
    }

    public final void C() {
        z();
        n();
    }

    public final void D() {
        E(true);
        n();
    }

    public final void E(boolean z10) {
        this.f20775a.f();
        this.f20789o = 0;
        this.f20790p = 0;
        this.f20791q = 0;
        this.f20792r = 0;
        this.f20797w = true;
        this.f20793s = Long.MIN_VALUE;
        this.f20794t = Long.MIN_VALUE;
        this.f20795u = Long.MIN_VALUE;
        this.f20796v = false;
        this.f20777c.d();
        if (z10) {
            this.f20799y = null;
            this.f20800z = null;
            this.f20798x = true;
        }
    }

    public final void F(long j10) {
        this.f20793s = j10;
    }

    public final void G(zzuh zzuhVar) {
        this.f20780f = zzuhVar;
    }

    public final synchronized void H(int i10) {
        boolean z10 = false;
        if (i10 >= 0) {
            try {
                if (this.f20792r + i10 <= this.f20789o) {
                    z10 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzdl.d(z10);
        this.f20792r += i10;
    }

    public final synchronized boolean I() {
        return this.f20796v;
    }

    public final synchronized boolean J(boolean z10) {
        boolean z11 = true;
        if (p()) {
            if (((zzug) this.f20777c.a(this.f20790p + this.f20792r)).f20773a != this.f20781g) {
                return true;
            }
            return q(g(this.f20792r));
        }
        if (!z10 && !this.f20796v) {
            zzaf zzafVar = this.f20800z;
            if (zzafVar == null) {
                z11 = false;
            } else if (zzafVar == this.f20781g) {
                return false;
            }
        }
        return z11;
    }

    public final synchronized boolean K(long j10, boolean z10) {
        o();
        int i10 = this.f20792r;
        int iG = g(i10);
        if (!p() || j10 < this.f20787m[iG] || (j10 > this.f20795u && !z10)) {
            return false;
        }
        int iL = L(iG, this.f20789o - i10, j10, true);
        if (iL == -1) {
            return false;
        }
        this.f20793s = j10;
        this.f20792r += iL;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final void a(zzen zzenVar, int i10, int i11) {
        this.f20775a.h(zzenVar, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final /* synthetic */ int b(zzr zzrVar, int i10, boolean z10) {
        return zzaaz.a(this, zzrVar, i10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final int c(zzr zzrVar, int i10, boolean z10, int i11) throws IOException {
        return this.f20775a.a(zzrVar, i10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final /* synthetic */ void d(zzen zzenVar, int i10) {
        zzaaz.b(this, zzenVar, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final void e(zzaf zzafVar) {
        this.f20799y = zzafVar;
        boolean zR = r(zzafVar);
        zzuh zzuhVar = this.f20780f;
        if (zzuhVar == null || !zR) {
            return;
        }
        zzuhVar.p(zzafVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabb
    public final void f(long j10, int i10, int i11, int i12, zzaba zzabaVar) {
        if (this.f20797w) {
            if ((i10 & 1) == 0) {
                return;
            } else {
                this.f20797w = false;
            }
        }
        if (this.A) {
            if (j10 < this.f20793s) {
                return;
            }
            if ((i10 & 1) == 0) {
                if (!this.B) {
                    zzee.e("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(this.f20800z)));
                    this.B = true;
                }
                i10 |= 1;
            }
        }
        l(j10, i10, (this.f20775a.b() - ((long) i11)) - ((long) i12), i11, zzabaVar);
    }

    public final int s() {
        return this.f20790p + this.f20792r;
    }

    public final synchronized int t(long j10, boolean z10) {
        int i10 = this.f20792r;
        int iG = g(i10);
        if (p() && j10 >= this.f20787m[iG]) {
            if (j10 > this.f20795u && z10) {
                return this.f20789o - i10;
            }
            int iL = L(iG, this.f20789o - i10, j10, true);
            if (iL == -1) {
                return 0;
            }
            return iL;
        }
        return 0;
    }

    public final int u() {
        return this.f20790p + this.f20789o;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
    
        if (r9 != 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int v(com.google.android.gms.internal.ads.zzjo r9, com.google.android.gms.internal.ads.zzgr r10, int r11, boolean r12) {
        /*
            r8 = this;
            r0 = r11 & 2
            r1 = 1
            if (r0 == 0) goto L7
            r5 = 1
            goto L9
        L7:
            r0 = 0
            r5 = 0
        L9:
            com.google.android.gms.internal.ads.zzue r7 = r8.f20776b
            r2 = r8
            r3 = r9
            r4 = r10
            r6 = r12
            int r9 = r2.h(r3, r4, r5, r6, r7)
            r12 = -4
            if (r9 != r12) goto L3e
            boolean r9 = r10.g()
            if (r9 != 0) goto L3d
            r9 = r11 & 1
            r11 = r11 & 4
            if (r11 != 0) goto L34
            if (r9 == 0) goto L2c
            com.google.android.gms.internal.ads.zzuc r9 = r8.f20775a
            com.google.android.gms.internal.ads.zzue r11 = r8.f20776b
            r9.d(r10, r11)
            goto L3d
        L2c:
            com.google.android.gms.internal.ads.zzuc r9 = r8.f20775a
            com.google.android.gms.internal.ads.zzue r11 = r8.f20776b
            r9.e(r10, r11)
            goto L37
        L34:
            if (r9 == 0) goto L37
            goto L3d
        L37:
            int r9 = r8.f20792r
            int r9 = r9 + r1
            r8.f20792r = r9
            return r12
        L3d:
            r9 = -4
        L3e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzui.v(com.google.android.gms.internal.ads.zzjo, com.google.android.gms.internal.ads.zzgr, int, boolean):int");
    }

    public final synchronized long w() {
        return this.f20795u;
    }

    public final synchronized zzaf x() {
        if (this.f20798x) {
            return null;
        }
        return this.f20800z;
    }

    public final void y(long j10, boolean z10, boolean z11) {
        this.f20775a.c(i(j10, false, z11));
    }

    public final void z() {
        this.f20775a.c(j());
    }
}
