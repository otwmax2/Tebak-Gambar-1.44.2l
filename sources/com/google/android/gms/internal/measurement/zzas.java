package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzas implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f23290o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzat f23291p;

    zzas(zzat zzatVar) {
        this.f23291p = zzatVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23290o < this.f23291p.f23292o.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i10 = this.f23290o;
        zzat zzatVar = this.f23291p;
        if (i10 >= zzatVar.f23292o.length()) {
            throw new NoSuchElementException();
        }
        String str = zzatVar.f23292o;
        this.f23290o = i10 + 1;
        return new zzat(String.valueOf(str.charAt(i10)));
    }
}
