package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class u0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f24307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzha f24308b;

    u0(zzha zzhaVar, String str) {
        this.f24308b = zzhaVar;
        this.f24307a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        this.f24308b.f24735o.a();
        return this.f24308b.f24735o.T().b0(this.f24307a);
    }
}
