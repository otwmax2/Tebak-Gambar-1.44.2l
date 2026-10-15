package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbzj implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f11610a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f11611b;

    zzbzj(String str) {
        this.f11611b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AdWorker(" + this.f11611b + ") #" + this.f11610a.getAndIncrement());
    }
}
