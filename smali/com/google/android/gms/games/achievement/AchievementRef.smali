###### Class com.google.android.gms.games.achievement.AchievementRef (com.google.android.gms.games.achievement.AchievementRef)
.class public final Lcom/google/android/gms/games/achievement/AchievementRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final D0()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    const-string v0, "formatted_current_steps"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P()F
    .registers 3

    const-string v0, "rarity_percent"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_14

    .line 3
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->t(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_14
    :goto_14
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final R()Lcom/google/android/gms/games/Player;
    .registers 4

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public final W2()J
    .registers 3

    const-string v0, "last_updated_timestamp"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Y()Landroid/net/Uri;
    .registers 2

    const-string v0, "unlocked_icon_image_uri"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final Y1()Ljava/lang/String;
    .registers 2

    const-string v0, "external_achievement_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/achievement/AchievementEntity;->W3(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f0()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    const-string v0, "formatted_total_steps"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g2()Landroid/net/Uri;
    .registers 2

    const-string v0, "revealed_icon_image_uri"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_game_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "description"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    const-string v0, "name"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRevealedImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "revealed_icon_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .registers 2

    const-string v0, "state"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getUnlockedImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "unlocked_icon_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->V3(Lcom/google/android/gms/games/achievement/Achievement;)I

    move-result v0

    return v0
.end method

.method public final j3()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    const-string v0, "total_steps"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final o()I
    .registers 2

    const-string v0, "type"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final synthetic p3()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;-><init>(Lcom/google/android/gms/games/achievement/Achievement;)V

    return-object v0
.end method

.method public final r2()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    const-string v0, "current_steps"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final t1()J
    .registers 3

    const-string v0, "instance_xp_value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_14

    .line 3
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_14
    :goto_14
    const-string v0, "definition_xp_value"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->X3(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->p3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/Achievement;

    check-cast v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/achievement/AchievementEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
