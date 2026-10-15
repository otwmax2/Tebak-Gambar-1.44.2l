package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfrv extends zzfqp {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient zzfqn f18639q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient Object[] f18640r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final transient int f18641s;

    zzfrv(zzfqn zzfqnVar, Object[] objArr, int i10, int i11) {
        this.f18639q = zzfqnVar;
        this.f18640r = objArr;
        this.f18641s = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int c(Object[] objArr, int i10) {
        return j().c(objArr, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f18639q.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return j().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf
    /* JADX INFO: renamed from: k */
    public final zzfsj iterator() {
        return j().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfqp
    final zzfqk o() {
        return new zzfru(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f18641s;
    }
}
