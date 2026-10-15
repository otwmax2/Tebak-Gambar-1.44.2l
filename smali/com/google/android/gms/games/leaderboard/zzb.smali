###### Class com.google.android.gms.games.leaderboard.zzb (com.google.android.gms.games.leaderboard.zzb)
.class public final Lcom/google/android/gms/games/leaderboard/zzb;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final G3()I
    .registers 2

    const-string v0, "collection"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final J2()J
    .registers 3

    const-string v0, "player_rank"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final N3()Ljava/lang/String;
    .registers 2

    const-string v0, "top_page_token_next"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final R2()Ljava/lang/String;
    .registers 2

    const-string v0, "window_page_token_next"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S1()J
    .registers 3

    const-string v0, "total_scores"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final U2()I
    .registers 2

    const-string v0, "timespan"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final U3()Ljava/lang/String;
    .registers 2

    const-string v0, "player_score_tag"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    const-string v0, "player_display_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->t(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g0()Z
    .registers 2

    const-string v0, "player_raw_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final g3()J
    .registers 3

    const-string v0, "player_raw_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->h(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

    move-result v0

    return v0
.end method

.method public final i3()Ljava/lang/String;
    .registers 2

    const-string v0, "player_display_rank"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic p3()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->v(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u2()Ljava/lang/String;
    .registers 2

    const-string v0, "window_page_token_prev"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
