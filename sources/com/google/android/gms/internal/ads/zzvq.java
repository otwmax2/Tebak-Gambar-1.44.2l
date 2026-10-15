package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzvq extends zzcu {
    private static final String A0;
    private static final String B0;
    private static final String C0;
    private static final String D0;
    private static final String E0;
    private static final String F0;
    private static final String G0;
    private static final String H0;
    private static final String I0;
    private static final String J0;
    private static final String K0;
    public static final zzn L0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final zzvq f20868s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    @Deprecated
    public static final zzvq f20869t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static final String f20870u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static final String f20871v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private static final String f20872w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static final String f20873x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final String f20874y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private static final String f20875z0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final boolean f20876d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final boolean f20877e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final boolean f20878f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final boolean f20879g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final boolean f20880h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final boolean f20881i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final boolean f20882j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final boolean f20883k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final boolean f20884l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final boolean f20885m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final boolean f20886n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final boolean f20887o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final boolean f20888p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private final SparseArray f20889q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private final SparseBooleanArray f20890r0;

    static {
        zzvq zzvqVar = new zzvq(new zzvo());
        f20868s0 = zzvqVar;
        f20869t0 = zzvqVar;
        f20870u0 = zzew.p(1000);
        f20871v0 = zzew.p(1001);
        f20872w0 = zzew.p(1002);
        f20873x0 = zzew.p(1003);
        f20874y0 = zzew.p(1004);
        f20875z0 = zzew.p(1005);
        A0 = zzew.p(1006);
        B0 = zzew.p(1007);
        C0 = zzew.p(1008);
        D0 = zzew.p(1009);
        E0 = zzew.p(1010);
        F0 = zzew.p(1011);
        G0 = zzew.p(1012);
        H0 = zzew.p(1013);
        I0 = zzew.p(1014);
        J0 = zzew.p(1015);
        K0 = zzew.p(1016);
        L0 = new zzn() { // from class: com.google.android.gms.internal.ads.zzvm
        };
    }

    private zzvq(zzvo zzvoVar) {
        super(zzvoVar);
        this.f20876d0 = zzvoVar.f20860q;
        this.f20877e0 = false;
        this.f20878f0 = zzvoVar.f20861r;
        this.f20879g0 = false;
        this.f20880h0 = zzvoVar.f20862s;
        this.f20881i0 = false;
        this.f20882j0 = false;
        this.f20883k0 = false;
        this.f20884l0 = false;
        this.f20885m0 = zzvoVar.f20863t;
        this.f20886n0 = zzvoVar.f20864u;
        this.f20887o0 = false;
        this.f20888p0 = zzvoVar.f20865v;
        this.f20889q0 = zzvoVar.f20866w;
        this.f20890r0 = zzvoVar.f20867x;
    }

    public static zzvq d(Context context) {
        return new zzvq(new zzvo(context));
    }

    public final zzvo c() {
        return new zzvo(this, null);
    }

    @Deprecated
    public final zzvs e(int i10, zzur zzurVar) {
        Map map = (Map) this.f20889q0.get(i10);
        if (map != null) {
            return (zzvs) map.get(zzurVar);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzvq.class == obj.getClass()) {
            zzvq zzvqVar = (zzvq) obj;
            if (super.equals(zzvqVar) && this.f20876d0 == zzvqVar.f20876d0 && this.f20878f0 == zzvqVar.f20878f0 && this.f20880h0 == zzvqVar.f20880h0 && this.f20885m0 == zzvqVar.f20885m0 && this.f20886n0 == zzvqVar.f20886n0 && this.f20888p0 == zzvqVar.f20888p0) {
                SparseBooleanArray sparseBooleanArray = this.f20890r0;
                SparseBooleanArray sparseBooleanArray2 = zzvqVar.f20890r0;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= size) {
                            SparseArray sparseArray = this.f20889q0;
                            SparseArray sparseArray2 = zzvqVar.f20889q0;
                            int size2 = sparseArray.size();
                            if (sparseArray2.size() == size2) {
                                for (int i11 = 0; i11 < size2; i11++) {
                                    int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i11));
                                    if (iIndexOfKey >= 0) {
                                        Map map = (Map) sparseArray.valueAt(i11);
                                        Map map2 = (Map) sparseArray2.valueAt(iIndexOfKey);
                                        if (map2.size() == map.size()) {
                                            for (Map.Entry entry : map.entrySet()) {
                                                zzur zzurVar = (zzur) entry.getKey();
                                                if (!map2.containsKey(zzurVar) || !zzew.u(entry.getValue(), map2.get(zzurVar))) {
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        } else {
                            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i10)) < 0) {
                                break;
                            }
                            i10++;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean f(int i10) {
        return this.f20890r0.get(i10);
    }

    @Deprecated
    public final boolean g(int i10, zzur zzurVar) {
        Map map = (Map) this.f20889q0.get(i10);
        return map != null && map.containsKey(zzurVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    public final int hashCode() {
        return ((((((((((((super.hashCode() + 31) * 31) + (this.f20876d0 ? 1 : 0)) * 961) + (this.f20878f0 ? 1 : 0)) * 961) + (this.f20880h0 ? 1 : 0)) * 28629151) + (this.f20885m0 ? 1 : 0)) * 31) + (this.f20886n0 ? 1 : 0)) * 961) + (this.f20888p0 ? 1 : 0);
    }
}
