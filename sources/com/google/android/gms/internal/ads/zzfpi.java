package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzfpi implements zzfrg {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    private transient Set f18559o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    private transient Collection f18560p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    private transient Map f18561q;

    zzfpi() {
    }

    @Override // com.google.android.gms.internal.ads.zzfrg
    public boolean a(Object obj, Object obj2) {
        throw null;
    }

    abstract Collection b();

    Iterator c() {
        throw null;
    }

    abstract Map d();

    abstract Set e();

    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfrg) {
            return v().equals(((zzfrg) obj).v());
        }
        return false;
    }

    public final Set g() {
        Set set = this.f18559o;
        if (set != null) {
            return set;
        }
        Set setE = e();
        this.f18559o = setE;
        return setE;
    }

    public final int hashCode() {
        return v().hashCode();
    }

    public final String toString() {
        return v().toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfrg
    public final Map v() {
        Map map = this.f18561q;
        if (map != null) {
            return map;
        }
        Map mapD = d();
        this.f18561q = mapD;
        return mapD;
    }

    @Override // com.google.android.gms.internal.ads.zzfrg
    public final Collection x() {
        Collection collection = this.f18560p;
        if (collection != null) {
            return collection;
        }
        Collection collectionB = b();
        this.f18560p = collectionB;
        return collectionB;
    }
}
