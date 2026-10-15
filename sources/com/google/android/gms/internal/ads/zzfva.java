package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfva {
    public static zzfuu a(ExecutorService executorService) {
        if (executorService instanceof zzfuu) {
            return (zzfuu) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new zzfuz((ScheduledExecutorService) executorService) : new zzfuw(executorService);
    }

    public static Executor b() {
        return zzftx.INSTANCE;
    }

    static Executor c(Executor executor, zzfsx zzfsxVar) {
        Objects.requireNonNull(executor);
        return executor == zzftx.INSTANCE ? executor : new zzfuv(executor, zzfsxVar);
    }
}
