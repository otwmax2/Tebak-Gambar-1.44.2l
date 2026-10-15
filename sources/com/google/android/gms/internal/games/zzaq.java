package com.google.android.gms.internal.games;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesClient;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaq extends zzac implements GamesClient {
    public zzaq(Activity activity, Games.GamesOptions gamesOptions) {
        super(activity, gamesOptions);
    }

    @Override // com.google.android.gms.games.GamesClient
    public final Task<Void> d(final View view) {
        return z(new RemoteCall(view) { // from class: com.google.android.gms.internal.games.zzas

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final View f23034a;

            {
                this.f23034a = view;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void a(Object obj, Object obj2) {
                ((com.google.android.gms.games.internal.zzf) obj).y0(this.f23034a);
                ((TaskCompletionSource) obj2).c(null);
            }
        });
    }
}
