package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class m0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f24209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f24210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f24211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzha f24212d;

    m0(zzha zzhaVar, String str, String str2, String str3) {
        this.f24212d = zzhaVar;
        this.f24209a = str;
        this.f24210b = str2;
        this.f24211c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        this.f24212d.f24735o.a();
        return this.f24212d.f24735o.T().Z(this.f24209a, this.f24210b, this.f24211c);
    }
}
