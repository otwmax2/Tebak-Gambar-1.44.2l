package com.google.android.gms.internal.games;

import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzfr<E> extends zzfu<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object[] f23197a = new Object[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f23198b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f23199c;

    zzfr(int i10) {
    }

    private final void d(int i10) {
        Object[] objArr = this.f23197a;
        if (objArr.length >= i10) {
            if (this.f23199c) {
                this.f23197a = (Object[]) objArr.clone();
                this.f23199c = false;
                return;
            }
            return;
        }
        int length = objArr.length;
        if (i10 < 0) {
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        int iHighestOneBit = length + (length >> 1) + 1;
        if (iHighestOneBit < i10) {
            iHighestOneBit = Integer.highestOneBit(i10 - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            iHighestOneBit = Integer.MAX_VALUE;
        }
        this.f23197a = Arrays.copyOf(objArr, iHighestOneBit);
        this.f23199c = false;
    }

    @Override // com.google.android.gms.internal.games.zzfu
    public zzfu<E> a(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            d(this.f23198b + collection.size());
            if (collection instanceof zzfs) {
                this.f23198b = ((zzfs) collection).c(this.f23197a, this.f23198b);
                return this;
            }
        }
        super.a(iterable);
        return this;
    }

    @Override // com.google.android.gms.internal.games.zzfu
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public zzfr<E> b(E e10) {
        zzfo.b(e10);
        d(this.f23198b + 1);
        Object[] objArr = this.f23197a;
        int i10 = this.f23198b;
        this.f23198b = i10 + 1;
        objArr[i10] = e10;
        return this;
    }
}
