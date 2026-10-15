package com.google.android.gms.internal.games;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgc<E> extends zzft<E> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final zzft<Object> f23217s = new zzgc(new Object[0], 0);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient Object[] f23218q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f23219r;

    zzgc(Object[] objArr, int i10) {
        this.f23218q = objArr;
        this.f23219r = i10;
    }

    @Override // com.google.android.gms.internal.games.zzft, com.google.android.gms.internal.games.zzfs
    final int c(Object[] objArr, int i10) {
        System.arraycopy(this.f23218q, 0, objArr, i10, this.f23219r);
        return i10 + this.f23219r;
    }

    @Override // java.util.List
    public final E get(int i10) {
        zzfo.c(i10, this.f23219r);
        return (E) this.f23218q[i10];
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final Object[] i() {
        return this.f23218q;
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final int j() {
        return 0;
    }

    @Override // com.google.android.gms.internal.games.zzfs
    final int k() {
        return this.f23219r;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23219r;
    }
}
