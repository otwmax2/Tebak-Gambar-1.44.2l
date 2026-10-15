package com.google.android.gms.games.leaderboard;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.games.Game;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public interface Leaderboard extends Freezable<Leaderboard> {
    int E1();

    String T2();

    ArrayList<LeaderboardVariant> W0();

    Uri g();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    String s();

    Game u();
}
