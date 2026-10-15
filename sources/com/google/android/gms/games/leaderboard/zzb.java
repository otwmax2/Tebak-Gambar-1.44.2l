package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzb extends DataBufferRef implements LeaderboardVariant {
    zzb(DataHolder dataHolder, int i10) {
        super(dataHolder, i10);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final int G3() {
        return v("collection");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final long J2() {
        if (z("player_rank")) {
            return -1L;
        }
        return w("player_rank");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String N3() {
        return x("top_page_token_next");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String R2() {
        return x("window_page_token_next");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final long S1() {
        if (z("total_scores")) {
            return -1L;
        }
        return w("total_scores");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final int U2() {
        return v("timespan");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String U3() {
        return x("player_score_tag");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String Z() {
        return x("player_display_score");
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return LeaderboardVariantEntity.t(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final boolean g0() {
        return !z("player_raw_score");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final long g3() {
        if (z("player_raw_score")) {
            return -1L;
        }
        return w("player_raw_score");
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return LeaderboardVariantEntity.h(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String i3() {
        return x("player_display_rank");
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ LeaderboardVariant p3() {
        return new LeaderboardVariantEntity(this);
    }

    public final String toString() {
        return LeaderboardVariantEntity.v(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String u2() {
        return x("window_page_token_prev");
    }
}
