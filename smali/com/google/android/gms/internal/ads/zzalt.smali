###### Class com.google.android.gms.internal.ads.zzalt (com.google.android.gms.internal.ads.zzalt)
.class public Lcom/google/android/gms/internal/ads/zzalt;
.super Lcom/google/android/gms/internal/ads/zzako;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final A:Ljava/lang/Object;

.field private final B:Lcom/google/android/gms/internal/ads/zzakt;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzakt;Lcom/google/android/gms/internal/ads/zzaks;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzako;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaks;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->A:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalt;->B:Lcom/google/android/gms/internal/ads/zzakt;

    return-void
.end method


# virtual methods
.method protected Q(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalt;->B:Lcom/google/android/gms/internal/ads/zzakt;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzakt;->a(Ljava/lang/Object;)V

    return-void

    :catchall_a
    move-exception p1

    .line 3
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method protected final k(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzaku;
    .registers 12

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzakk;->b:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzakk;->c:Ljava/util/Map;

    const-string v3, "ISO-8859-1"

    if-nez v2, :cond_b

    goto :goto_41

    :cond_b
    const-string v4, "Content-Type"

    .line 2
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_41

    const-string v4, ";"

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v6, 0x1

    .line 4
    :goto_1e
    array-length v7, v2

    if-ge v6, v7, :cond_41

    .line 5
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 6
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3e

    .line 7
    aget-object v8, v7, v5

    const-string v9, "charset"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 8
    aget-object v3, v7, v4

    goto :goto_41

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 9
    :cond_41
    :goto_41
    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 10
    :catch_45
    new-instance v0, Ljava/lang/String;

    .line 11
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzakk;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 12
    :goto_4c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzall;->b(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaku;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzaku;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic r(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzalt;->Q(Ljava/lang/String;)V

    return-void
.end method
