package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zbav extends IStatusCallback.Stub {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21287o;

    zbav(zbay zbayVar, TaskCompletionSource taskCompletionSource) {
        this.f21287o = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void l4(Status status) throws RemoteException {
        TaskUtil.a(status, this.f21287o);
    }
}
