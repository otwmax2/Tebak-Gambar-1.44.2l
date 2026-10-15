package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class NamedThreadFactory implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadFactory f7663b = Executors.defaultThreadFactory();

    @KeepForSdk
    public NamedThreadFactory(String str) {
        Preconditions.l(str, "Name must not be null");
        this.f7662a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f7663b.newThread(new a(runnable, 0));
        threadNewThread.setName(this.f7662a);
        return threadNewThread;
    }
}
