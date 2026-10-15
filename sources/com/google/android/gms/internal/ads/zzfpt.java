package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfpt extends AbstractCollection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzfpu f18576o;

    zzfpt(zzfpu zzfpuVar) {
        this.f18576o = zzfpuVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f18576o.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzfpu zzfpuVar = this.f18576o;
        Map mapL = zzfpuVar.l();
        return mapL != null ? mapL.values().iterator() : new zzfpo(zzfpuVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f18576o.size();
    }
}
