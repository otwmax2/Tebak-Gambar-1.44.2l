###### Class com.google.android.gms.games.internal.player.zzd (com.google.android.gms.games.internal.player.zzd)
.class public final Lcom/google/android/gms/games/internal/player/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final H:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final I:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "most_recent_game_name"

    const-string v3, "most_recent_external_game_id"

    const-string v4, "is_profile_visible"

    const-string v5, "has_all_public_acls"

    const-string v6, "player_title"

    const-string v7, "last_level_up_timestamp"

    const-string v8, "next_level_max_xp"

    const-string v9, "next_level"

    const-string v10, "current_level_max_xp"

    const-string v11, "current_level_min_xp"

    const-string v12, "current_level"

    const-string v13, "current_xp_total"

    const-string v14, "played_with_timestamp"

    const-string v15, "is_in_circles"

    move-object/from16 p1, v2

    const-string v2, "last_updated"

    move-object/from16 v16, v3

    const-string v3, "profile_hi_res_image_url"

    move-object/from16 v17, v4

    const-string v4, "profile_hi_res_image_uri"

    move-object/from16 v18, v5

    const-string v5, "profile_icon_image_url"

    move-object/from16 v19, v6

    const-string v6, "profile_icon_image_uri"

    move-object/from16 v20, v7

    const-string v7, "profile_name"

    move-object/from16 v21, v8

    const-string v8, "external_player_id"

    if-eqz v1, :cond_d0

    .line 3
    iput-object v8, v0, Lcom/google/android/gms/games/internal/player/zzd;->a:Ljava/lang/String;

    .line 4
    iput-object v7, v0, Lcom/google/android/gms/games/internal/player/zzd;->b:Ljava/lang/String;

    .line 5
    iput-object v6, v0, Lcom/google/android/gms/games/internal/player/zzd;->c:Ljava/lang/String;

    .line 6
    iput-object v5, v0, Lcom/google/android/gms/games/internal/player/zzd;->d:Ljava/lang/String;

    .line 7
    iput-object v4, v0, Lcom/google/android/gms/games/internal/player/zzd;->e:Ljava/lang/String;

    .line 8
    iput-object v3, v0, Lcom/google/android/gms/games/internal/player/zzd;->f:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->g:Ljava/lang/String;

    .line 10
    iput-object v15, v0, Lcom/google/android/gms/games/internal/player/zzd;->h:Ljava/lang/String;

    .line 11
    iput-object v14, v0, Lcom/google/android/gms/games/internal/player/zzd;->i:Ljava/lang/String;

    .line 12
    iput-object v13, v0, Lcom/google/android/gms/games/internal/player/zzd;->j:Ljava/lang/String;

    .line 13
    iput-object v12, v0, Lcom/google/android/gms/games/internal/player/zzd;->k:Ljava/lang/String;

    .line 14
    iput-object v11, v0, Lcom/google/android/gms/games/internal/player/zzd;->l:Ljava/lang/String;

    .line 15
    iput-object v10, v0, Lcom/google/android/gms/games/internal/player/zzd;->m:Ljava/lang/String;

    .line 16
    iput-object v9, v0, Lcom/google/android/gms/games/internal/player/zzd;->n:Ljava/lang/String;

    move-object/from16 v1, v21

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->o:Ljava/lang/String;

    move-object/from16 v1, v20

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->p:Ljava/lang/String;

    move-object/from16 v1, v19

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->q:Ljava/lang/String;

    move-object/from16 v1, v18

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->r:Ljava/lang/String;

    move-object/from16 v1, v17

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->s:Ljava/lang/String;

    move-object/from16 v1, v16

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->t:Ljava/lang/String;

    move-object/from16 v1, p1

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->u:Ljava/lang/String;

    const-string v1, "most_recent_activity_timestamp"

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->v:Ljava/lang/String;

    const-string v1, "most_recent_game_icon_uri"

    .line 25
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->w:Ljava/lang/String;

    const-string v1, "most_recent_game_hi_res_uri"

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->x:Ljava/lang/String;

    const-string v1, "most_recent_game_featured_uri"

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->y:Ljava/lang/String;

    const-string v1, "has_debug_access"

    .line 28
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->z:Ljava/lang/String;

    const-string v1, "gamer_tag"

    .line 29
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->A:Ljava/lang/String;

    const-string v1, "real_name"

    .line 30
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->B:Ljava/lang/String;

    const-string v1, "banner_image_landscape_uri"

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->C:Ljava/lang/String;

    const-string v1, "banner_image_landscape_url"

    .line 32
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->D:Ljava/lang/String;

    const-string v1, "banner_image_portrait_uri"

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->E:Ljava/lang/String;

    const-string v1, "banner_image_portrait_url"

    .line 34
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->F:Ljava/lang/String;

    const-string v1, "gamer_friend_status"

    .line 35
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->G:Ljava/lang/String;

    const-string v1, "gamer_friend_update_timestamp"

    .line 36
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->H:Ljava/lang/String;

    const-string v1, "is_muted"

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->I:Ljava/lang/String;

    const-string v1, "total_unlocked_achievements"

    .line 38
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->J:Ljava/lang/String;

    .line 39
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->K:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->L:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->M:Ljava/lang/String;

    const-string v1, "profile_creation_timestamp"

    .line 42
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->N:Ljava/lang/String;

    .line 43
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->O:Ljava/lang/String;

    const-string v1, "friends_list_visibility"

    goto/16 :goto_40d

    :cond_d0
    const-string v1, "null"

    .line 44
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_dd

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_e2

    :cond_dd
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e2
    iput-object v8, v0, Lcom/google/android/gms/games/internal/player/zzd;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_ef

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f4

    :cond_ef
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f4
    iput-object v7, v0, Lcom/google/android/gms/games/internal/player/zzd;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_101

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_106

    :cond_101
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_106
    iput-object v6, v0, Lcom/google/android/gms/games/internal/player/zzd;->c:Ljava/lang/String;

    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_113

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_118

    :cond_113
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_118
    iput-object v5, v0, Lcom/google/android/gms/games/internal/player/zzd;->d:Ljava/lang/String;

    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_125

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_12a

    :cond_125
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_12a
    iput-object v4, v0, Lcom/google/android/gms/games/internal/player/zzd;->e:Ljava/lang/String;

    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_137

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_13c

    :cond_137
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_13c
    iput-object v3, v0, Lcom/google/android/gms/games/internal/player/zzd;->f:Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_149

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14e

    :cond_149
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_14e
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->g:Ljava/lang/String;

    .line 51
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15b

    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_160

    :cond_15b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_160
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->h:Ljava/lang/String;

    .line 52
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16d

    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_172

    :cond_16d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_172
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->i:Ljava/lang/String;

    .line 53
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17f

    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_184

    :cond_17f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_184
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->j:Ljava/lang/String;

    .line 54
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_191

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_196

    :cond_191
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_196
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->k:Ljava/lang/String;

    .line 55
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a3

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a8

    :cond_1a3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a8
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->l:Ljava/lang/String;

    .line 56
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1b5

    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1ba

    :cond_1b5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1ba
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->m:Ljava/lang/String;

    .line 57
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1c7

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1cc

    :cond_1c7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1cc
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->n:Ljava/lang/String;

    .line 58
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1db

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e0

    :cond_1db
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1e0
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->o:Ljava/lang/String;

    .line 59
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1ef

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f4

    :cond_1ef
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f4
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->p:Ljava/lang/String;

    .line 60
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_203

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_208

    :cond_203
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_208
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->q:Ljava/lang/String;

    .line 61
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_217

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21c

    :cond_217
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_21c
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->r:Ljava/lang/String;

    .line 62
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22b

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_230

    :cond_22b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_230
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->s:Ljava/lang/String;

    .line 63
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23f

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_244

    :cond_23f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_244
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->t:Ljava/lang/String;

    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_253

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_258

    :cond_253
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_258
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->u:Ljava/lang/String;

    const-string v2, "most_recent_activity_timestamp"

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_267

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26c

    :cond_267
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_26c
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->v:Ljava/lang/String;

    const-string v2, "most_recent_game_icon_uri"

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_27b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_280

    :cond_27b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_280
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->w:Ljava/lang/String;

    const-string v2, "most_recent_game_hi_res_uri"

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_28f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_294

    :cond_28f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_294
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->x:Ljava/lang/String;

    const-string v2, "most_recent_game_featured_uri"

    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2a3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a8

    :cond_2a3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2a8
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->y:Ljava/lang/String;

    const-string v2, "has_debug_access"

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2b7

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2bc

    :cond_2b7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2bc
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->z:Ljava/lang/String;

    const-string v2, "gamer_tag"

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2cb

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d0

    :cond_2cb
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2d0
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->A:Ljava/lang/String;

    const-string v2, "real_name"

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2df

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e4

    :cond_2df
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e4
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->B:Ljava/lang/String;

    const-string v2, "banner_image_landscape_uri"

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2f3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f8

    :cond_2f3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2f8
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->C:Ljava/lang/String;

    const-string v2, "banner_image_landscape_url"

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_307

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_30c

    :cond_307
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_30c
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->D:Ljava/lang/String;

    const-string v2, "banner_image_portrait_uri"

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_31b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_320

    :cond_31b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_320
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->E:Ljava/lang/String;

    const-string v2, "banner_image_portrait_url"

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_32f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_334

    :cond_32f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_334
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->F:Ljava/lang/String;

    const-string v2, "gamer_friend_status"

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_343

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_348

    :cond_343
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_348
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->G:Ljava/lang/String;

    const-string v2, "gamer_friend_update_timestamp"

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_357

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_35c

    :cond_357
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_35c
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->H:Ljava/lang/String;

    const-string v2, "is_muted"

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_36b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_370

    :cond_36b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_370
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->I:Ljava/lang/String;

    const-string v2, "total_unlocked_achievements"

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_37f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_384

    :cond_37f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_384
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->J:Ljava/lang/String;

    .line 80
    sget-object v2, Lcom/google/android/gms/games/internal/zzd;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_397

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_39c

    :cond_397
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_39c
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->K:Ljava/lang/String;

    .line 81
    sget-object v2, Lcom/google/android/gms/games/internal/zzd;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3af

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b4

    :cond_3af
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3b4
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->L:Ljava/lang/String;

    .line 82
    sget-object v2, Lcom/google/android/gms/games/internal/zzd;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3c7

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3cc

    :cond_3c7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3cc
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->M:Ljava/lang/String;

    const-string v2, "profile_creation_timestamp"

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3db

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3e0

    :cond_3db
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3e0
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->N:Ljava/lang/String;

    .line 84
    sget-object v2, Lcom/google/android/gms/games/internal/zzd;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3f3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3f8

    :cond_3f3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3f8
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzd;->O:Ljava/lang/String;

    const-string v2, "friends_list_visibility"

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_407

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_40d

    :cond_407
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_40d
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzd;->P:Ljava/lang/String;

    return-void
.end method
