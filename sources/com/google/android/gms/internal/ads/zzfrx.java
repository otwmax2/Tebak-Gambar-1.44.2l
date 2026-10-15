package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfrx extends zzfqk {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient Object[] f18644q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f18645r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final transient int f18646s;

    zzfrx(Object[] objArr, int i10, int i11) {
        this.f18644q = objArr;
        this.f18645r = i10;
        this.f18646s = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzfnu.a(i10, this.f18646s, "index");
        Object obj = this.f18644q[i10 + i10 + this.f18645r];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final boolean l() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18646s;
    }
}
