package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbn<E> extends zzbh<E> implements Set<E> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NullableDecl
    private transient zzbg<E> f22448p;

    zzbn() {
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        return zzbs.b(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzbs.a(this);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    public zzbg<E> i() {
        zzbg<E> zzbgVar = this.f22448p;
        if (zzbgVar != null) {
            return zzbgVar;
        }
        zzbg<E> zzbgVarM = m();
        this.f22448p = zzbgVarM;
        return zzbgVarM;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    zzbg<E> m() {
        return zzbg.p(toArray());
    }
}
