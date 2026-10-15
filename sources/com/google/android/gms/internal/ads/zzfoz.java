package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
class zzfoz extends zzfos implements SortedMap {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @CheckForNull
    SortedSet f18542t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzfpf f18543u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfoz(zzfpf zzfpfVar, SortedMap sortedMap) {
        super(zzfpfVar, sortedMap);
        this.f18543u = zzfpfVar;
    }

    @Override // java.util.SortedMap
    @CheckForNull
    public final Comparator comparator() {
        return d().comparator();
    }

    SortedMap d() {
        return (SortedMap) this.f18529r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfre
    public SortedSet e() {
        return new zzfpa(this.f18543u, d());
    }

    @Override // com.google.android.gms.internal.ads.zzfos, com.google.android.gms.internal.ads.zzfre, java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.f18542t;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet sortedSetE = e();
        this.f18542t = sortedSetE;
        return sortedSetE;
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return d().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new zzfoz(this.f18543u, d().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return d().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new zzfoz(this.f18543u, d().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new zzfoz(this.f18543u, d().tailMap(obj));
    }
}
