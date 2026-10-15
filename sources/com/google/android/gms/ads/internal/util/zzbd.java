package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f6112a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f6113b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f6114c = new ArrayList();

    public final zzbd a(String str, double d10, double d11) {
        int i10 = 0;
        while (i10 < this.f6112a.size()) {
            double dDoubleValue = ((Double) this.f6114c.get(i10)).doubleValue();
            double dDoubleValue2 = ((Double) this.f6113b.get(i10)).doubleValue();
            if (d10 < dDoubleValue || (dDoubleValue == d10 && d11 < dDoubleValue2)) {
                break;
            }
            i10++;
        }
        this.f6112a.add(i10, str);
        this.f6114c.add(i10, Double.valueOf(d10));
        this.f6113b.add(i10, Double.valueOf(d11));
        return this;
    }

    public final zzbf b() {
        return new zzbf(this, null);
    }
}
