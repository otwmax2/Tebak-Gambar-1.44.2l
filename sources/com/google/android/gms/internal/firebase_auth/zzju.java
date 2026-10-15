package com.google.android.gms.internal.firebase_auth;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzju<T> implements zzkd<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzjn f22825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzkz<?, ?> f22826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f22827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzhu<?> f22828d;

    private zzju(zzkz<?, ?> zzkzVar, zzhu<?> zzhuVar, zzjn zzjnVar) {
        this.f22826b = zzkzVar;
        this.f22827c = zzhuVar.d(zzjnVar);
        this.f22828d = zzhuVar;
        this.f22825a = zzjnVar;
    }

    static <T> zzju<T> h(zzkz<?, ?> zzkzVar, zzhu<?> zzhuVar, zzjn zzjnVar) {
        return new zzju<>(zzkzVar, zzhuVar, zzjnVar);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final int a(T t10) {
        int iHashCode = this.f22826b.c(t10).hashCode();
        return this.f22827c ? (iHashCode * 53) + this.f22828d.b(t10).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final boolean b(T t10) {
        return this.f22828d.b(t10).r();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final int c(T t10) {
        zzkz<?, ?> zzkzVar = this.f22826b;
        int iG = zzkzVar.g(zzkzVar.c(t10)) + 0;
        return this.f22827c ? iG + this.f22828d.b(t10).s() : iG;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final void d(T t10) {
        this.f22826b.f(t10);
        this.f22828d.f(t10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final boolean e(T t10, T t11) {
        if (!this.f22826b.c(t10).equals(this.f22826b.c(t11))) {
            return false;
        }
        if (this.f22827c) {
            return this.f22828d.b(t10).equals(this.f22828d.b(t11));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final void f(T t10, T t11) {
        zzkf.m(this.f22826b, t10, t11);
        if (this.f22827c) {
            zzkf.k(this.f22828d, t10, t11);
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final void g(T t10, zzls zzlsVar) throws IOException {
        Iterator itP = this.f22828d.b(t10).p();
        while (itP.hasNext()) {
            Map.Entry entry = (Map.Entry) itP.next();
            zzhx zzhxVar = (zzhx) entry.getKey();
            if (zzhxVar.a() != zzlt.MESSAGE || zzhxVar.d() || zzhxVar.b()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zziu) {
                zzlsVar.p(zzhxVar.zza(), ((zziu) entry).a().d());
            } else {
                zzlsVar.p(zzhxVar.zza(), entry.getValue());
            }
        }
        zzkz<?, ?> zzkzVar = this.f22826b;
        zzkzVar.d(zzkzVar.c(t10), zzlsVar);
    }
}
