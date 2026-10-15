package com.google.android.gms.internal.games;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.games.Games;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzac extends GoogleApi<Games.GamesOptions> {
    public zzac(Activity activity, Games.GamesOptions gamesOptions) {
        super(activity, Games.f7954g, gamesOptions, GoogleApi.Settings.f6960c);
    }

    private static <ResultT> TaskApiCall<com.google.android.gms.games.internal.zzf, ResultT> A(final RemoteCall<com.google.android.gms.games.internal.zzf, TaskCompletionSource<ResultT>> remoteCall) {
        return TaskApiCall.a().b(new RemoteCall(remoteCall) { // from class: com.google.android.gms.internal.games.zzaf

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final RemoteCall f23021a;

            {
                this.f23021a = remoteCall;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void a(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                try {
                    this.f23021a.a((com.google.android.gms.games.internal.zzf) obj, taskCompletionSource);
                } catch (RemoteException | SecurityException e10) {
                    taskCompletionSource.d(e10);
                }
            }
        }).a();
    }

    @Override // com.google.android.gms.common.api.GoogleApi
    protected ClientSettings.Builder h() {
        ClientSettings.Builder builderH = super.h();
        return (q() == null || q().f7975y == null) ? builderH : builderH.b(q().f7975y);
    }

    protected final <ResultT> Task<ResultT> z(RemoteCall<com.google.android.gms.games.internal.zzf, TaskCompletionSource<ResultT>> remoteCall) {
        return (Task<ResultT>) o(A(remoteCall));
    }
}
