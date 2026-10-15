package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ResultTransform<R extends Result, S extends Result> {
    public Status a(Status status) {
        return status;
    }

    public abstract PendingResult<S> b(R r10);
}
