package com.google.android.gms.internal.auth;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgj implements Iterator<Map.Entry> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f21556o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f21557p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Iterator<Map.Entry> f21558q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzgl f21559r;

    /* synthetic */ zzgj(zzgl zzglVar, zzge zzgeVar) {
        this.f21559r = zzglVar;
    }

    private final Iterator<Map.Entry> a() {
        if (this.f21558q == null) {
            this.f21558q = this.f21559r.f21563q.entrySet().iterator();
        }
        return this.f21558q;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f21556o + 1 >= this.f21559r.f21562p.size()) {
            return !this.f21559r.f21563q.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        this.f21557p = true;
        int i10 = this.f21556o + 1;
        this.f21556o = i10;
        return i10 < this.f21559r.f21562p.size() ? (Map.Entry) this.f21559r.f21562p.get(this.f21556o) : a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f21557p) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f21557p = false;
        this.f21559r.p();
        if (this.f21556o >= this.f21559r.f21562p.size()) {
            a().remove();
            return;
        }
        zzgl zzglVar = this.f21559r;
        int i10 = this.f21556o;
        this.f21556o = i10 - 1;
        zzglVar.n(i10);
    }
}
