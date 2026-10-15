package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkk implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22855o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Iterator f22856p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzki f22857q;

    private zzkk(zzki zzkiVar) {
        this.f22857q = zzkiVar;
        this.f22855o = zzkiVar.f22848p.size();
    }

    private final Iterator a() {
        if (this.f22856p == null) {
            this.f22856p = this.f22857q.f22852t.entrySet().iterator();
        }
        return this.f22856p;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.f22855o;
        return (i10 > 0 && i10 <= this.f22857q.f22848p.size()) || a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (a().hasNext()) {
            return (Map.Entry) a().next();
        }
        List list = this.f22857q.f22848p;
        int i10 = this.f22855o - 1;
        this.f22855o = i10;
        return (Map.Entry) list.get(i10);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* synthetic */ zzkk(zzki zzkiVar, zzkh zzkhVar) {
        this(zzkiVar);
    }
}
