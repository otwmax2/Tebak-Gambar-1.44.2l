package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzfre extends AbstractMap {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    private transient Set f18628o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    private transient Set f18629p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    private transient Collection f18630q;

    zzfre() {
    }

    abstract Set a();

    Set b() {
        return new zzfrc(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.f18628o;
        if (set != null) {
            return set;
        }
        Set setA = a();
        this.f18628o = setA;
        return setA;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        Set set = this.f18629p;
        if (set != null) {
            return set;
        }
        Set setB = b();
        this.f18629p = setB;
        return setB;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.f18630q;
        if (collection != null) {
            return collection;
        }
        zzfrd zzfrdVar = new zzfrd(this);
        this.f18630q = zzfrdVar;
        return zzfrdVar;
    }
}
