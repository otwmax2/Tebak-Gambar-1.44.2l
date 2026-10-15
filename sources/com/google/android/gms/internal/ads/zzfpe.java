package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
class zzfpe extends zzfpc implements List {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzfpf f18555t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfpe(zzfpf zzfpfVar, Object obj, @CheckForNull List list, zzfpc zzfpcVar) {
        super(zzfpfVar, obj, list, zzfpcVar);
        this.f18555t = zzfpfVar;
    }

    @Override // java.util.List
    public final void add(int i10, Object obj) {
        zzb();
        boolean zIsEmpty = this.f18550p.isEmpty();
        ((List) this.f18550p).add(i10, obj);
        zzfpf.k(this.f18555t);
        if (zIsEmpty) {
            c();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i10, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.f18550p).addAll(i10, collection);
        if (!zAddAll) {
            return zAddAll;
        }
        zzfpf.m(this.f18555t, this.f18550p.size() - size);
        if (size != 0) {
            return zAddAll;
        }
        c();
        return true;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzb();
        return ((List) this.f18550p).get(i10);
    }

    @Override // java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        zzb();
        return ((List) this.f18550p).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        zzb();
        return ((List) this.f18550p).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zzb();
        return new zzfpd(this);
    }

    @Override // java.util.List
    public final Object remove(int i10) {
        zzb();
        Object objRemove = ((List) this.f18550p).remove(i10);
        zzfpf.l(this.f18555t);
        g();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int i10, Object obj) {
        zzb();
        return ((List) this.f18550p).set(i10, obj);
    }

    @Override // java.util.List
    public final List subList(int i10, int i11) {
        zzb();
        zzfpf zzfpfVar = this.f18555t;
        Object obj = this.f18549o;
        List listSubList = ((List) this.f18550p).subList(i10, i11);
        zzfpc zzfpcVar = this.f18551q;
        if (zzfpcVar == null) {
            zzfpcVar = this;
        }
        return zzfpfVar.o(obj, listSubList, zzfpcVar);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i10) {
        zzb();
        return new zzfpd(this, i10);
    }
}
