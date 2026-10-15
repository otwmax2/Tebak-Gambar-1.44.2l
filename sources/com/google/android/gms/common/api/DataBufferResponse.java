package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataBuffer;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class DataBufferResponse<T, R extends AbstractDataBuffer<T> & Result> extends Response<R> implements DataBuffer<T> {
    @KeepForSdk
    public DataBufferResponse() {
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void c() {
        ((AbstractDataBuffer) g()).c();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((AbstractDataBuffer) g()).close();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public final T get(int i10) {
        return (T) ((AbstractDataBuffer) g()).get(i10);
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public final int getCount() {
        return ((AbstractDataBuffer) g()).getCount();
    }

    @Override // java.lang.Iterable
    public final Iterator<T> iterator() {
        return ((AbstractDataBuffer) g()).iterator();
    }
}
