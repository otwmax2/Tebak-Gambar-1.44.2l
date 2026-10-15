package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class Batch extends BasePendingResult<BatchResult> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final PendingResult<?>[] f6945r;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    public static final class Builder {
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.PendingResult
    public void e() {
        super.e();
        for (PendingResult<?> pendingResult : this.f6945r) {
            pendingResult.e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public BatchResult f(Status status) {
        return new BatchResult(status, this.f6945r);
    }
}
