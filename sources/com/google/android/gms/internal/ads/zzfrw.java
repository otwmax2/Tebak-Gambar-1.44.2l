package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfrw extends zzfqp {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient zzfqn f18642q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient zzfqk f18643r;

    zzfrw(zzfqn zzfqnVar, zzfqk zzfqkVar) {
        this.f18642q = zzfqnVar;
        this.f18643r = zzfqkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int c(Object[] objArr, int i10) {
        return this.f18643r.c(objArr, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.f18642q.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.f18643r.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf
    public final zzfqk j() {
        return this.f18643r;
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf
    /* JADX INFO: renamed from: k */
    public final zzfsj iterator() {
        return this.f18643r.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f18642q.size();
    }
}
