package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzftu extends zzftv {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Callable f18730s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzftw f18731t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzftu(zzftw zzftwVar, Callable callable, Executor executor) {
        super(zzftwVar, executor);
        this.f18731t = zzftwVar;
        Objects.requireNonNull(callable);
        this.f18730s = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final Object a() throws Exception {
        return this.f18730s.call();
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final String b() {
        return this.f18730s.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzftv
    final void h(Object obj) {
        this.f18731t.h(obj);
    }
}
