package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfsa extends zzfrs implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final zzfsa f18658o = new zzfsa();

    private zzfsa() {
    }

    @Override // com.google.android.gms.internal.ads.zzfrs
    public final zzfrs a() {
        return zzfrq.f18634o;
    }

    @Override // com.google.android.gms.internal.ads.zzfrs, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        Objects.requireNonNull(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
