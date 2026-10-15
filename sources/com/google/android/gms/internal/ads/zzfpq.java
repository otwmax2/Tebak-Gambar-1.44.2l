package com.google.android.gms.internal.ads;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzfpq implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f18568o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f18569p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f18570q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfpu f18571r;

    /* synthetic */ zzfpq(zzfpu zzfpuVar, zzfpm zzfpmVar) {
        this.f18571r = zzfpuVar;
        this.f18568o = zzfpuVar.f18582s;
        this.f18569p = zzfpuVar.e();
    }

    private final void b() {
        if (this.f18571r.f18582s != this.f18568o) {
            throw new ConcurrentModificationException();
        }
    }

    abstract Object a(int i10);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18569p >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        b();
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f18569p;
        this.f18570q = i10;
        Object objA = a(i10);
        this.f18569p = this.f18571r.f(this.f18569p);
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        b();
        zzfnu.i(this.f18570q >= 0, "no calls to next() since the last call to remove()");
        this.f18568o += 32;
        zzfpu zzfpuVar = this.f18571r;
        int i10 = this.f18570q;
        Object[] objArr = zzfpuVar.f18580q;
        objArr.getClass();
        zzfpuVar.remove(objArr[i10]);
        this.f18569p--;
        this.f18570q = -1;
    }
}
