package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmd implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f23744o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f23745p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Iterator f23746q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzmh f23747r;

    /* synthetic */ zzmd(zzmh zzmhVar, zzmc zzmcVar) {
        this.f23747r = zzmhVar;
    }

    private final Iterator a() {
        if (this.f23746q == null) {
            this.f23746q = this.f23747r.f23751q.entrySet().iterator();
        }
        return this.f23746q;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f23744o + 1 >= this.f23747r.f23750p.size()) {
            return !this.f23747r.f23751q.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.f23745p = true;
        int i10 = this.f23744o + 1;
        this.f23744o = i10;
        return i10 < this.f23747r.f23750p.size() ? (Map.Entry) this.f23747r.f23750p.get(this.f23744o) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f23745p) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f23745p = false;
        this.f23747r.p();
        if (this.f23744o >= this.f23747r.f23750p.size()) {
            a().remove();
            return;
        }
        zzmh zzmhVar = this.f23747r;
        int i10 = this.f23744o;
        this.f23744o = i10 - 1;
        zzmhVar.n(i10);
    }
}
