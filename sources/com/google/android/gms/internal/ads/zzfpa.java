package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
class zzfpa extends zzfov implements SortedSet {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfpf f18545q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfpa(zzfpf zzfpfVar, SortedMap sortedMap) {
        super(zzfpfVar, sortedMap);
        this.f18545q = zzfpfVar;
    }

    SortedMap c() {
        return (SortedMap) this.f18626o;
    }

    @Override // java.util.SortedSet
    @CheckForNull
    public final Comparator comparator() {
        return c().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return c().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new zzfpa(this.f18545q, c().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return c().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new zzfpa(this.f18545q, c().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new zzfpa(this.f18545q, c().tailMap(obj));
    }
}
