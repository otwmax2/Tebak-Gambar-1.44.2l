###### Class com.google.android.gms.internal.ads.zzapq (com.google.android.gms.internal.ads.zzapq)
.class final Lcom/google/android/gms/internal/ads/zzapq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzapr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapr;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapq;->o:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapq;->o:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapr;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzapr;->a()Landroid/os/ConditionVariable;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapq;->o:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzapr;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    .line 2
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_48

    return-void

    :cond_14
    const/4 v1, 0x0

    .line 3
    :try_start_15
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->e2:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_21} :catch_22
    .catchall {:try_start_15 .. :try_end_21} :catchall_48

    goto :goto_23

    :catch_22
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_36

    :try_start_25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapq;->o:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzapr;->b(Lcom/google/android/gms/internal/ads/zzapr;)Lcom/google/android/gms/internal/ads/zzaqx;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaqx;->a:Landroid/content/Context;

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    .line 4
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfjr;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjr;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzapr;->d:Lcom/google/android/gms/internal/ads/zzfjr;
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_37

    :cond_36
    move v1, v2

    :catchall_37
    :try_start_37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapq;->o:Lcom/google/android/gms/internal/ads/zzapr;

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzapr;->b:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzapr;->a()Landroid/os/ConditionVariable;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_48

    throw v1
.end method
