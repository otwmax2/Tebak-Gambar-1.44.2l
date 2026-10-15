package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f6115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double[] f6116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double[] f6117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f6118d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6119e;

    /* synthetic */ zzbf(zzbd zzbdVar, zzbe zzbeVar) {
        int size = zzbdVar.f6113b.size();
        this.f6115a = (String[]) zzbdVar.f6112a.toArray(new String[size]);
        this.f6116b = c(zzbdVar.f6113b);
        this.f6117c = c(zzbdVar.f6114c);
        this.f6118d = new int[size];
        this.f6119e = 0;
    }

    private static final double[] c(List list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i10 = 0; i10 < size; i10++) {
            dArr[i10] = ((Double) list.get(i10)).doubleValue();
        }
        return dArr;
    }

    public final List a() {
        ArrayList arrayList = new ArrayList(this.f6115a.length);
        int i10 = 0;
        while (true) {
            String[] strArr = this.f6115a;
            if (i10 >= strArr.length) {
                return arrayList;
            }
            String str = strArr[i10];
            double d10 = this.f6117c[i10];
            double d11 = this.f6116b[i10];
            int i11 = this.f6118d[i10];
            double d12 = i11;
            double d13 = this.f6119e;
            Double.isNaN(d12);
            Double.isNaN(d13);
            arrayList.add(new zzbc(str, d10, d11, d12 / d13, i11));
            i10++;
        }
    }

    public final void b(double d10) {
        this.f6119e++;
        int i10 = 0;
        while (true) {
            double[] dArr = this.f6117c;
            if (i10 >= dArr.length) {
                return;
            }
            double d11 = dArr[i10];
            if (d11 <= d10 && d10 < this.f6116b[i10]) {
                int[] iArr = this.f6118d;
                iArr[i10] = iArr[i10] + 1;
            }
            if (d10 < d11) {
                return;
            } else {
                i10++;
            }
        }
    }
}
