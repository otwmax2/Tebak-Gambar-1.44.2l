package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkq implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22864o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f22865p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Iterator f22866q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final /* synthetic */ zzki f22867r;

    private zzkq(zzki zzkiVar) {
        this.f22867r = zzkiVar;
        this.f22864o = -1;
    }

    private final Iterator a() {
        if (this.f22866q == null) {
            this.f22866q = this.f22867r.f22849q.entrySet().iterator();
        }
        return this.f22866q;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22864o + 1 < this.f22867r.f22848p.size() || (!this.f22867r.f22849q.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f22865p = true;
        int i10 = this.f22864o + 1;
        this.f22864o = i10;
        return i10 < this.f22867r.f22848p.size() ? (Map.Entry) this.f22867r.f22848p.get(this.f22864o) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f22865p) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f22865p = false;
        this.f22867r.r();
        if (this.f22864o >= this.f22867r.f22848p.size()) {
            a().remove();
            return;
        }
        zzki zzkiVar = this.f22867r;
        int i10 = this.f22864o;
        this.f22864o = i10 - 1;
        zzkiVar.m(i10);
    }

    /* synthetic */ zzkq(zzki zzkiVar, zzkh zzkhVar) {
        this(zzkiVar);
    }
}
