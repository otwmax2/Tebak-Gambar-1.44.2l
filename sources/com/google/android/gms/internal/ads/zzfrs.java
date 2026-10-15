package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfrs implements Comparator {
    protected zzfrs() {
    }

    public static zzfrs b(Comparator comparator) {
        return comparator instanceof zzfrs ? (zzfrs) comparator : new zzfpw(comparator);
    }

    public static zzfrs c() {
        return zzfrq.f18634o;
    }

    public zzfrs a() {
        return new zzfsb(this);
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);
}
