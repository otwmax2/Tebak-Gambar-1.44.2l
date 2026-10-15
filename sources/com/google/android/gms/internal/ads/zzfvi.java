package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfvi extends zzfus {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Callable f18759q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfvj f18760r;

    zzfvi(zzfvj zzfvjVar, Callable callable) {
        this.f18760r = zzfvjVar;
        Objects.requireNonNull(callable);
        this.f18759q = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final Object a() throws Exception {
        return this.f18759q.call();
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final String b() {
        return this.f18759q.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final void d(Throwable th) {
        this.f18760r.i(th);
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final void e(Object obj) {
        this.f18760r.h(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final boolean f() {
        return this.f18760r.isDone();
    }
}
