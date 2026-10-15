package com.google.android.gms.games.leaderboard;

import android.net.Uri;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class LeaderboardRef extends DataBufferRef implements Leaderboard {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f8189r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Game f8190s;

    LeaderboardRef(DataHolder dataHolder, int i10, int i11) {
        super(dataHolder, i10);
        this.f8189r = i11;
        this.f8190s = new GameRef(dataHolder, i10);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final int E1() {
        return v("score_order");
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final String T2() {
        return x("external_leaderboard_id");
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final ArrayList<LeaderboardVariant> W0() {
        ArrayList<LeaderboardVariant> arrayList = new ArrayList<>(this.f8189r);
        for (int i10 = 0; i10 < this.f8189r; i10++) {
            arrayList.add(new zzb(this.f7310o, this.f7311p + i10));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return LeaderboardEntity.t(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final Uri g() {
        return A("board_icon_image_uri");
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final String getIconImageUrl() {
        return x("board_icon_image_url");
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return LeaderboardEntity.h(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ Leaderboard p3() {
        return new LeaderboardEntity(this);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final String s() {
        return x("name");
    }

    public final String toString() {
        return LeaderboardEntity.v(this);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final Game u() {
        return this.f8190s;
    }
}
