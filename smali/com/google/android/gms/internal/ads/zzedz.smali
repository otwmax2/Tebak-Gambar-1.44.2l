###### Class com.google.android.gms.internal.ads.zzedz (com.google.android.gms.internal.ads.zzedz)
.class public abstract Lcom/google/android/gms/internal/ads/zzedz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeat;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    if-nez p0, :cond_8

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;)Z
    .registers 4

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    const-string p2, "pubid"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 34

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    const-string v3, "pubid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeyv;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzeyv;-><init>()V

    .line 3
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzeyv;->G(Lcom/google/android/gms/internal/ads/zzeyx;)Lcom/google/android/gms/internal/ads/zzeyv;

    .line 4
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzeyv;->J(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeyv;

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzl;->A:Landroid/os/Bundle;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzedz;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 6
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzedz;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    const-string v6, "gw"

    const/4 v15, 0x1

    .line 7
    invoke-virtual {v9, v6, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    const-string v7, "mad_hac"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 9
    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_43
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    const-string v7, "adJson"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_52

    const-string v7, "_ad"

    .line 11
    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const-string v6, "_noRefresh"

    .line 12
    invoke-virtual {v9, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzeyc;->E:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 14
    :cond_5d
    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 15
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 16
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzeyc;->E:Lorg/json/JSONObject;

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_5d

    .line 17
    invoke-virtual {v9, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 18
    :cond_75
    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v14, Lcom/google/android/gms/ads/internal/client/zzl;

    move-object v5, v14

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    iget v6, v3, Lcom/google/android/gms/ads/internal/client/zzl;->o:I

    iget-wide v7, v3, Lcom/google/android/gms/ads/internal/client/zzl;->p:J

    iget v10, v3, Lcom/google/android/gms/ads/internal/client/zzl;->r:I

    iget-object v11, v3, Lcom/google/android/gms/ads/internal/client/zzl;->s:Ljava/util/List;

    iget-boolean v12, v3, Lcom/google/android/gms/ads/internal/client/zzl;->t:Z

    iget v13, v3, Lcom/google/android/gms/ads/internal/client/zzl;->u:I

    iget-boolean v15, v3, Lcom/google/android/gms/ads/internal/client/zzl;->v:Z

    move-object v1, v14

    move v14, v15

    iget-object v15, v3, Lcom/google/android/gms/ads/internal/client/zzl;->w:Ljava/lang/String;

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->x:Lcom/google/android/gms/ads/internal/client/zzfh;

    move-object/from16 v16, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->y:Landroid/location/Location;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->z:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->B:Landroid/os/Bundle;

    move-object/from16 v20, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->C:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->D:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->E:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-boolean v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->F:Z

    move/from16 v24, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->G:Lcom/google/android/gms/ads/internal/client/zzc;

    move-object/from16 v25, v0

    iget v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->H:I

    move/from16 v26, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->I:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->J:Ljava/util/List;

    move-object/from16 v28, v0

    iget v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->K:I

    move/from16 v29, v0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzl;->L:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v19, v2

    .line 19
    invoke-direct/range {v5 .. v30}, Lcom/google/android/gms/ads/internal/client/zzl;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfh;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 20
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzeyv;->e(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/ads/zzeyv;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeyv;->g()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    .line 22
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v2, p1

    .line 23
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    new-instance v4, Landroid/os/Bundle;

    .line 24
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyf;->a:Ljava/util/List;

    .line 25
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "nofill_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzeyf;->c:I

    const-string v6, "refresh_interval"

    .line 26
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    const-string v5, "gws_query_id"

    .line 27
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parent_common_config"

    .line 28
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    .line 30
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "initial_ad_unit_id"

    .line 31
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 32
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzeyc;->x:Ljava/lang/String;

    const-string v6, "allocation_id"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 33
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->c:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "click_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 34
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->d:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "imp_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 35
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->q:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "manual_tracking_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 36
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->n:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "fill_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 37
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->h:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "video_start_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 38
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->i:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "video_reward_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 39
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->j:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "video_complete_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 40
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzeyc;->k:Ljava/lang/String;

    const-string v6, "transaction_id"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzeyc;->l:Ljava/lang/String;

    const-string v6, "valid_from_timestamp"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzeyc;->Q:Z

    const-string v6, "is_closable_area_disabled"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzeyc;->p0:Ljava/lang/String;

    const-string v6, "recursive_server_response_data"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzeyc;->m:Lcom/google/android/gms/internal/ads/zzbup;

    if-eqz v5, :cond_1b1

    new-instance v5, Landroid/os/Bundle;

    .line 45
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 46
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->m:Lcom/google/android/gms/internal/ads/zzbup;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzbup;->p:I

    const-string v7, "rb_amount"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzeyc;->m:Lcom/google/android/gms/internal/ads/zzbup;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbup;->o:Ljava/lang/String;

    const-string v7, "rb_type"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/os/Bundle;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "rewards"

    .line 48
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1b1
    const-string v5, "parent_ad_config"

    .line 49
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v4, p0

    .line 50
    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzedz;->c(Lcom/google/android/gms/internal/ads/zzeyx;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyo;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c(Lcom/google/android/gms/internal/ads/zzeyx;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyo;)Lcom/google/android/gms/internal/ads/zzfut;
.end method
