package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class LeaderboardScoreBuffer extends AbstractDataBuffer<LeaderboardScore> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zza f8191p;

    public LeaderboardScoreBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.f8191p = new zza(dataHolder.Z3());
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public LeaderboardScore get(int i10) {
        return new LeaderboardScoreRef(this.f7300o, i10);
    }

    public final zza i() {
        return this.f8191p;
    }
}
