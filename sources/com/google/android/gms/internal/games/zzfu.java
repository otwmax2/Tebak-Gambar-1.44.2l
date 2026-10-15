package com.google.android.gms.internal.games;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfu<E> {
    zzfu() {
    }

    public zzfu<E> a(Iterable<? extends E> iterable) {
        Iterator<? extends E> it = iterable.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
        return this;
    }

    public abstract zzfu<E> b(E e10);
}
