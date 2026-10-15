package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzmq implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22297o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f22298p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Iterator f22299q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final /* synthetic */ zzmi f22300r;

    private zzmq(zzmi zzmiVar) {
        this.f22300r = zzmiVar;
        this.f22297o = -1;
    }

    private final Iterator a() {
        if (this.f22299q == null) {
            this.f22299q = this.f22300r.f22283q.entrySet().iterator();
        }
        return this.f22299q;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22297o + 1 < this.f22300r.f22282p.size() || (!this.f22300r.f22283q.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f22298p = true;
        int i10 = this.f22297o + 1;
        this.f22297o = i10;
        return i10 < this.f22300r.f22282p.size() ? (Map.Entry) this.f22300r.f22282p.get(this.f22297o) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f22298p) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f22298p = false;
        this.f22300r.r();
        if (this.f22297o >= this.f22300r.f22282p.size()) {
            a().remove();
            return;
        }
        zzmi zzmiVar = this.f22300r;
        int i10 = this.f22297o;
        this.f22297o = i10 - 1;
        zzmiVar.j(i10);
    }

    /* synthetic */ zzmq(zzmi zzmiVar, zzmj zzmjVar) {
        this(zzmiVar);
    }
}
