package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbt extends zzbg<Object> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient Object[] f22460q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f22461r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final transient int f22462s;

    zzbt(Object[] objArr, int i10, int i11) {
        this.f22460q = objArr;
        this.f22461r = i10;
        this.f22462s = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzav.a(i10, this.f22462s);
        return this.f22460q[(i10 * 2) + this.f22461r];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22462s;
    }
}
