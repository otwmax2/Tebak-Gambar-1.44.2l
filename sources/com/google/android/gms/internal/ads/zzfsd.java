package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfsd extends zzfsc implements SortedSet {
    zzfsd(SortedSet sortedSet, zzfnv zzfnvVar) {
        super(sortedSet, zzfnvVar);
    }

    @Override // java.util.SortedSet
    @CheckForNull
    public final Comparator comparator() {
        return ((SortedSet) this.f18562o).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.f18562o.iterator();
        zzfnv zzfnvVar = this.f18563p;
        Objects.requireNonNull(it);
        Objects.requireNonNull(zzfnvVar);
        while (it.hasNext()) {
            Object next = it.next();
            if (zzfnvVar.a(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new zzfsd(((SortedSet) this.f18562o).headSet(obj), this.f18563p);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSetHeadSet = (SortedSet) this.f18562o;
        while (true) {
            Object objLast = sortedSetHeadSet.last();
            if (this.f18563p.a(objLast)) {
                return objLast;
            }
            sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new zzfsd(((SortedSet) this.f18562o).subSet(obj, obj2), this.f18563p);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new zzfsd(((SortedSet) this.f18562o).tailSet(obj), this.f18563p);
    }
}
