###### Class com.google.android.gms.internal.ads.zzeyn (com.google.android.gms.internal.ads.zzeyn)
.class public final Lcom/google/android/gms/internal/ads/zzeyn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/google/android/gms/internal/ads/zzeyf;

.field public final c:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 4
    :cond_11
    :goto_11
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "responses"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 8
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 9
    :goto_29
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 10
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ad_configs"

    .line 11
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 14
    :goto_43
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeyc;

    .line 15
    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/ads/zzeyc;-><init>(Landroid/util/JsonReader;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 16
    :cond_52
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_29

    :cond_56
    const-string v5, "common"

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeyf;

    .line 18
    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzeyf;-><init>(Landroid/util/JsonReader;)V

    goto :goto_29

    .line 19
    :cond_64
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_29

    .line 20
    :cond_68
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 21
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_11

    :cond_6f
    const-string v5, "actions"

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 23
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 24
    :goto_7a
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 25
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    move-object v4, v2

    move-object v5, v4

    .line 26
    :goto_85
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    .line 28
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 29
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_85

    :cond_9c
    const-string v7, "info"

    .line 30
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbu;->h(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_85

    .line 32
    :cond_a9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_85

    :cond_ad
    if-eqz v4, :cond_b7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeym;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzeym;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_b7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_7a

    .line 35
    :cond_bb
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_11

    :cond_c0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyn;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyn;->a:Ljava/util/List;

    if-nez v3, :cond_d7

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeyf;

    new-instance p1, Landroid/util/JsonReader;

    .line 36
    new-instance v0, Ljava/io/StringReader;

    const-string v1, "{}"

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzeyf;-><init>(Landroid/util/JsonReader;)V

    :cond_d7
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    return-void
.end method

.method public static a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzeyn;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeyg;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyn;

    new-instance v1, Landroid/util/JsonReader;

    invoke-direct {v1, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeyn;-><init>(Landroid/util/JsonReader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a} :catch_14
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_12
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_a} :catch_10
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    return-object v0

    :catchall_e
    move-exception v0

    goto :goto_21

    :catch_10
    move-exception v0

    goto :goto_19

    :catch_12
    move-exception v0

    goto :goto_19

    :catch_14
    move-exception v0

    goto :goto_19

    :catch_16
    move-exception v0

    goto :goto_19

    :catch_18
    move-exception v0

    .line 3
    :goto_19
    :try_start_19
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyg;

    const-string v2, "unable to parse ServerResponse"

    .line 4
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeyg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_e

    .line 5
    :goto_21
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 6
    throw v0
.end method
