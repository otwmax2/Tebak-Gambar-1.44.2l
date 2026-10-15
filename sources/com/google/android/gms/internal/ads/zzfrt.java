package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfrt extends zzfqk {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final zzfqk f18635s = new zzfrt(new Object[0], 0);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final transient Object[] f18636q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f18637r;

    zzfrt(Object[] objArr, int i10) {
        this.f18636q = objArr;
        this.f18637r = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzfqk, com.google.android.gms.internal.ads.zzfqf
    final int c(Object[] objArr, int i10) {
        System.arraycopy(this.f18636q, 0, objArr, i10, this.f18637r);
        return i10 + this.f18637r;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int g() {
        return this.f18637r;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzfnu.a(i10, this.f18637r, "index");
        Object obj = this.f18636q[i10];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int i() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final boolean l() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final Object[] m() {
        return this.f18636q;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18637r;
    }
}
