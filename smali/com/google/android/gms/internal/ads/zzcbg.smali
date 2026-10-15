###### Class com.google.android.gms.internal.ads.zzcbg (com.google.android.gms.internal.ads.zzcbg)
.class final Lcom/google/android/gms/internal/ads/zzcbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/view/Display;

.field private final d:[F

.field private final e:[F

.field private f:[F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sensorThreadLock"
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Lcom/google/android/gms/internal/ads/zzcbf;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->a:Landroid/hardware/SensorManager;

    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->c:Landroid/view/Display;

    const/16 p1, 0x9

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->d:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->e:[F

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/zzcbf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->h:Lcom/google/android/gms/internal/ads/zzcbf;

    return-void
.end method

.method final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->g:Landroid/os/Handler;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "No Sensor of TYPE_ROTATION_VECTOR"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OrientationMonitor"

    .line 3
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfkr;

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzfkr;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbg;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->a:Landroid/hardware/SensorManager;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "SensorManager.registerListener failed."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcbg;->c()V

    :cond_3b
    return-void
.end method

.method final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->g:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->g:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcbe;-><init>(Lcom/google/android/gms/internal/ads/zzcbg;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->g:Landroid/os/Handler;

    return-void
.end method

.method final d([F)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbg;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->f:[F

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    :cond_a
    const/16 v3, 0x9

    .line 2
    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_12
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    aget v1, p1, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    aget v1, p1, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8a

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbg;->f:[F

    const/16 v5, 0x9

    if-nez v2, :cond_25

    new-array v2, v5, [F

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbg;->f:[F

    .line 3
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_8e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->d:[F

    .line 4
    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->c:Landroid/view/Display;

    .line 5
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x81

    const/4 v2, 0x3

    if-eq p1, v4, :cond_54

    const/16 v6, 0x82

    if-eq p1, v3, :cond_4c

    if-eq p1, v2, :cond_44

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->d:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->e:[F

    .line 6
    invoke-static {p1, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5b

    .line 7
    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->d:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->e:[F

    .line 8
    invoke-static {p1, v6, v4, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_5b

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->d:[F

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbg;->e:[F

    .line 9
    invoke-static {p1, v1, v6, v7}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_5b

    :cond_54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->d:[F

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcbg;->e:[F

    .line 10
    invoke-static {p1, v3, v1, v6}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 11
    :goto_5b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->e:[F

    aget v1, p1, v4

    aget v6, p1, v2

    aput v6, p1, v4

    aput v1, p1, v2

    aget v1, p1, v3

    const/4 v2, 0x6

    aget v4, p1, v2

    aput v4, p1, v3

    aput v1, p1, v2

    const/4 v1, 0x5

    aget v2, p1, v1

    const/4 v3, 0x7

    aget v4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->e:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbg;->f:[F

    .line 12
    invoke-static {v1, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    monitor-exit p1
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_8b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbg;->h:Lcom/google/android/gms/internal/ads/zzcbf;

    if-eqz p1, :cond_8a

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcbf;->zza()V

    :cond_8a
    return-void

    :catchall_8b
    move-exception v0

    .line 15
    :try_start_8c
    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v0

    :catchall_8e
    move-exception p1

    .line 16
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p1
.end method
