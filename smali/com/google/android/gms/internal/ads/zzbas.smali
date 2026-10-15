###### Class com.google.android.gms.internal.ads.zzbas (com.google.android.gms.internal.ads.zzbas)
.class public final Lcom/google/android/gms/internal/ads/zzbas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcl;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->a:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1c

    if-eqz v0, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    const/4 v0, 0x1

    :try_start_16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->a:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1c

    monitor-exit p0

    return-void

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
