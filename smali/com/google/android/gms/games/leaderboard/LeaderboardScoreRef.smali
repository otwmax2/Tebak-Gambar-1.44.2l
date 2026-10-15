###### Class com.google.android.gms.games.leaderboard.LeaderboardScoreRef (com.google.android.gms.games.leaderboard.LeaderboardScoreRef)
.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardScore;


# instance fields
.field private final r:Lcom/google/android/gms/games/PlayerRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->r:Lcom/google/android/gms/games/PlayerRef;

    return-void
.end method


# virtual methods
.method public final K0()Ljava/lang/String;
    .registers 2

    const-string v0, "score_tag"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final M2()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_name"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->r:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final X2()Landroid/net/Uri;
    .registers 2

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_image_uri"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->r:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->g()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final Z2()Ljava/lang/String;
    .registers 2

    const-string v0, "display_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c0()Lcom/google/android/gms/games/Player;
    .registers 2

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->r:Lcom/google/android/gms/games/PlayerRef;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->t(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g1()J
    .registers 3

    const-string v0, "achieved_timestamp"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getScoreHolderHiResImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->r:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreHolderIconImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_image_url"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->r:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->h(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I

    move-result v0

    return v0
.end method

.method public final l1()J
    .registers 3

    const-string v0, "raw_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n3()Landroid/net/Uri;
    .registers 2

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->r:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->O()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final o1()J
    .registers 3

    const-string v0, "rank"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic p3()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->v(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z3()Ljava/lang/String;
    .registers 2

    const-string v0, "display_rank"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
