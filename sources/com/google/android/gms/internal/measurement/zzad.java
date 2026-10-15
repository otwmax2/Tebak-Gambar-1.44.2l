package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzad implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f23263o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzae f23264p;

    zzad(zzae zzaeVar) {
        this.f23264p = zzaeVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23263o < this.f23264p.l();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (this.f23263o < this.f23264p.l()) {
            zzae zzaeVar = this.f23264p;
            int i10 = this.f23263o;
            this.f23263o = i10 + 1;
            return zzaeVar.m(i10);
        }
        throw new NoSuchElementException("Out of bounds index: " + this.f23263o);
    }
}
