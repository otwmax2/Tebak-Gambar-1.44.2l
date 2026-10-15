package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @KeepForSdk
    protected final DataHolder f7300o;

    @KeepForSdk
    protected AbstractDataBuffer(DataHolder dataHolder) {
        this.f7300o = dataHolder;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void c() {
        DataHolder dataHolder = this.f7300o;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        c();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public abstract T get(int i10);

    @Override // com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        DataHolder dataHolder = this.f7300o;
        if (dataHolder == null) {
            return 0;
        }
        return dataHolder.getCount();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new DataBufferIterator(this);
    }
}
