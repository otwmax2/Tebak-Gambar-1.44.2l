package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbm<E> extends zzbg<E> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final zzbg<Object> f22445s = new zzbm(new Object[0], 0);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient Object[] f22446q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f22447r;

    zzbm(Object[] objArr, int i10) {
        this.f22446q = objArr;
        this.f22447r = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbg, com.google.android.gms.internal.firebase_auth.zzbh
    final int c(Object[] objArr, int i10) {
        System.arraycopy(this.f22446q, 0, objArr, i10, this.f22447r);
        return i10 + this.f22447r;
    }

    @Override // java.util.List
    public final E get(int i10) {
        zzav.a(i10, this.f22447r);
        return (E) this.f22446q[i10];
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    final Object[] j() {
        return this.f22446q;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    final int k() {
        return 0;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    final int l() {
        return this.f22447r;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22447r;
    }
}
