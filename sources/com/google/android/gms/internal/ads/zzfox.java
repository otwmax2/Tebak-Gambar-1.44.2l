package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfox extends zzfpa implements NavigableSet {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfpf f18541r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfox(zzfpf zzfpfVar, NavigableMap navigableMap) {
        super(zzfpfVar, navigableMap);
        this.f18541r = zzfpfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpa
    final /* synthetic */ SortedMap c() {
        return (NavigableMap) ((SortedMap) this.f18626o);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final Object ceiling(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f18626o)).ceilingKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return descendingSet().iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new zzfox(this.f18541r, ((NavigableMap) ((SortedMap) this.f18626o)).descendingMap());
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final Object floor(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f18626o)).floorKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfpa, java.util.SortedSet, java.util.NavigableSet
    public final /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final Object higher(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f18626o)).higherKey(obj);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final Object lower(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f18626o)).lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final Object pollFirst() {
        return zzfqu.a(iterator());
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final Object pollLast() {
        return zzfqu.a(descendingIterator());
    }

    @Override // com.google.android.gms.internal.ads.zzfpa, java.util.SortedSet, java.util.NavigableSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzfpa, java.util.SortedSet, java.util.NavigableSet
    public final /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z10) {
        return new zzfox(this.f18541r, ((NavigableMap) ((SortedMap) this.f18626o)).headMap(obj, z10));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
        return new zzfox(this.f18541r, ((NavigableMap) ((SortedMap) this.f18626o)).subMap(obj, z10, obj2, z11));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z10) {
        return new zzfox(this.f18541r, ((NavigableMap) ((SortedMap) this.f18626o)).tailMap(obj, z10));
    }
}
