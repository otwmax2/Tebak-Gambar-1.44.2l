package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f24158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f24159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f24160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzha f24161d;

    j0(zzha zzhaVar, String str, String str2, String str3) {
        this.f24161d = zzhaVar;
        this.f24158a = str;
        this.f24159b = str2;
        this.f24160c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        this.f24161d.f24735o.a();
        return this.f24161d.f24735o.T().c0(this.f24158a, this.f24159b, this.f24160c);
    }
}
