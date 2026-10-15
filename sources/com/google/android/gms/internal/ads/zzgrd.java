package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgrd extends zzgoo implements RandomAccess, zzgre {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final zzgrd f19527q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Deprecated
    public static final zzgre f19528r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List f19529p;

    static {
        zzgrd zzgrdVar = new zzgrd(10);
        f19527q = zzgrdVar;
        zzgrdVar.zzb();
        f19528r = zzgrdVar;
    }

    public zzgrd() {
        this(10);
    }

    private static String i(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzgpe ? ((zzgpe) obj).c(zzgqw.f19490b) : zzgqw.g((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgre
    public final Object G(int i10) {
        return this.f19529p.get(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgqv
    public final /* bridge */ /* synthetic */ zzgqv K(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.f19529p);
        return new zzgrd(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzgre
    public final void U0(zzgpe zzgpeVar) {
        c();
        this.f19529p.add(zzgpeVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        c();
        this.f19529p.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        c();
        if (collection instanceof zzgre) {
            collection = ((zzgre) collection).f();
        }
        boolean zAddAll = this.f19529p.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.ads.zzgre
    public final zzgre b() {
        return a() ? new zzgtl(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f19529p.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgre
    public final List f() {
        return Collections.unmodifiableList(this.f19529p);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final String get(int i10) {
        Object obj = this.f19529p.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgpe) {
            zzgpe zzgpeVar = (zzgpe) obj;
            String strC = zzgpeVar.c(zzgqw.f19490b);
            if (zzgpeVar.B()) {
                this.f19529p.set(i10, strC);
            }
            return strC;
        }
        byte[] bArr = (byte[]) obj;
        String strG = zzgqw.g(bArr);
        if (zzgqw.h(bArr)) {
            this.f19529p.set(i10, strG);
        }
        return strG;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        Object objRemove = this.f19529p.remove(i10);
        ((AbstractList) this).modCount++;
        return i(objRemove);
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        c();
        return i(this.f19529p.set(i10, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19529p.size();
    }

    public zzgrd(int i10) {
        this.f19529p = new ArrayList(i10);
    }

    private zzgrd(ArrayList arrayList) {
        this.f19529p = arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
