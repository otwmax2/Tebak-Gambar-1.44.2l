package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzha implements zzkn, zzko {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f19748o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzkp f19750q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f19751r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzno f19752s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f19753t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zzuj f19754u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzaf[] f19755v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f19756w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f19758y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f19759z;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzjo f19749p = new zzjo();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f19757x = Long.MIN_VALUE;

    public zzha(int i10) {
        this.f19748o = i10;
    }

    private final void v(long j10, boolean z10) throws zzhj {
        this.f19758y = false;
        this.f19757x = j10;
        F(j10, z10);
    }

    protected final zzkp A() {
        zzkp zzkpVar = this.f19750q;
        Objects.requireNonNull(zzkpVar);
        return zzkpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void B() {
        zzdl.f(this.f19753t == 0);
        zzjo zzjoVar = this.f19749p;
        zzjoVar.f19945b = null;
        zzjoVar.f19944a = null;
        G();
    }

    protected final zzno C() {
        zzno zznoVar = this.f19752s;
        Objects.requireNonNull(zznoVar);
        return zznoVar;
    }

    protected void D() {
        throw null;
    }

    protected void E(boolean z10, boolean z11) throws zzhj {
    }

    protected void F(long j10, boolean z10) throws zzhj {
        throw null;
    }

    protected void G() {
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void H() throws zzhj {
        zzdl.f(this.f19753t == 1);
        this.f19753t = 2;
        I();
    }

    protected void I() throws zzhj {
    }

    protected void K() {
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void L() {
        zzdl.f(this.f19753t == 2);
        this.f19753t = 1;
        K();
    }

    protected void M(zzaf[] zzafVarArr, long j10, long j11) throws zzhj {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final boolean V() {
        return this.f19757x == Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public int b() throws zzhj {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final long c() {
        return this.f19757x;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void d(long j10) throws zzhj {
        v(j10, false);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final int f() {
        return this.f19753t;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void f0() {
        this.f19758y = true;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public zzjq g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final zzko h() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final boolean h0() {
        return this.f19758y;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public /* synthetic */ void i(float f10, float f11) {
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void k() {
        zzdl.f(this.f19753t == 1);
        zzjo zzjoVar = this.f19749p;
        zzjoVar.f19945b = null;
        zzjoVar.f19944a = null;
        this.f19753t = 0;
        this.f19754u = null;
        this.f19755v = null;
        this.f19758y = false;
        D();
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final zzuj l() {
        return this.f19754u;
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void m(zzaf[] zzafVarArr, zzuj zzujVar, long j10, long j11) throws zzhj {
        zzdl.f(!this.f19758y);
        this.f19754u = zzujVar;
        if (this.f19757x == Long.MIN_VALUE) {
            this.f19757x = j10;
        }
        this.f19755v = zzafVarArr;
        this.f19756w = j11;
        M(zzafVarArr, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzkj
    public void n(int i10, Object obj) throws zzhj {
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void o(zzkp zzkpVar, zzaf[] zzafVarArr, zzuj zzujVar, long j10, boolean z10, boolean z11, long j11, long j12) throws zzhj {
        zzdl.f(this.f19753t == 0);
        this.f19750q = zzkpVar;
        this.f19753t = 1;
        E(z10, z11);
        m(zzafVarArr, zzujVar, j11, j12);
        v(j10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void p() throws IOException {
        zzuj zzujVar = this.f19754u;
        Objects.requireNonNull(zzujVar);
        zzujVar.d();
    }

    @Override // com.google.android.gms.internal.ads.zzkn
    public final void r(int i10, zzno zznoVar) {
        this.f19751r = i10;
        this.f19752s = zznoVar;
    }

    protected final boolean t() {
        if (V()) {
            return this.f19758y;
        }
        zzuj zzujVar = this.f19754u;
        Objects.requireNonNull(zzujVar);
        return zzujVar.b();
    }

    protected final zzaf[] u() {
        zzaf[] zzafVarArr = this.f19755v;
        Objects.requireNonNull(zzafVarArr);
        return zzafVarArr;
    }

    protected final int w(zzjo zzjoVar, zzgr zzgrVar, int i10) {
        zzuj zzujVar = this.f19754u;
        Objects.requireNonNull(zzujVar);
        int iA = zzujVar.a(zzjoVar, zzgrVar, i10);
        if (iA == -4) {
            if (zzgrVar.g()) {
                this.f19757x = Long.MIN_VALUE;
                return this.f19758y ? -4 : -3;
            }
            long j10 = zzgrVar.f19509e + this.f19756w;
            zzgrVar.f19509e = j10;
            this.f19757x = Math.max(this.f19757x, j10);
        } else if (iA == -5) {
            zzaf zzafVar = zzjoVar.f19944a;
            Objects.requireNonNull(zzafVar);
            long j11 = zzafVar.f8735p;
            if (j11 != Long.MAX_VALUE) {
                zzad zzadVarB = zzafVar.b();
                zzadVarB.w(j11 + this.f19756w);
                zzjoVar.f19944a = zzadVarB.y();
                return -5;
            }
        }
        return iA;
    }

    protected final zzhj x(Throwable th, zzaf zzafVar, boolean z10, int i10) {
        int i11;
        if (zzafVar == null || this.f19759z) {
            i11 = 4;
        } else {
            this.f19759z = true;
            try {
                int iJ = j(zzafVar) & 7;
                this.f19759z = false;
                i11 = iJ;
            } catch (zzhj unused) {
                this.f19759z = false;
                i11 = 4;
            } catch (Throwable th2) {
                this.f19759z = false;
                throw th2;
            }
        }
        return zzhj.b(th, s(), this.f19751r, zzafVar, i11, z10, i10);
    }

    protected final int y(long j10) {
        zzuj zzujVar = this.f19754u;
        Objects.requireNonNull(zzujVar);
        return zzujVar.W(j10 - this.f19756w);
    }

    protected final zzjo z() {
        zzjo zzjoVar = this.f19749p;
        zzjoVar.f19945b = null;
        zzjoVar.f19944a = null;
        return zzjoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzkn, com.google.android.gms.internal.ads.zzko
    public final int zzb() {
        return this.f19748o;
    }
}
