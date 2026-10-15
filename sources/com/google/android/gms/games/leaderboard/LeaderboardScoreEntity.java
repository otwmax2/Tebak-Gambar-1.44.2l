package com.google.android.gms.games.leaderboard;

import android.net.Uri;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
public final class LeaderboardScoreEntity implements LeaderboardScore {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f8192o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f8193p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f8194q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f8195r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final long f8196s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final String f8197t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Uri f8198u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Uri f8199v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final PlayerEntity f8200w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final String f8201x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final String f8202y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f8203z;

    public LeaderboardScoreEntity(LeaderboardScore leaderboardScore) {
        this.f8192o = leaderboardScore.o1();
        this.f8193p = (String) Preconditions.k(leaderboardScore.z3());
        this.f8194q = (String) Preconditions.k(leaderboardScore.Z2());
        this.f8195r = leaderboardScore.l1();
        this.f8196s = leaderboardScore.g1();
        this.f8197t = leaderboardScore.M2();
        this.f8198u = leaderboardScore.X2();
        this.f8199v = leaderboardScore.n3();
        Player playerC0 = leaderboardScore.c0();
        this.f8200w = playerC0 == null ? null : (PlayerEntity) playerC0.p3();
        this.f8201x = leaderboardScore.K0();
        this.f8202y = leaderboardScore.getScoreHolderIconImageUrl();
        this.f8203z = leaderboardScore.getScoreHolderHiResImageUrl();
    }

    static int h(LeaderboardScore leaderboardScore) {
        return Objects.c(Long.valueOf(leaderboardScore.o1()), leaderboardScore.z3(), Long.valueOf(leaderboardScore.l1()), leaderboardScore.Z2(), Long.valueOf(leaderboardScore.g1()), leaderboardScore.M2(), leaderboardScore.X2(), leaderboardScore.n3(), leaderboardScore.c0());
    }

    static boolean t(LeaderboardScore leaderboardScore, Object obj) {
        if (!(obj instanceof LeaderboardScore)) {
            return false;
        }
        if (leaderboardScore == obj) {
            return true;
        }
        LeaderboardScore leaderboardScore2 = (LeaderboardScore) obj;
        return Objects.b(Long.valueOf(leaderboardScore2.o1()), Long.valueOf(leaderboardScore.o1())) && Objects.b(leaderboardScore2.z3(), leaderboardScore.z3()) && Objects.b(Long.valueOf(leaderboardScore2.l1()), Long.valueOf(leaderboardScore.l1())) && Objects.b(leaderboardScore2.Z2(), leaderboardScore.Z2()) && Objects.b(Long.valueOf(leaderboardScore2.g1()), Long.valueOf(leaderboardScore.g1())) && Objects.b(leaderboardScore2.M2(), leaderboardScore.M2()) && Objects.b(leaderboardScore2.X2(), leaderboardScore.X2()) && Objects.b(leaderboardScore2.n3(), leaderboardScore.n3()) && Objects.b(leaderboardScore2.c0(), leaderboardScore.c0()) && Objects.b(leaderboardScore2.K0(), leaderboardScore.K0());
    }

    static String v(LeaderboardScore leaderboardScore) {
        return Objects.d(leaderboardScore).a("Rank", Long.valueOf(leaderboardScore.o1())).a("DisplayRank", leaderboardScore.z3()).a("Score", Long.valueOf(leaderboardScore.l1())).a("DisplayScore", leaderboardScore.Z2()).a("Timestamp", Long.valueOf(leaderboardScore.g1())).a("DisplayName", leaderboardScore.M2()).a("IconImageUri", leaderboardScore.X2()).a("IconImageUrl", leaderboardScore.getScoreHolderIconImageUrl()).a("HiResImageUri", leaderboardScore.n3()).a("HiResImageUrl", leaderboardScore.getScoreHolderHiResImageUrl()).a("Player", leaderboardScore.c0() == null ? null : leaderboardScore.c0()).a("ScoreTag", leaderboardScore.K0()).toString();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String K0() {
        return this.f8201x;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String M2() {
        PlayerEntity playerEntity = this.f8200w;
        return playerEntity == null ? this.f8197t : playerEntity.s();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final Uri X2() {
        PlayerEntity playerEntity = this.f8200w;
        return playerEntity == null ? this.f8198u : playerEntity.g();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String Z2() {
        return this.f8194q;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final Player c0() {
        return this.f8200w;
    }

    public final boolean equals(Object obj) {
        return t(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final long g1() {
        return this.f8196s;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String getScoreHolderHiResImageUrl() {
        PlayerEntity playerEntity = this.f8200w;
        return playerEntity == null ? this.f8203z : playerEntity.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String getScoreHolderIconImageUrl() {
        PlayerEntity playerEntity = this.f8200w;
        return playerEntity == null ? this.f8202y : playerEntity.getIconImageUrl();
    }

    public final int hashCode() {
        return h(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final long l1() {
        return this.f8195r;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final Uri n3() {
        PlayerEntity playerEntity = this.f8200w;
        return playerEntity == null ? this.f8199v : playerEntity.O();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final long o1() {
        return this.f8192o;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ LeaderboardScore p3() {
        return this;
    }

    public final String toString() {
        return v(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public final String z3() {
        return this.f8193p;
    }
}
