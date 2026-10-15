package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzvk extends zzvy implements Comparable {
    private final boolean A;
    private final int B;
    private final int C;
    private final boolean D;
    private final int E;
    private final int F;
    private final int G;
    private final int H;
    private final boolean I;
    private final boolean J;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f20849s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f20850t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final String f20851u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzvq f20852v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final boolean f20853w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f20854x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int f20855y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final int f20856z;

    public zzvk(int i10, zzcp zzcpVar, int i11, zzvq zzvqVar, int i12, boolean z10, zzfnv zzfnvVar) {
        int i13;
        int iJ;
        int iJ2;
        boolean z11;
        super(i10, zzcpVar, i11);
        this.f20852v = zzvqVar;
        this.f20851u = zzwc.n(this.f20913r.f8722c);
        int i14 = 0;
        this.f20853w = zzwc.r(i12, false);
        int i15 = 0;
        while (true) {
            i13 = Integer.MAX_VALUE;
            if (i15 >= zzvqVar.f14043n.size()) {
                i15 = Integer.MAX_VALUE;
                iJ = 0;
                break;
            } else {
                iJ = zzwc.j(this.f20913r, (String) zzvqVar.f14043n.get(i15), false);
                if (iJ > 0) {
                    break;
                } else {
                    i15++;
                }
            }
        }
        this.f20855y = i15;
        this.f20854x = iJ;
        int i16 = this.f20913r.f8724e;
        this.f20856z = Integer.bitCount(0);
        zzaf zzafVar = this.f20913r;
        int i17 = zzafVar.f8724e;
        this.A = true;
        this.D = 1 == (zzafVar.f8723d & 1);
        this.E = zzafVar.f8744y;
        this.F = zzafVar.f8745z;
        this.G = zzafVar.f8727h;
        this.f20850t = zzfnvVar.a(zzafVar);
        String[] strArrH = zzew.H();
        int i18 = 0;
        while (true) {
            if (i18 >= strArrH.length) {
                i18 = Integer.MAX_VALUE;
                iJ2 = 0;
                break;
            } else {
                iJ2 = zzwc.j(this.f20913r, strArrH[i18], false);
                if (iJ2 > 0) {
                    break;
                } else {
                    i18++;
                }
            }
        }
        this.B = i18;
        this.C = iJ2;
        int i19 = 0;
        while (true) {
            if (i19 < zzvqVar.f14047r.size()) {
                String str = this.f20913r.f8731l;
                if (str != null && str.equals(zzvqVar.f14047r.get(i19))) {
                    i13 = i19;
                    break;
                }
                i19++;
            } else {
                break;
            }
        }
        this.H = i13;
        this.I = (i12 & 384) == 128;
        this.J = (i12 & 64) == 64;
        zzvq zzvqVar2 = this.f20852v;
        if (zzwc.r(i12, zzvqVar2.f20886n0) && ((z11 = this.f20850t) || zzvqVar2.f20880h0)) {
            i14 = (!zzwc.r(i12, false) || !z11 || this.f20913r.f8727h == -1 || (!zzvqVar2.f20888p0 && z10)) ? 1 : 2;
        }
        this.f20849s = i14;
    }

    @Override // com.google.android.gms.internal.ads.zzvy
    public final int c() {
        return this.f20849s;
    }

    @Override // com.google.android.gms.internal.ads.zzvy
    public final /* bridge */ /* synthetic */ boolean e(zzvy zzvyVar) {
        String str;
        zzvk zzvkVar = (zzvk) zzvyVar;
        boolean z10 = this.f20852v.f20883k0;
        zzaf zzafVar = this.f20913r;
        int i10 = zzafVar.f8744y;
        if (i10 == -1) {
            return false;
        }
        zzaf zzafVar2 = zzvkVar.f20913r;
        if (i10 != zzafVar2.f8744y || (str = zzafVar.f8731l) == null || !TextUtils.equals(str, zzafVar2.f8731l)) {
            return false;
        }
        boolean z11 = this.f20852v.f20882j0;
        int i11 = this.f20913r.f8745z;
        return i11 != -1 && i11 == zzvkVar.f20913r.f8745z && this.I == zzvkVar.I && this.J == zzvkVar.J;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzvk zzvkVar) {
        zzfrs zzfrsVarA = (this.f20850t && this.f20853w) ? zzwc.f20929k : zzwc.f20929k.a();
        zzfpz zzfpzVarC = zzfpz.i().d(this.f20853w, zzvkVar.f20853w).c(Integer.valueOf(this.f20855y), Integer.valueOf(zzvkVar.f20855y), zzfrs.c().a()).b(this.f20854x, zzvkVar.f20854x).b(this.f20856z, zzvkVar.f20856z).d(this.D, zzvkVar.D).d(true, true).c(Integer.valueOf(this.B), Integer.valueOf(zzvkVar.B), zzfrs.c().a()).b(this.C, zzvkVar.C).d(this.f20850t, zzvkVar.f20850t).c(Integer.valueOf(this.H), Integer.valueOf(zzvkVar.H), zzfrs.c().a());
        Integer numValueOf = Integer.valueOf(this.G);
        Integer numValueOf2 = Integer.valueOf(zzvkVar.G);
        boolean z10 = this.f20852v.f14052w;
        zzfpz zzfpzVarC2 = zzfpzVarC.c(numValueOf, numValueOf2, zzwc.f20930l).d(this.I, zzvkVar.I).d(this.J, zzvkVar.J).c(Integer.valueOf(this.E), Integer.valueOf(zzvkVar.E), zzfrsVarA).c(Integer.valueOf(this.F), Integer.valueOf(zzvkVar.F), zzfrsVarA);
        Integer numValueOf3 = Integer.valueOf(this.G);
        Integer numValueOf4 = Integer.valueOf(zzvkVar.G);
        if (!zzew.u(this.f20851u, zzvkVar.f20851u)) {
            zzfrsVarA = zzwc.f20930l;
        }
        return zzfpzVarC2.c(numValueOf3, numValueOf4, zzfrsVarA).a();
    }
}
