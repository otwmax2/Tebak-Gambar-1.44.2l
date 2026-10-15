package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsy implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f19601o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f19602p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Iterator f19603q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzgtc f19604r;

    /* synthetic */ zzgsy(zzgtc zzgtcVar, zzgsx zzgsxVar) {
        this.f19604r = zzgtcVar;
    }

    private final Iterator a() {
        if (this.f19603q == null) {
            this.f19603q = this.f19604r.f19611q.entrySet().iterator();
        }
        return this.f19603q;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f19601o + 1 >= this.f19604r.f19610p.size()) {
            return !this.f19604r.f19611q.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.f19602p = true;
        int i10 = this.f19601o + 1;
        this.f19601o = i10;
        return i10 < this.f19604r.f19610p.size() ? (Map.Entry) this.f19604r.f19610p.get(this.f19601o) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f19602p) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f19602p = false;
        this.f19604r.p();
        if (this.f19601o >= this.f19604r.f19610p.size()) {
            a().remove();
            return;
        }
        zzgtc zzgtcVar = this.f19604r;
        int i10 = this.f19601o;
        this.f19601o = i10 - 1;
        zzgtcVar.n(i10);
    }
}
