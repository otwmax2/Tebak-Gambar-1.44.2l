###### Class com.google.android.gms.games.GameRef (com.google.android.gms.games.GameRef)
.class public final Lcom/google/android/gms/games/GameRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/Game;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final C0()Z
    .registers 2

    const-string v0, "muted"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final I0()Ljava/lang/String;
    .registers 2

    const-string v0, "primary_category"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J1()Ljava/lang/String;
    .registers 2

    const-string v0, "theme_color"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final O()Landroid/net/Uri;
    .registers 2

    const-string v0, "game_hi_res_image_uri"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final Q3()Landroid/net/Uri;
    .registers 2

    const-string v0, "featured_image_uri"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final U1()Z
    .registers 2

    const-string v0, "snapshots_enabled"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final a()Z
    .registers 2

    const-string v0, "play_enabled_game"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a1()Ljava/lang/String;
    .registers 2

    const-string v0, "developer_name"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const-string v0, "installed"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    const-string v0, "package_name"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .registers 2

    const-string v0, "identity_sharing_confirmed"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d1()I
    .registers 2

    const-string v0, "leaderboard_count"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .registers 2

    const-string v0, "real_time_support"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->b4(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .registers 2

    const-string v0, "turn_based_support"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroid/net/Uri;
    .registers 2

    const-string v0, "game_icon_image_uri"

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

    const-string v0, "game_description"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFeaturedImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "featured_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHiResImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "game_hi_res_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "game_icon_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->a4(Lcom/google/android/gms/games/Game;)I

    move-result v0

    return v0
.end method

.method public final m2()I
    .registers 2

    const-string v0, "achievement_total_count"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final n2()Ljava/lang/String;
    .registers 2

    const-string v0, "secondary_category"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic p3()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    const-string v0, "display_name"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t3()Z
    .registers 2

    const-string v0, "gamepad_support"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->e4(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameRef;->p3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Game;

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
