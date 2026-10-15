package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfpx extends zzfpz {
    zzfpx() {
        super(null);
    }

    static final zzfpz j(int i10) {
        return i10 < 0 ? zzfpz.f18590b : i10 > 0 ? zzfpz.f18591c : zzfpz.f18589a;
    }

    @Override // com.google.android.gms.internal.ads.zzfpz
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfpz
    public final zzfpz b(int i10, int i11) {
        return j(i10 < i11 ? -1 : i10 > i11 ? 1 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzfpz
    public final zzfpz c(Object obj, Object obj2, Comparator comparator) {
        return j(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.zzfpz
    public final zzfpz d(boolean z10, boolean z11) {
        return j(zzfsq.a(z10, z11));
    }

    @Override // com.google.android.gms.internal.ads.zzfpz
    public final zzfpz e(boolean z10, boolean z11) {
        return j(zzfsq.a(false, false));
    }
}
