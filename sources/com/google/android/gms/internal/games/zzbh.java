package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbh {
    static <ResultT> TaskApiCall<com.google.android.gms.games.internal.zzf, ResultT> a(final RemoteCall<com.google.android.gms.games.internal.zzf, TaskCompletionSource<ResultT>> remoteCall) {
        return TaskApiCall.a().b(new RemoteCall(remoteCall) { // from class: com.google.android.gms.internal.games.zzbg

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final RemoteCall f23044a;

            {
                this.f23044a = remoteCall;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void a(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                try {
                    this.f23044a.a((com.google.android.gms.games.internal.zzf) obj, taskCompletionSource);
                } catch (RemoteException | SecurityException e10) {
                    taskCompletionSource.d(e10);
                }
            }
        }).a();
    }
}
