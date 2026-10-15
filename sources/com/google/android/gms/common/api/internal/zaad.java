package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<BasePendingResult<?>, Boolean> f7156a = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<TaskCompletionSource<?>, Boolean> f7157b = Collections.synchronizedMap(new WeakHashMap());

    private final void h(boolean z10, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (this.f7156a) {
            map = new HashMap(this.f7156a);
        }
        synchronized (this.f7157b) {
            map2 = new HashMap(this.f7157b);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z10 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).g(status);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z10 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).d(new ApiException(status));
            }
        }
    }

    final void c(BasePendingResult<? extends Result> basePendingResult, boolean z10) {
        this.f7156a.put(basePendingResult, Boolean.valueOf(z10));
        basePendingResult.c(new b(this, basePendingResult));
    }

    final <TResult> void d(TaskCompletionSource<TResult> taskCompletionSource, boolean z10) {
        this.f7157b.put(taskCompletionSource, Boolean.valueOf(z10));
        taskCompletionSource.a().c(new c(this, taskCompletionSource));
    }

    final void e(int i10, String str) {
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i10 == 1) {
            sb.append(" due to service disconnection.");
        } else if (i10 == 3) {
            sb.append(" due to dead object exception.");
        }
        if (str != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(str);
        }
        h(true, new Status(20, sb.toString()));
    }

    public final void f() {
        h(false, GoogleApiManager.F);
    }

    final boolean g() {
        return (this.f7156a.isEmpty() && this.f7157b.isEmpty()) ? false : true;
    }
}
