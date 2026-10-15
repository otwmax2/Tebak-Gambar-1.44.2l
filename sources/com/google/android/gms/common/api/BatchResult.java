package com.google.android.gms.common.api;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class BatchResult implements Result {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f6946o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final PendingResult<?>[] f6947p;

    BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.f6946o = status;
        this.f6947p = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status V2() {
        return this.f6946o;
    }
}
