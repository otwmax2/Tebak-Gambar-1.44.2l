###### Class com.google.android.gms.internal.ads.zzxt (com.google.android.gms.internal.ads.zzxt)
.class final Lcom/google/android/gms/internal/ads/zzxt;
.super Landroid/os/HandlerThread;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private o:Lcom/google/android/gms/internal/ads/zzdr;

.field private p:Landroid/os/Handler;

.field private q:Ljava/lang/Error;

.field private r:Ljava/lang/RuntimeException;

.field private s:Lcom/google/android/gms/internal/ads/zzxv;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ExoPlayer:PlaceholderSurface"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/zzxv;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->p:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxt;->p:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzdq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->o:Lcom/google/android/gms/internal/ads/zzdr;

    monitor-enter p0

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->s:Lcom/google/android/gms/internal/ads/zzxv;

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->r:Ljava/lang/RuntimeException;

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->q:Ljava/lang/Error;
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_50

    if-nez p1, :cond_36

    .line 5
    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_50

    goto :goto_24

    :catch_34
    const/4 v1, 0x1

    goto :goto_24

    .line 6
    :cond_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_50

    if-eqz v1, :cond_40

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->r:Ljava/lang/RuntimeException;

    if-nez p1, :cond_4f

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->q:Ljava/lang/Error;

    if-nez p1, :cond_4e

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->s:Lcom/google/android/gms/internal/ads/zzxv;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 11
    :cond_4e
    throw p1

    .line 12
    :cond_4f
    throw p1

    :catchall_50
    move-exception p1

    .line 13
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->p:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return v1

    .line 2
    :cond_9
    :try_start_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->o:Lcom/google/android/gms/internal/ads/zzdr;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdr;->c()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 5
    :goto_11
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1e

    :catchall_15
    move-exception p1

    :try_start_16
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to release placeholder surface"

    .line 6
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1f

    goto :goto_11

    :goto_1e
    return v1

    :catchall_1f
    move-exception p1

    .line 7
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 8
    throw p1

    .line 9
    :cond_24
    :try_start_24
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->o:Lcom/google/android/gms/internal/ads/zzdr;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_28} :catch_77
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_24 .. :try_end_28} :catch_5f
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_28} :catch_4c
    .catchall {:try_start_24 .. :try_end_28} :catchall_4a

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :try_start_2b
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdr;->b(I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxt;->o:Lcom/google/android/gms/internal/ads/zzdr;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdr;->a()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz p1, :cond_3a

    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzxv;-><init>(Lcom/google/android/gms/internal/ads/zzxt;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzxu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->s:Lcom/google/android/gms/internal/ads/zzxv;
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_41} :catch_77
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_2b .. :try_end_41} :catch_5f
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_41} :catch_4c
    .catchall {:try_start_2b .. :try_end_41} :catchall_4a

    monitor-enter p0

    .line 13
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 14
    monitor-exit p0

    goto :goto_86

    :catchall_47
    move-exception p1

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_47

    throw p1

    :catchall_4a
    move-exception p1

    goto :goto_8a

    :catch_4c
    move-exception p1

    :try_start_4d
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 15
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->q:Ljava/lang/Error;
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_4a

    monitor-enter p0

    .line 16
    :try_start_57
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 17
    monitor-exit p0

    goto :goto_86

    :catchall_5c
    move-exception p1

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5c

    throw p1

    :catch_5f
    move-exception p1

    :try_start_60
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 18
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->r:Ljava/lang/RuntimeException;
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_4a

    monitor-enter p0

    .line 20
    :try_start_6f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 21
    monitor-exit p0

    goto :goto_86

    :catchall_74
    move-exception p1

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_74

    throw p1

    :catch_77
    move-exception p1

    :try_start_78
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 22
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->r:Ljava/lang/RuntimeException;
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_4a

    monitor-enter p0

    .line 23
    :try_start_82
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 24
    monitor-exit p0

    :goto_86
    return v1

    :catchall_87
    move-exception p1

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_87

    throw p1

    :goto_8a
    monitor-enter p0

    .line 25
    :try_start_8b
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 26
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_90

    .line 27
    throw p1

    :catchall_90
    move-exception p1

    .line 28
    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    goto :goto_94

    :goto_93
    throw p1

    :goto_94
    goto :goto_93
.end method
