package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzmk implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22288o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Iterator f22289p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzmi f22290q;

    private zzmk(zzmi zzmiVar) {
        this.f22290q = zzmiVar;
        this.f22288o = zzmiVar.f22282p.size();
    }

    private final Iterator a() {
        if (this.f22289p == null) {
            this.f22289p = this.f22290q.f22286t.entrySet().iterator();
        }
        return this.f22289p;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.f22288o;
        return (i10 > 0 && i10 <= this.f22290q.f22282p.size()) || a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (a().hasNext()) {
            return (Map.Entry) a().next();
        }
        List list = this.f22290q.f22282p;
        int i10 = this.f22288o - 1;
        this.f22288o = i10;
        return (Map.Entry) list.get(i10);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* synthetic */ zzmk(zzmi zzmiVar, zzmj zzmjVar) {
        this(zzmiVar);
    }
}
