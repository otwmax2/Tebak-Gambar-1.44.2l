package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfpr extends AbstractSet {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzfpu f18572o;

    zzfpr(zzfpu zzfpuVar) {
        this.f18572o = zzfpuVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f18572o.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return this.f18572o.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfpu zzfpuVar = this.f18572o;
        Map mapL = zzfpuVar.l();
        return mapL != null ? mapL.keySet().iterator() : new zzfpm(zzfpuVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        Map mapL = this.f18572o.l();
        return mapL != null ? mapL.keySet().remove(obj) : this.f18572o.t(obj) != zzfpu.f18577x;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f18572o.size();
    }
}
