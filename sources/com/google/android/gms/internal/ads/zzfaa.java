package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfaa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    static Task f17789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    public static AppSetIdClient f17790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f17791c = new Object();

    public static Task a(Context context) {
        Task task;
        b(context, false);
        synchronized (f17791c) {
            task = f17789a;
        }
        return task;
    }

    public static void b(Context context, boolean z10) {
        synchronized (f17791c) {
            if (f17790b == null) {
                f17790b = AppSet.a(context);
            }
            Task task = f17789a;
            if (task == null || ((task.s() && !f17789a.t()) || (z10 && f17789a.s()))) {
                f17789a = ((AppSetIdClient) Preconditions.l(f17790b, "the appSetIdClient shouldn't be null")).a();
            }
        }
    }
}
