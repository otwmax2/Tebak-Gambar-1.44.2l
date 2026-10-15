###### Class com.google.android.gms.internal.ads.zzfkv (com.google.android.gms.internal.ads.zzfkv)
.class public final Lcom/google/android/gms/internal/ads/zzfkv;
.super Lcom/google/android/gms/internal/ads/zzfkt;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static h:Lcom/google/android/gms/internal/ads/zzfkv;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PaidV1LifecycleImpl.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "paidv1_id"

    const-string v1, "paidv1_creation_time"

    const-string v2, "PaidV1LifecycleImpl"

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfkt;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final k(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfkv;
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfkv;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkv;->h:Lcom/google/android/gms/internal/ads/zzfkv;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfkv;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfkv;->h:Lcom/google/android/gms/internal/ads/zzfkv;

    :cond_e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkv;->h:Lcom/google/android/gms/internal/ads/zzfkv;

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public final i(JZ)Lcom/google/android/gms/internal/ads/zzfks;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfkv;

    monitor-enter v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_8
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfkt;->b(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_e
    move-exception p1

    .line 2
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfks;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfkv;

    monitor-enter v0

    :try_start_3
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzfkt;->b(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_9
    move-exception p1

    .line 2
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final l()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfkv;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfkt;->f(Z)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public final m()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfkv;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfkt;->f(Z)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method
