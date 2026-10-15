package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzar implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f23288o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzat f23289p;

    zzar(zzat zzatVar) {
        this.f23289p = zzatVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23288o < this.f23289p.f23292o.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i10 = this.f23288o;
        if (i10 >= this.f23289p.f23292o.length()) {
            throw new NoSuchElementException();
        }
        this.f23288o = i10 + 1;
        return new zzat(String.valueOf(i10));
    }
}
