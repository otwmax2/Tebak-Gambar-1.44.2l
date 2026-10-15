package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfpd extends zzfpb implements ListIterator {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfpe f18554r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfpd(zzfpe zzfpeVar) {
        super(zzfpeVar);
        this.f18554r = zzfpeVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        boolean zIsEmpty = this.f18554r.isEmpty();
        a();
        ((ListIterator) this.f18546o).add(obj);
        zzfpf.k(this.f18554r.f18555t);
        if (zIsEmpty) {
            this.f18554r.c();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        a();
        return ((ListIterator) this.f18546o).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        a();
        return ((ListIterator) this.f18546o).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        return ((ListIterator) this.f18546o).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        a();
        return ((ListIterator) this.f18546o).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        ((ListIterator) this.f18546o).set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfpd(zzfpe zzfpeVar, int i10) {
        super(zzfpeVar, ((List) zzfpeVar.f18550p).listIterator(i10));
        this.f18554r = zzfpeVar;
    }
}
