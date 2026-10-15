package com.google.android.gms.games.leaderboard;

import android.net.Uri;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class LeaderboardScoreRef extends DataBufferRef implements LeaderboardScore {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final PlayerRef f8204r;

    public LeaderboardScoreRef(DataHolder dataHolder, int i10) {
        super(dataHolder, i10);
        this.f8204r = new PlayerRef(dataHolder, i10);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String K0() {
        return x("score_tag");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String M2() {
        return z("external_player_id") ? x("default_display_name") : this.f8204r.s();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final Uri X2() {
        return z("external_player_id") ? A("default_display_image_uri") : this.f8204r.g();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String Z2() {
        return x("display_score");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final Player c0() {
        if (z("external_player_id")) {
            return null;
        }
        return this.f8204r;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return LeaderboardScoreEntity.t(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final long g1() {
        return w("achieved_timestamp");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String getScoreHolderHiResImageUrl() {
        if (z("external_player_id")) {
            return null;
        }
        return this.f8204r.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String getScoreHolderIconImageUrl() {
        return z("external_player_id") ? x("default_display_image_url") : this.f8204r.getIconImageUrl();
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return LeaderboardScoreEntity.h(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final long l1() {
        return w("raw_score");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final Uri n3() {
        if (z("external_player_id")) {
            return null;
        }
        return this.f8204r.O();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final long o1() {
        return w("rank");
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ LeaderboardScore p3() {
        return new LeaderboardScoreEntity(this);
    }

    public final String toString() {
        return LeaderboardScoreEntity.v(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String z3() {
        return x("display_rank");
    }
}
