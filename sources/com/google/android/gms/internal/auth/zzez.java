package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzez extends zzdn<String> implements RandomAccess, zzfa {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final zzez f21500q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzfa f21501r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List<Object> f21502p;

    static {
        zzez zzezVar = new zzez(10);
        f21500q = zzezVar;
        zzezVar.zzb();
        f21501r = zzezVar;
    }

    public zzez() {
        this(10);
    }

    private static String i(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzeb ? ((zzeb) obj).r(zzev.f21493a) : zzev.h((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.auth.zzeu
    public final /* bridge */ /* synthetic */ zzeu K(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.f21502p);
        return new zzez((ArrayList<Object>) arrayList);
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        c();
        this.f21502p.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection<? extends String> collection) {
        c();
        if (collection instanceof zzfa) {
            collection = ((zzfa) collection).e();
        }
        boolean zAddAll = this.f21502p.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.auth.zzfa
    public final zzfa b() {
        return a() ? new zzgu(this) : this;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f21502p.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzfa
    public final List<?> e() {
        return Collections.unmodifiableList(this.f21502p);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final String get(int i10) {
        Object obj = this.f21502p.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzeb) {
            zzeb zzebVar = (zzeb) obj;
            String strR = zzebVar.r(zzev.f21493a);
            if (zzebVar.m()) {
                this.f21502p.set(i10, strR);
            }
            return strR;
        }
        byte[] bArr = (byte[]) obj;
        String strH = zzev.h(bArr);
        if (zzev.i(bArr)) {
            this.f21502p.set(i10, strH);
        }
        return strH;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        Object objRemove = this.f21502p.remove(i10);
        ((AbstractList) this).modCount++;
        return i(objRemove);
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        c();
        return i(this.f21502p.set(i10, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21502p.size();
    }

    public zzez(int i10) {
        this.f21502p = new ArrayList(i10);
    }

    private zzez(ArrayList<Object> arrayList) {
        this.f21502p = arrayList;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }
}
