###### Class com.google.android.gms.internal.ads.zzdyc (com.google.android.gms.internal.ads.zzdyc)
.class public final Lcom/google/android/gms/internal/ads/zzdyc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public a:I

.field public b:Ljava/util/Map;

.field public c:Ljava/lang/String;

.field public d:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdyc;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyc;->b:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyc;->c:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdyc;->d:J

    return-void
.end method

.method public static a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzdyc;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeyg;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, -0x1

    const-string v4, ""

    .line 3
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v5, 0x0

    .line 4
    :goto_12
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 5
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "response"

    .line 6
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 7
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    goto :goto_12

    :cond_29
    const-string v7, "body"

    .line 8
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 9
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_36
    const-string v7, "latency"

    .line 10
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 11
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    goto :goto_12

    :cond_43
    const-string v7, "headers"

    .line 12
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    new-instance v1, Ljava/util/HashMap;

    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 15
    :goto_53
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 16
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbu;->d(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 17
    :cond_65
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_12

    .line 18
    :cond_69
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_12

    .line 19
    :cond_6d
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyc;

    .line 20
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdyc;-><init>()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzdyc;->a:I

    if-eqz v4, :cond_7b

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzdyc;->c:Ljava/lang/String;

    :cond_7b
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzdyc;->d:J

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdyc;->b:Ljava/util/Map;
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7f} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7f} :catch_89
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7f} :catch_87
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_7f} :catch_85
    .catchall {:try_start_0 .. :try_end_7f} :catchall_83

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    return-object v0

    :catchall_83
    move-exception v0

    goto :goto_94

    :catch_85
    move-exception v0

    goto :goto_8c

    :catch_87
    move-exception v0

    goto :goto_8c

    :catch_89
    move-exception v0

    goto :goto_8c

    :catch_8b
    move-exception v0

    .line 22
    :goto_8c
    :try_start_8c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyg;

    const-string v2, "Unable to parse Response"

    .line 23
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeyg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_83

    .line 24
    :goto_94
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 25
    goto :goto_99

    :goto_98
    throw v0

    :goto_99
    goto :goto_98
.end method
