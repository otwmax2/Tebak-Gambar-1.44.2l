package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class k0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f24179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f24180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f24181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzha f24182d;

    k0(zzha zzhaVar, String str, String str2, String str3) {
        this.f24182d = zzhaVar;
        this.f24179a = str;
        this.f24180b = str2;
        this.f24181c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        this.f24182d.f24735o.a();
        return this.f24182d.f24735o.T().c0(this.f24179a, this.f24180b, this.f24181c);
    }
}
