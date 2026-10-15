package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfpp extends AbstractSet {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzfpu f18567o;

    zzfpp(zzfpu zzfpuVar) {
        this.f18567o = zzfpuVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f18567o.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        Map mapL = this.f18567o.l();
        if (mapL != null) {
            return mapL.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int iR = this.f18567o.r(entry.getKey());
            if (iR != -1) {
                Object[] objArr = this.f18567o.f18581r;
                objArr.getClass();
                if (zzfnp.a(objArr[iR], entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfpu zzfpuVar = this.f18567o;
        Map mapL = zzfpuVar.l();
        return mapL != null ? mapL.entrySet().iterator() : new zzfpn(zzfpuVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        Map mapL = this.f18567o.l();
        if (mapL != null) {
            return mapL.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zzfpu zzfpuVar = this.f18567o;
        if (zzfpuVar.p()) {
            return false;
        }
        int iQ = zzfpuVar.q();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object objK = zzfpu.k(this.f18567o);
        zzfpu zzfpuVar2 = this.f18567o;
        int[] iArr = zzfpuVar2.f18579p;
        iArr.getClass();
        Object[] objArr = zzfpuVar2.f18580q;
        objArr.getClass();
        Object[] objArr2 = zzfpuVar2.f18581r;
        objArr2.getClass();
        int iB = zzfpv.b(key, value, iQ, objK, iArr, objArr, objArr2);
        if (iB == -1) {
            return false;
        }
        this.f18567o.o(iB, iQ);
        zzfpu.b(this.f18567o);
        this.f18567o.m();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f18567o.size();
    }
}
