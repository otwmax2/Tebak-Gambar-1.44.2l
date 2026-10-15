package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfri extends zzfrm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Comparator f18631a;

    zzfri(Comparator comparator) {
        this.f18631a = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzfrm
    final Map a() {
        return new TreeMap(this.f18631a);
    }
}
