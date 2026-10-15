package com.google.android.gms.games;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface LeaderboardsClient {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public static class LeaderboardScores implements Releasable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Leaderboard f7992o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final LeaderboardScoreBuffer f7993p;

        public LeaderboardScores(Leaderboard leaderboard, LeaderboardScoreBuffer leaderboardScoreBuffer) {
            this.f7992o = leaderboard;
            this.f7993p = leaderboardScoreBuffer;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void c() {
            LeaderboardScoreBuffer leaderboardScoreBuffer = this.f7993p;
            if (leaderboardScoreBuffer != null) {
                leaderboardScoreBuffer.c();
            }
        }
    }
}
