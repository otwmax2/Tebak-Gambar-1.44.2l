package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class a<R extends Result> extends BasePendingResult<R> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final R f6985r;

    public a(GoogleApiClient googleApiClient, R r10) {
        super(googleApiClient);
        this.f6985r = r10;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final R f(Status status) {
        return this.f6985r;
    }
}
