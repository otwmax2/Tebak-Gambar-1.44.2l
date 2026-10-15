###### Class com.google.android.gms.internal.ads.zzatz (com.google.android.gms.internal.ads.zzatz)
.class public final Lcom/google/android/gms/internal/ads/zzatz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/zzatx;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "activityTrackerLock"
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "activityTrackerLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatx;->a()Landroid/app/Activity;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2
    :cond_d
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_10
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final b()Landroid/content/Context;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatx;->b()Landroid/content/Context;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2
    :cond_d
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_10
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzaty;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzatx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzatx;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzatx;->f(Lcom/google/android/gms/internal/ads/zzaty;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final d(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->c:Z

    if-nez v1, :cond_32

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v1, p1

    .line 2
    :cond_e
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_15

    .line 3
    check-cast v1, Landroid/app/Application;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-nez v1, :cond_1f

    const-string p1, "Can not cast Context to Application"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    if-nez v2, :cond_2a

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzatx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzatx;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    :cond_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    .line 7
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzatx;->g(Landroid/app/Application;Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatz;->c:Z

    .line 8
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzaty;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->b:Lcom/google/android/gms/internal/ads/zzatx;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 2
    :cond_9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzatx;->h(Lcom/google/android/gms/internal/ads/zzaty;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
