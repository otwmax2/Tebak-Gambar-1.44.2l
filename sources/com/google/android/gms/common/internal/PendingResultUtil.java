package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class PendingResultUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zas f7418a = new e();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public interface ResultConverter<R extends Result, T> {
        @KeepForSdk
        T a(R r10);
    }

    @KeepForSdk
    public static <R extends Result, T> Task<T> a(PendingResult<R> pendingResult, ResultConverter<R, T> resultConverter) {
        zas zasVar = f7418a;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.c(new f(pendingResult, taskCompletionSource, resultConverter, zasVar));
        return taskCompletionSource.a();
    }

    @KeepForSdk
    public static <R extends Result> Task<Void> b(PendingResult<R> pendingResult) {
        return a(pendingResult, new g());
    }
}
