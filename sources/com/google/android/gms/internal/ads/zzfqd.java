package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzfqd extends zzfqe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object[] f18593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f18594b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f18595c;

    zzfqd(int i10) {
        this.f18593a = new Object[i10];
    }

    private final void f(int i10) {
        Object[] objArr = this.f18593a;
        int length = objArr.length;
        if (length < i10) {
            this.f18593a = Arrays.copyOf(objArr, zzfqe.b(length, i10));
            this.f18595c = false;
        } else if (this.f18595c) {
            this.f18593a = (Object[]) objArr.clone();
            this.f18595c = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqe
    public /* bridge */ /* synthetic */ zzfqe a(Object obj) {
        throw null;
    }

    public final zzfqd c(Object obj) {
        Objects.requireNonNull(obj);
        f(this.f18594b + 1);
        Object[] objArr = this.f18593a;
        int i10 = this.f18594b;
        this.f18594b = i10 + 1;
        objArr[i10] = obj;
        return this;
    }

    public final zzfqe d(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            f(this.f18594b + collection.size());
            if (collection instanceof zzfqf) {
                this.f18594b = ((zzfqf) collection).c(this.f18593a, this.f18594b);
                return this;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    final void e(Object[] objArr, int i10) {
        zzfrr.b(objArr, 2);
        f(this.f18594b + 2);
        System.arraycopy(objArr, 0, this.f18593a, this.f18594b, 2);
        this.f18594b += 2;
    }
}
