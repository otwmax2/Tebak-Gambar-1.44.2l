package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zziv extends zzgr<String> implements zziy, RandomAccess {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final zziv f22784q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zziy f22785r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List<Object> f22786p;

    static {
        zziv zzivVar = new zziv();
        f22784q = zzivVar;
        zzivVar.zzb();
        f22785r = zzivVar;
    }

    public zziv() {
        this(10);
    }

    private static String g(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzgv ? ((zzgv) obj).r() : zzii.i((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        c();
        this.f22786p.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zziy
    public final zziy b() {
        return zza() ? new zzla(this) : this;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f22786p.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zziy
    public final List<?> d() {
        return Collections.unmodifiableList(this.f22786p);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        Object obj = this.f22786p.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgv) {
            zzgv zzgvVar = (zzgv) obj;
            String strR = zzgvVar.r();
            if (zzgvVar.a()) {
                this.f22786p.set(i10, strR);
            }
            return strR;
        }
        byte[] bArr = (byte[]) obj;
        String strI = zzii.i(bArr);
        if (zzii.h(bArr)) {
            this.f22786p.set(i10, strI);
        }
        return strI;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzio
    public final /* synthetic */ zzio h(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.f22786p);
        return new zziv((ArrayList<Object>) arrayList);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        c();
        return g(this.f22786p.set(i10, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22786p.size();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zziy
    public final Object z(int i10) {
        return this.f22786p.get(i10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, com.google.android.gms.internal.firebase_auth.zzio
    public final /* bridge */ /* synthetic */ boolean zza() {
        return super.zza();
    }

    public zziv(int i10) {
        this((ArrayList<Object>) new ArrayList(i10));
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection<? extends String> collection) {
        c();
        if (collection instanceof zziy) {
            collection = ((zziy) collection).d();
        }
        boolean zAddAll = this.f22786p.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        Object objRemove = this.f22786p.remove(i10);
        ((AbstractList) this).modCount++;
        return g(objRemove);
    }

    private zziv(ArrayList<Object> arrayList) {
        this.f22786p = arrayList;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }
}
