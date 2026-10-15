package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class f implements PendingResult.StatusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PendingResult f7442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f7443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ PendingResultUtil.ResultConverter f7444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zas f7445d;

    f(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, PendingResultUtil.ResultConverter resultConverter, zas zasVar) {
        this.f7442a = pendingResult;
        this.f7443b = taskCompletionSource;
        this.f7444c = resultConverter;
        this.f7445d = zasVar;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void a(Status status) {
        if (!status.a4()) {
            this.f7443b.b(ApiExceptionUtil.a(status));
        } else {
            this.f7443b.c(this.f7444c.a(this.f7442a.d(0L, TimeUnit.MILLISECONDS)));
        }
    }
}
