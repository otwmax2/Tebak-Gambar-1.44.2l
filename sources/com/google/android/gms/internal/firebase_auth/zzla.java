package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzla extends AbstractList<String> implements zziy, RandomAccess {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zziy f22877o;

    public zzla(zziy zziyVar) {
        this.f22877o = zziyVar;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zziy
    public final zziy b() {
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zziy
    public final List<?> d() {
        return this.f22877o.d();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        return (String) this.f22877o.get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzlc(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i10) {
        return new zzld(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22877o.size();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zziy
    public final Object z(int i10) {
        return this.f22877o.z(i10);
    }
}
