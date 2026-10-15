package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfsf {
    static int a(Set set) {
        Iterator it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Collection, java.util.Set] */
    public static Set b(Set set, zzfnv zzfnvVar) {
        if (!(set instanceof SortedSet)) {
            if (set instanceof zzfsc) {
                zzfsc zzfscVar = (zzfsc) set;
                return new zzfsc(zzfscVar.f18562o, zzfny.a(zzfscVar.f18563p, zzfnvVar));
            }
            Objects.requireNonNull(set);
            Objects.requireNonNull(zzfnvVar);
            return new zzfsc(set, zzfnvVar);
        }
        SortedSet sortedSet = (SortedSet) set;
        if (sortedSet instanceof zzfsc) {
            zzfsc zzfscVar2 = (zzfsc) sortedSet;
            return new zzfsd((SortedSet) zzfscVar2.f18562o, zzfny.a(zzfscVar2.f18563p, zzfnvVar));
        }
        Objects.requireNonNull(sortedSet);
        Objects.requireNonNull(zzfnvVar);
        return new zzfsd(sortedSet, zzfnvVar);
    }

    static boolean c(Set set, @CheckForNull Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    static boolean d(Set set, Collection collection) {
        Objects.requireNonNull(collection);
        if (collection instanceof zzfrp) {
            collection = ((zzfrp) collection).zza();
        }
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            return e(set, collection.iterator());
        }
        Iterator it = set.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    static boolean e(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }
}
