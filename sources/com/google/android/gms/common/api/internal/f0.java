package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class f0 extends TaskApiCall {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ TaskApiCall.Builder f7102d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    f0(TaskApiCall.Builder builder, Feature[] featureArr, boolean z10, int i10) {
        super(featureArr, z10, i10);
        this.f7102d = builder;
    }

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final void b(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        this.f7102d.f7060a.a(anyClient, taskCompletionSource);
    }
}
