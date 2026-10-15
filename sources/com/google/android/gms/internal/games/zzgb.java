package com.google.android.gms.internal.games;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzgb<E> extends zzfy<E> {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final zzgb<Object> f23211v = new zzgb<>(new Object[0], 0, null, 0, 0);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient Object[] f23212q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient Object[] f23213r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final transient int f23214s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final transient int f23215t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final transient int f23216u;

    zzgb(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.f23212q = objArr;
        this.f23213r = objArr2;
        this.f23214s = i11;
        this.f23215t = i10;
        this.f23216u = i12;
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final int c(Object[] objArr, int i10) {
        System.arraycopy(this.f23212q, 0, objArr, i10, this.f23216u);
        return i10 + this.f23216u;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.f23213r;
        if (obj == null || objArr == null) {
            return false;
        }
        int iA = zzfp.a(obj.hashCode());
        while (true) {
            int i10 = iA & this.f23214s;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iA = i10 + 1;
        }
    }

    @Override // com.google.android.gms.internal.games.zzfs
    /* JADX INFO: renamed from: g */
    public final zzgg<E> iterator() {
        return (zzgg) l().iterator();
    }

    @Override // com.google.android.gms.internal.games.zzfy, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f23215t;
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final Object[] i() {
        return this.f23212q;
    }

    @Override // com.google.android.gms.internal.games.zzfy, com.google.android.gms.internal.games.zzfs, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final int j() {
        return 0;
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final int k() {
        return this.f23216u;
    }

    @Override // com.google.android.gms.internal.games.zzfy
    final boolean q() {
        return true;
    }

    @Override // com.google.android.gms.internal.games.zzfy
    final zzft<E> r() {
        return zzft.n(this.f23212q, this.f23216u);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f23216u;
    }
}
