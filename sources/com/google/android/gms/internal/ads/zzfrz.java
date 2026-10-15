package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfrz extends zzfqp {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Object[] f18651v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final zzfrz f18652w;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final transient Object[] f18653q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f18654r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final transient Object[] f18655s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final transient int f18656t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final transient int f18657u;

    static {
        Object[] objArr = new Object[0];
        f18651v = objArr;
        f18652w = new zzfrz(objArr, 0, objArr, 0, 0);
    }

    zzfrz(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.f18653q = objArr;
        this.f18654r = i10;
        this.f18655s = objArr2;
        this.f18656t = i11;
        this.f18657u = i12;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int c(Object[] objArr, int i10) {
        System.arraycopy(this.f18653q, 0, objArr, i10, this.f18657u);
        return i10 + this.f18657u;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        Object[] objArr = this.f18655s;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iB = zzfqc.b(obj);
        while (true) {
            int i10 = iB & this.f18656t;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iB = i10 + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int g() {
        return this.f18657u;
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f18654r;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int i() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return j().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfqp, com.google.android.gms.internal.ads.zzfqf
    /* JADX INFO: renamed from: k */
    public final zzfsj iterator() {
        return j().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final Object[] m() {
        return this.f18653q;
    }

    @Override // com.google.android.gms.internal.ads.zzfqp
    final zzfqk o() {
        return zzfqk.q(this.f18653q, this.f18657u);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f18657u;
    }

    @Override // com.google.android.gms.internal.ads.zzfqp
    final boolean y() {
        return true;
    }
}
