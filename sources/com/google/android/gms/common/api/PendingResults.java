package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.OptionalPendingResultImpl;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class PendingResults {
    @KeepForSdk
    private PendingResults() {
    }

    @KeepForSdk
    public static <R extends Result> PendingResult<R> a(R r10, GoogleApiClient googleApiClient) {
        Preconditions.l(r10, "Result must not be null");
        Preconditions.b(!r10.V2().a4(), "Status code must not be SUCCESS");
        a aVar = new a(googleApiClient, r10);
        aVar.k(r10);
        return aVar;
    }

    @KeepForSdk
    public static <R extends Result> OptionalPendingResult<R> b(R r10, GoogleApiClient googleApiClient) {
        Preconditions.l(r10, "Result must not be null");
        b bVar = new b(googleApiClient);
        bVar.k(r10);
        return new OptionalPendingResultImpl(bVar);
    }

    @KeepForSdk
    public static PendingResult<Status> c(Status status, GoogleApiClient googleApiClient) {
        Preconditions.l(status, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(googleApiClient);
        statusPendingResult.k(status);
        return statusPendingResult;
    }
}
