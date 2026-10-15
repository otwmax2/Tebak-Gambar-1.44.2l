package com.google.android.gms.games.leaderboard;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.games.Player;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public interface LeaderboardScore extends Freezable<LeaderboardScore> {
    String K0();

    String M2();

    Uri X2();

    String Z2();

    Player c0();

    long g1();

    @KeepName
    @Deprecated
    String getScoreHolderHiResImageUrl();

    @KeepName
    @Deprecated
    String getScoreHolderIconImageUrl();

    long l1();

    Uri n3();

    long o1();

    String z3();
}
