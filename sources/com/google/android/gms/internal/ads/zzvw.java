package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzvw extends zzvy implements Comparable {
    private final boolean A;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f20902s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f20903t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f20904u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f20905v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f20906w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f20907x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int f20908y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final int f20909z;

    public zzvw(int i10, zzcp zzcpVar, int i11, zzvq zzvqVar, int i12, String str) {
        int iJ;
        super(i10, zzcpVar, i11);
        int i13 = 0;
        this.f20903t = zzwc.r(i12, false);
        int i14 = this.f20913r.f8723d;
        int i15 = zzvqVar.f14050u;
        this.f20904u = 1 == (i14 & 1);
        this.f20905v = (i14 & 2) != 0;
        zzfqk zzfqkVarV = zzvqVar.f14048s.isEmpty() ? zzfqk.v(BuildConfig.FLAVOR) : zzvqVar.f14048s;
        int i16 = 0;
        while (true) {
            if (i16 >= zzfqkVarV.size()) {
                i16 = Integer.MAX_VALUE;
                iJ = 0;
                break;
            } else {
                iJ = zzwc.j(this.f20913r, (String) zzfqkVarV.get(i16), false);
                if (iJ > 0) {
                    break;
                } else {
                    i16++;
                }
            }
        }
        this.f20906w = i16;
        this.f20907x = iJ;
        int i17 = this.f20913r.f8724e;
        int iBitCount = Integer.bitCount(0);
        this.f20908y = iBitCount;
        int i18 = this.f20913r.f8724e;
        this.A = false;
        int iJ2 = zzwc.j(this.f20913r, str, zzwc.n(str) == null);
        this.f20909z = iJ2;
        boolean z10 = iJ > 0 || (zzvqVar.f14048s.isEmpty() && iBitCount > 0) || this.f20904u || (this.f20905v && iJ2 > 0);
        if (zzwc.r(i12, zzvqVar.f20886n0) && z10) {
            i13 = 1;
        }
        this.f20902s = i13;
    }

    @Override // com.google.android.gms.internal.ads.zzvy
    public final int c() {
        return this.f20902s;
    }

    @Override // com.google.android.gms.internal.ads.zzvy
    public final /* bridge */ /* synthetic */ boolean e(zzvy zzvyVar) {
        return false;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzvw zzvwVar) {
        zzfpz zzfpzVarB = zzfpz.i().d(this.f20903t, zzvwVar.f20903t).c(Integer.valueOf(this.f20906w), Integer.valueOf(zzvwVar.f20906w), zzfrs.c().a()).b(this.f20907x, zzvwVar.f20907x).b(this.f20908y, zzvwVar.f20908y).d(this.f20904u, zzvwVar.f20904u).c(Boolean.valueOf(this.f20905v), Boolean.valueOf(zzvwVar.f20905v), this.f20907x == 0 ? zzfrs.c() : zzfrs.c().a()).b(this.f20909z, zzvwVar.f20909z);
        if (this.f20908y == 0) {
            zzfpzVarB = zzfpzVarB.e(false, false);
        }
        return zzfpzVarB.a();
    }
}
