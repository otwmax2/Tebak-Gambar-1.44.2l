package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzsq f19946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f19947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzuj[] f19948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f19949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public zzjs f19951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f19952g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean[] f19953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzko[] f19954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzwk f19955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzkg f19956k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private zzjr f19957l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private zzur f19958m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzwl f19959n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f19960o;

    public zzjr(zzko[] zzkoVarArr, long j10, zzwk zzwkVar, zzwt zzwtVar, zzkg zzkgVar, zzjs zzjsVar, zzwl zzwlVar, byte[] bArr) {
        this.f19954i = zzkoVarArr;
        this.f19960o = j10;
        this.f19955j = zzwkVar;
        this.f19956k = zzkgVar;
        zzss zzssVar = zzjsVar.f19961a;
        this.f19947b = zzssVar.f11010a;
        this.f19951f = zzjsVar;
        this.f19958m = zzur.f20816d;
        this.f19959n = zzwlVar;
        this.f19948c = new zzuj[2];
        this.f19953h = new boolean[2];
        long j11 = zzjsVar.f19962b;
        long j12 = zzjsVar.f19964d;
        zzsq zzsqVarO = zzkgVar.o(zzssVar, zzwtVar, j11);
        this.f19946a = j12 != -9223372036854775807L ? new zzrx(zzsqVarO, true, 0L, j12) : zzsqVarO;
    }

    private final void s() {
        if (!u()) {
            return;
        }
        int i10 = 0;
        while (true) {
            zzwl zzwlVar = this.f19959n;
            if (i10 >= zzwlVar.f20950a) {
                return;
            }
            zzwlVar.b(i10);
            zzwe zzweVar = this.f19959n.f20952c[i10];
            i10++;
        }
    }

    private final void t() {
        if (!u()) {
            return;
        }
        int i10 = 0;
        while (true) {
            zzwl zzwlVar = this.f19959n;
            if (i10 >= zzwlVar.f20950a) {
                return;
            }
            zzwlVar.b(i10);
            zzwe zzweVar = this.f19959n.f20952c[i10];
            i10++;
        }
    }

    private final boolean u() {
        return this.f19957l == null;
    }

    public final long a(zzwl zzwlVar, long j10, boolean z10) {
        return b(zzwlVar, j10, false, new boolean[2]);
    }

    public final long b(zzwl zzwlVar, long j10, boolean z10, boolean[] zArr) {
        int i10 = 0;
        while (true) {
            boolean z11 = true;
            if (i10 >= zzwlVar.f20950a) {
                break;
            }
            boolean[] zArr2 = this.f19953h;
            if (z10 || !zzwlVar.a(this.f19959n, i10)) {
                z11 = false;
            }
            zArr2[i10] = z11;
            i10++;
        }
        int i11 = 0;
        while (true) {
            zzko[] zzkoVarArr = this.f19954i;
            if (i11 >= 2) {
                break;
            }
            zzkoVarArr[i11].zzb();
            i11++;
        }
        s();
        this.f19959n = zzwlVar;
        t();
        long j11 = this.f19946a.j(zzwlVar.f20952c, this.f19953h, this.f19948c, zArr, j10);
        int i12 = 0;
        while (true) {
            zzko[] zzkoVarArr2 = this.f19954i;
            if (i12 >= 2) {
                break;
            }
            zzkoVarArr2[i12].zzb();
            i12++;
        }
        this.f19950e = false;
        int i13 = 0;
        while (true) {
            zzuj[] zzujVarArr = this.f19948c;
            if (i13 >= 2) {
                return j11;
            }
            if (zzujVarArr[i13] != null) {
                zzdl.f(zzwlVar.b(i13));
                this.f19954i[i13].zzb();
                this.f19950e = true;
            } else {
                zzdl.f(zzwlVar.f20952c[i13] == null);
            }
            i13++;
        }
    }

    public final long c() {
        if (!this.f19949d) {
            return this.f19951f.f19962b;
        }
        long jZzb = this.f19950e ? this.f19946a.zzb() : Long.MIN_VALUE;
        return jZzb == Long.MIN_VALUE ? this.f19951f.f19965e : jZzb;
    }

    public final long d() {
        if (this.f19949d) {
            return this.f19946a.a();
        }
        return 0L;
    }

    public final long e() {
        return this.f19960o;
    }

    public final long f() {
        return this.f19951f.f19962b + this.f19960o;
    }

    public final zzjr g() {
        return this.f19957l;
    }

    public final zzur h() {
        return this.f19958m;
    }

    public final zzwl i() {
        return this.f19959n;
    }

    public final zzwl j(float f10, zzcn zzcnVar) throws zzhj {
        zzwl zzwlVarD = this.f19955j.d(this.f19954i, this.f19958m, this.f19951f.f19961a, zzcnVar);
        for (zzwe zzweVar : zzwlVarD.f20952c) {
        }
        return zzwlVarD;
    }

    public final void k(long j10) {
        zzdl.f(u());
        this.f19946a.c(j10 - this.f19960o);
    }

    public final void l(float f10, zzcn zzcnVar) throws zzhj {
        this.f19949d = true;
        this.f19958m = this.f19946a.f();
        zzwl zzwlVarJ = j(f10, zzcnVar);
        zzjs zzjsVar = this.f19951f;
        long jMax = zzjsVar.f19962b;
        long j10 = zzjsVar.f19965e;
        if (j10 != -9223372036854775807L && jMax >= j10) {
            jMax = Math.max(0L, j10 - 1);
        }
        long jA = a(zzwlVarJ, jMax, false);
        long j11 = this.f19960o;
        zzjs zzjsVar2 = this.f19951f;
        this.f19960o = j11 + (zzjsVar2.f19962b - jA);
        this.f19951f = zzjsVar2.b(jA);
    }

    public final void m(long j10) {
        zzdl.f(u());
        if (this.f19949d) {
            this.f19946a.b(j10 - this.f19960o);
        }
    }

    public final void n() {
        s();
        zzkg zzkgVar = this.f19956k;
        zzsq zzsqVar = this.f19946a;
        try {
            if (zzsqVar instanceof zzrx) {
                zzkgVar.h(((zzrx) zzsqVar).f20582o);
            } else {
                zzkgVar.h(zzsqVar);
            }
        } catch (RuntimeException e10) {
            zzee.c("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public final void o(zzjr zzjrVar) {
        if (zzjrVar == this.f19957l) {
            return;
        }
        s();
        this.f19957l = zzjrVar;
        t();
    }

    public final void p(long j10) {
        this.f19960o = 1000000000000L;
    }

    public final void q() {
        zzsq zzsqVar = this.f19946a;
        if (zzsqVar instanceof zzrx) {
            long j10 = this.f19951f.f19964d;
            if (j10 == -9223372036854775807L) {
                j10 = Long.MIN_VALUE;
            }
            ((zzrx) zzsqVar).k(0L, j10);
        }
    }

    public final boolean r() {
        return this.f19949d && (!this.f19950e || this.f19946a.zzb() == Long.MIN_VALUE);
    }
}
