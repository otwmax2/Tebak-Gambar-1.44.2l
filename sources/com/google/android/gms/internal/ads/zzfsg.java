package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfsg extends zzfqp {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final transient Object f18660q;

    zzfsg(Object obj) {
        Objects.requireNonNull(obj);
        this.f18660q = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int c(Object[] objArr, int i10) {
        objArr[i10] = this.f18660q;
        return i10 + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.f18660q.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f18660q.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzfqs(this.f18660q);
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf
    public final zzfqk j() {
        return zzfqk.v(this.f18660q);
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf
    /* JADX INFO: renamed from: k */
    public final zzfsj iterator() {
        return new zzfqs(this.f18660q);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return '[' + this.f18660q.toString() + ']';
    }
}
