package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class TaskUtil {
    @KeepForSdk
    public static void a(Status status, TaskCompletionSource<Void> taskCompletionSource) {
        b(status, null, taskCompletionSource);
    }

    @KeepForSdk
    public static <TResult> void b(Status status, TResult tresult, TaskCompletionSource<TResult> taskCompletionSource) {
        if (status.a4()) {
            taskCompletionSource.c(tresult);
        } else {
            taskCompletionSource.b(new ApiException(status));
        }
    }

    @KeepForSdk
    public static <ResultT> boolean c(Status status, ResultT resultt, TaskCompletionSource<ResultT> taskCompletionSource) {
        return status.a4() ? taskCompletionSource.e(resultt) : taskCompletionSource.d(new ApiException(status));
    }
}
