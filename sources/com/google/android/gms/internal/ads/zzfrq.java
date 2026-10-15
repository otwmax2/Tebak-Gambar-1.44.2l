package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfrq extends zzfrs implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final zzfrq f18634o = new zzfrq();

    private zzfrq() {
    }

    @Override // com.google.android.gms.internal.ads.zzfrs
    public final zzfrs a() {
        return zzfsa.f18658o;
    }

    @Override // com.google.android.gms.internal.ads.zzfrs, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        Objects.requireNonNull(comparable);
        Objects.requireNonNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
