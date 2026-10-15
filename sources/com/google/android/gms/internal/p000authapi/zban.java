package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zban extends zbag {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21275o;

    zban(zbao zbaoVar, TaskCompletionSource taskCompletionSource) {
        this.f21275o = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbah
    public final void i9(Status status, SavePasswordResult savePasswordResult) throws RemoteException {
        TaskUtil.b(status, savePasswordResult, this.f21275o);
    }
}
