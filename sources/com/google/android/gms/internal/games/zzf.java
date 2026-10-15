package com.google.android.gms.internal.games;

import android.app.Activity;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.games.AchievementsClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzf extends zzac implements AchievementsClient {
    public zzf(Activity activity, Games.GamesOptions gamesOptions) {
        super(activity, gamesOptions);
    }

    @Override // com.google.android.gms.games.AchievementsClient
    public final Task<Intent> b() {
        return k(zzbh.a(zze.f23162a));
    }

    @Override // com.google.android.gms.games.AchievementsClient
    public final void e(final String str) {
        o(zzbh.a(new RemoteCall(str) { // from class: com.google.android.gms.internal.games.zzi

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final String f23230a;

            {
                this.f23230a = str;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void a(Object obj, Object obj2) throws RemoteException {
                ((com.google.android.gms.games.internal.zzf) obj).G1(null, this.f23230a);
            }
        }));
    }
}
