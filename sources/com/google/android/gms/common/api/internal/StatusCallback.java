package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class StatusCallback extends IStatusCallback.Stub {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @KeepForSdk
    private final BaseImplementation.ResultHolder<Status> f7056o;

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    @KeepForSdk
    public void l4(Status status) {
        this.f7056o.b(status);
    }
}
