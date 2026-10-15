package com.google.android.gms.internal.drive;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzlw<T> implements zzmf<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzlq f22255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzmx<?, ?> f22256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f22257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzjy<?> f22258d;

    private zzlw(zzmx<?, ?> zzmxVar, zzjy<?> zzjyVar, zzlq zzlqVar) {
        this.f22256b = zzmxVar;
        this.f22257c = zzjyVar.f(zzlqVar);
        this.f22258d = zzjyVar;
        this.f22255a = zzlqVar;
    }

    static <T> zzlw<T> a(zzmx<?, ?> zzmxVar, zzjy<?> zzjyVar, zzlq zzlqVar) {
        return new zzlw<>(zzmxVar, zzjyVar, zzlqVar);
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void b(T t10) {
        this.f22256b.c(t10);
        this.f22258d.e(t10);
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final boolean c(T t10, T t11) {
        if (!this.f22256b.g(t10).equals(this.f22256b.g(t11))) {
            return false;
        }
        if (this.f22257c) {
            return this.f22258d.c(t10).equals(this.f22258d.c(t11));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final int d(T t10) {
        int iHashCode = this.f22256b.g(t10).hashCode();
        return this.f22257c ? (iHashCode * 53) + this.f22258d.c(t10).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final int e(T t10) {
        zzmx<?, ?> zzmxVar = this.f22256b;
        int iH = zzmxVar.h(zzmxVar.g(t10)) + 0;
        return this.f22257c ? iH + this.f22258d.c(t10).q() : iH;
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void f(T t10, zzns zznsVar) throws IOException {
        Iterator itD = this.f22258d.c(t10).d();
        while (itD.hasNext()) {
            Map.Entry entry = (Map.Entry) itD.next();
            zzkd zzkdVar = (zzkd) entry.getKey();
            if (zzkdVar.B() != zznr.MESSAGE || zzkdVar.C() || zzkdVar.z()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzkv) {
                zznsVar.p(zzkdVar.t(), ((zzkv) entry).a().a());
            } else {
                zznsVar.p(zzkdVar.t(), entry.getValue());
            }
        }
        zzmx<?, ?> zzmxVar = this.f22256b;
        zzmxVar.b(zzmxVar.g(t10), zznsVar);
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void g(T t10, T t11) {
        zzmh.g(this.f22256b, t10, t11);
        if (this.f22257c) {
            zzmh.e(this.f22258d, t10, t11);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final boolean h(T t10) {
        return this.f22258d.c(t10).c();
    }
}
