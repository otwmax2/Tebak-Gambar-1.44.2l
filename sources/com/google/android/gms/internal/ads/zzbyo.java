package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbyo implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f11573a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f11574b;

    zzbyo(String str) {
        this.f11574b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AdWorker(" + this.f11574b + ") #" + this.f11573a.getAndIncrement());
    }
}
