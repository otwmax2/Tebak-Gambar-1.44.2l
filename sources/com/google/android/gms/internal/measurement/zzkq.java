package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkq extends zzim implements RandomAccess, zzkr {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final zzkq f23684q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzkr f23685r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List f23686p;

    static {
        zzkq zzkqVar = new zzkq(10);
        f23684q = zzkqVar;
        zzkqVar.zzb();
        f23685r = zzkqVar;
    }

    public zzkq() {
        this(10);
    }

    private static String i(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzjb ? ((zzjb) obj).s(zzkk.f23664b) : zzkk.h((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final Object G(int i10) {
        return this.f23686p.get(i10);
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final void I1(zzjb zzjbVar) {
        c();
        this.f23686p.add(zzjbVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    public final /* bridge */ /* synthetic */ zzkj K(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.f23686p);
        return new zzkq(arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        c();
        this.f23686p.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        c();
        if (collection instanceof zzkr) {
            collection = ((zzkr) collection).f();
        }
        boolean zAddAll = this.f23686p.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final zzkr b() {
        return a() ? new zzmq(this) : this;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f23686p.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final List f() {
        return Collections.unmodifiableList(this.f23686p);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final String get(int i10) {
        Object obj = this.f23686p.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzjb) {
            zzjb zzjbVar = (zzjb) obj;
            String strS = zzjbVar.s(zzkk.f23664b);
            if (zzjbVar.n()) {
                this.f23686p.set(i10, strS);
            }
            return strS;
        }
        byte[] bArr = (byte[]) obj;
        String strH = zzkk.h(bArr);
        if (zzkk.i(bArr)) {
            this.f23686p.set(i10, strH);
        }
        return strH;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        Object objRemove = this.f23686p.remove(i10);
        ((AbstractList) this).modCount++;
        return i(objRemove);
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        c();
        return i(this.f23686p.set(i10, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23686p.size();
    }

    public zzkq(int i10) {
        this.f23686p = new ArrayList(i10);
    }

    private zzkq(ArrayList arrayList) {
        this.f23686p = arrayList;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
