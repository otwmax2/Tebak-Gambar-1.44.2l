###### Class com.google.android.gms.internal.ads.zzeyf (com.google.android.gms.internal.ads.zzeyf)
.class public final Lcom/google/android/gms/internal/ads/zzeyf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:J

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Lcom/google/android/gms/internal/ads/zzeye;

.field public final j:Landroid/os/Bundle;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v8, v4

    move-object v9, v8

    move-object v10, v9

    move-object v11, v5

    move-wide v12, v6

    const/4 v5, 0x0

    move-object v6, v10

    move-object v7, v6

    const/4 v4, 0x0

    .line 4
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13f

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "nofill_urls"

    .line 6
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_39

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbu;->d(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v1

    :goto_36
    move-object/from16 v15, p1

    goto :goto_20

    :cond_39
    const-string v15, "refresh_interval"

    .line 8
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_46

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_36

    :cond_46
    const-string v15, "gws_query_id"

    .line 10
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_53

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    :cond_53
    const-string v15, "analytics_query_ad_event_id"

    .line 12
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_60

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_36

    :cond_60
    const-string v15, "is_idless"

    .line 14
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6d

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_36

    :cond_6d
    const-string v15, "response_code"

    .line 16
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7a

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_36

    :cond_7a
    const-string v15, "latency"

    .line 18
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_87

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v12

    goto :goto_36

    .line 20
    :cond_87
    sget-object v15, Lcom/google/android/gms/internal/ads/zzbar;->F7:Lcom/google/android/gms/internal/ads/zzbaj;

    move-object/from16 v16, v10

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v10

    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v10

    .line 22
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b4

    const-string v10, "public_error"

    .line 23
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v10

    sget-object v15, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v10, v15, :cond_b4

    new-instance v10, Lcom/google/android/gms/internal/ads/zzeye;

    move-object/from16 v15, p1

    .line 25
    invoke-direct {v10, v15}, Lcom/google/android/gms/internal/ads/zzeye;-><init>(Landroid/util/JsonReader;)V

    move-object v11, v10

    goto :goto_c2

    :cond_b4
    move-object/from16 v15, p1

    const-string v10, "bidding_data"

    .line 26
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    :catch_c2
    :cond_c2
    :goto_c2
    move-object/from16 v10, v16

    goto/16 :goto_20

    :cond_c6
    const-string v10, "response_info_extras"

    .line 28
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f4

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbar;->s6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v10

    .line 30
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 31
    :try_start_e0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbu;->h(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/ads/internal/util/zzbu;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v10
    :try_end_e8
    .catch Lorg/json/JSONException; {:try_start_e0 .. :try_end_e8} :catch_c2
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e8} :catch_c2
    .catch Ljava/lang/IllegalStateException; {:try_start_e0 .. :try_end_e8} :catch_ec

    if-eqz v10, :cond_c2

    move-object v2, v10

    goto :goto_c2

    .line 32
    :catch_ec
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_c2

    .line 33
    :cond_f0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_c2

    :cond_f4
    const-string v10, "adRequestPostBody"

    .line 34
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_118

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbar;->y8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v10

    .line 36
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_114

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_20

    .line 38
    :cond_114
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_c2

    :cond_118
    const-string v10, "adRequestUrl"

    .line 39
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13b

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbar;->y8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v10

    .line 41
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_137

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_c2

    .line 43
    :cond_137
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_c2

    .line 44
    :cond_13b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_c2

    :cond_13f
    move-object/from16 v15, p1

    move-object/from16 v16, v10

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeyf;->a:Ljava/util/List;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzeyf;->c:I

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzeyf;->d:Ljava/lang/String;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzeyf;->e:I

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzeyf;->f:J

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzeyf;->i:Lcom/google/android/gms/internal/ads/zzeye;

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzeyf;->g:Z

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzeyf;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzeyf;->j:Landroid/os/Bundle;

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzeyf;->k:Ljava/lang/String;

    move-object/from16 v4, v16

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzeyf;->l:Ljava/lang/String;

    return-void
.end method
