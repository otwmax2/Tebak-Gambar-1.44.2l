package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class NumberedThreadFactory implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f7665b = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ThreadFactory f7666c = Executors.defaultThreadFactory();

    @KeepForSdk
    public NumberedThreadFactory(String str) {
        Preconditions.l(str, "Name must not be null");
        this.f7664a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f7666c.newThread(new a(runnable, 0));
        threadNewThread.setName(this.f7664a + "[" + this.f7665b.getAndIncrement() + "]");
        return threadNewThread;
    }
}
