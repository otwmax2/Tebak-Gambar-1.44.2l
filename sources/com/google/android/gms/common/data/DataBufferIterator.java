package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class DataBufferIterator<T> implements Iterator<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final DataBuffer<T> f7307o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected int f7308p = -1;

    public DataBufferIterator(DataBuffer<T> dataBuffer) {
        this.f7307o = (DataBuffer) Preconditions.k(dataBuffer);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7308p < this.f7307o.getCount() + (-1);
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            DataBuffer<T> dataBuffer = this.f7307o;
            int i10 = this.f7308p + 1;
            this.f7308p = i10;
            return dataBuffer.get(i10);
        }
        int i11 = this.f7308p;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Cannot advance the iterator beyond ");
        sb.append(i11);
        throw new NoSuchElementException(sb.toString());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
