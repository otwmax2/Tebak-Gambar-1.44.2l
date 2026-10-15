package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbe<TResult> extends TaskApiCall<com.google.android.gms.games.internal.zzf, TResult> {
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        try {
            f((com.google.android.gms.games.internal.zzf) anyClient, taskCompletionSource);
        } catch (RemoteException | SecurityException e10) {
            taskCompletionSource.d(e10);
        }
    }

    protected abstract void f(com.google.android.gms.games.internal.zzf zzfVar, TaskCompletionSource<TResult> taskCompletionSource) throws RemoteException;
}
