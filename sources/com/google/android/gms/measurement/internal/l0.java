package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f24192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f24193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f24194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzha f24195d;

    l0(zzha zzhaVar, String str, String str2, String str3) {
        this.f24195d = zzhaVar;
        this.f24192a = str;
        this.f24193b = str2;
        this.f24194c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        this.f24195d.f24735o.a();
        return this.f24195d.f24735o.T().Z(this.f24192a, this.f24193b, this.f24194c);
    }
}
