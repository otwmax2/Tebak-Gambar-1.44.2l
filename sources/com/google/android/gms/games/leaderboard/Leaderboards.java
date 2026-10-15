package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface Leaderboards {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface LeaderboardMetadataResult extends Releasable, Result {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface LoadPlayerScoreResult extends Result {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface LoadScoresResult extends Releasable, Result {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Deprecated
    public interface SubmitScoreResult extends Releasable, Result {
    }
}
