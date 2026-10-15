###### Class com.google.android.gms.internal.ads.zzfkw (com.google.android.gms.internal.ads.zzfkw)
.class public final Lcom/google/android/gms/internal/ads/zzfkw;
.super Lcom/google/android/gms/internal/ads/zzfkt;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static h:Lcom/google/android/gms/internal/ads/zzfkw;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PaidV2LifecycleImpl.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "paidv2_id"

    const-string v1, "paidv2_creation_time"

    const-string v2, "PaidV2LifecycleImpl"

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfkt;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final j(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfkw;
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfkw;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkw;->h:Lcom/google/android/gms/internal/ads/zzfkw;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfkw;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfkw;->h:Lcom/google/android/gms/internal/ads/zzfkw;

    :cond_e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkw;->h:Lcom/google/android/gms/internal/ads/zzfkw;

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
    const-class v0, Lcom/google/android/gms/internal/ads/zzfkw;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfkw;->p()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfks;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfks;-><init>()V

    .line 2
    monitor-exit v0

    return-object p1

    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfkt;->b(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfkw;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfkt;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfkt;->f(Z)V

    .line 3
    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final l()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    const-string v1, "paidv2_publisher_option"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfku;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    const-string v1, "paidv2_user_option"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfku;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "paidv2_user_option"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfku;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "paidv2_publisher_option"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfku;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_10

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfkw;->k()V

    :cond_10
    return-void
.end method

.method public final p()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    const-string v1, "paidv2_publisher_option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfku;->f(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    const-string v1, "paidv2_user_option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfku;->f(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
