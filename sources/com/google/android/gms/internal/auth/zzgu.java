package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgu extends AbstractList<String> implements RandomAccess, zzfa {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfa f21577o;

    public zzgu(zzfa zzfaVar) {
        this.f21577o = zzfaVar;
    }

    @Override // com.google.android.gms.internal.auth.zzfa
    public final zzfa b() {
        return this;
    }

    @Override // com.google.android.gms.internal.auth.zzfa
    public final List<?> e() {
        return this.f21577o.e();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        return ((zzez) this.f21577o).get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzgt(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i10) {
        return new zzgs(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21577o.size();
    }
}
