package com.google.android.gms.internal.drive;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class zzna extends AbstractList<String> implements zzkz, RandomAccess {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzkz f22310o;

    public zzna(zzkz zzkzVar) {
        this.f22310o = zzkzVar;
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final List<?> F0() {
        return this.f22310o.F0();
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final Object b3(int i10) {
        return this.f22310o.b3(i10);
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final zzkz f3() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        return (String) this.f22310o.get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zznc(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i10) {
        return new zznb(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22310o.size();
    }
}
