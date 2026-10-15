package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zbau extends zbx {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f21286o;

    zbau(zbay zbayVar, TaskCompletionSource taskCompletionSource) {
        this.f21286o = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p000authapi.zby
    public final void n3(Status status, BeginSignInResult beginSignInResult) throws RemoteException {
        TaskUtil.b(status, beginSignInResult, this.f21286o);
    }
}
