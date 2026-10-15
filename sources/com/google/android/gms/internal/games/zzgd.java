package com.google.android.gms.internal.games;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgd<E> extends zzfy<E> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient E f23220q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private transient int f23221r;

    zzgd(E e10) {
        this.f23220q = (E) zzfo.b(e10);
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final int c(Object[] objArr, int i10) {
        objArr[i10] = this.f23220q;
        return i10 + 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f23220q.equals(obj);
    }

    @Override // com.google.android.gms.internal.games.zzfs
    /* JADX INFO: renamed from: g */
    public final zzgg<E> iterator() {
        return new zzga(this.f23220q);
    }

    @Override // com.google.android.gms.internal.games.zzfy, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i10 = this.f23221r;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = this.f23220q.hashCode();
        this.f23221r = iHashCode;
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.games.zzfy, com.google.android.gms.internal.games.zzfs, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.games.zzfy
    final boolean q() {
        return this.f23221r != 0;
    }

    @Override // com.google.android.gms.internal.games.zzfy
    final zzft<E> r() {
        return zzft.q(this.f23220q);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String string = this.f23220q.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2);
        sb.append('[');
        sb.append(string);
        sb.append(']');
        return sb.toString();
    }

    zzgd(E e10, int i10) {
        this.f23220q = e10;
        this.f23221r = i10;
    }
}
