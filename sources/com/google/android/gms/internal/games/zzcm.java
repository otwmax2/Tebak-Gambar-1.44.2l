package com.google.android.gms.internal.games;

import android.app.Activity;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.PlayersClient;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcm extends zzac implements PlayersClient {
    public zzcm(Activity activity, Games.GamesOptions gamesOptions) {
        super(activity, gamesOptions);
    }

    @Override // com.google.android.gms.games.PlayersClient
    public final Task<String> f() {
        return k(zzbh.a(zzcp.f23106a));
    }
}
