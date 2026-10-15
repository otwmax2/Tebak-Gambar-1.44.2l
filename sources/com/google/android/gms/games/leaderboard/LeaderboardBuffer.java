package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.EntityBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class LeaderboardBuffer extends EntityBuffer<Leaderboard> {
    public LeaderboardBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.EntityBuffer
    protected /* synthetic */ Leaderboard i(int i10, int i11) {
        return new LeaderboardRef(this.f7300o, i10, i11);
    }

    @Override // com.google.android.gms.common.data.EntityBuffer
    protected String j() {
        return "external_leaderboard_id";
    }
}
