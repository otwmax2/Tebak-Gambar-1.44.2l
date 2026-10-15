package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private T f7331q;

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            int i10 = this.f7308p;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Cannot advance the iterator beyond ");
            sb.append(i10);
            throw new NoSuchElementException(sb.toString());
        }
        int i11 = this.f7308p + 1;
        this.f7308p = i11;
        if (i11 == 0) {
            T t10 = (T) Preconditions.k(this.f7307o.get(0));
            this.f7331q = t10;
            if (!(t10 instanceof DataBufferRef)) {
                String strValueOf = String.valueOf(t10.getClass());
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 44);
                sb2.append("DataBuffer reference of type ");
                sb2.append(strValueOf);
                sb2.append(" is not movable");
                throw new IllegalStateException(sb2.toString());
            }
        } else {
            ((DataBufferRef) Preconditions.k(this.f7331q)).B(this.f7308p);
        }
        return this.f7331q;
    }
}
