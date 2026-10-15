package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class OptionalPendingResultImpl<R extends Result> extends OptionalPendingResult<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BasePendingResult<R> f7050a;

    public OptionalPendingResultImpl(PendingResult<R> pendingResult) {
        this.f7050a = (BasePendingResult) pendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void c(PendingResult.StatusListener statusListener) {
        this.f7050a.c(statusListener);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R d(long j10, TimeUnit timeUnit) {
        return (R) this.f7050a.d(j10, timeUnit);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void e() {
        this.f7050a.e();
    }
}
