###### Class com.google.android.gms.internal.ads.zzdrr (com.google.android.gms.internal.ads.zzdrr)
.class public final Lcom/google/android/gms/internal/ads/zzdrr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/hardware/SensorManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Landroid/hardware/Sensor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:F

.field private d:Ljava/lang/Float;

.field private e:J

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lcom/google/android/gms/internal/ads/zzdrq;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->c:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->f:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->h:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->i:Lcom/google/android/gms/internal/ads/zzdrq;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->j:Z

    const-string v0, "sensor"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->a:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_36

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->b:Landroid/hardware/Sensor;

    return-void

    :cond_36
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->b:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->j:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->b:Landroid/hardware/Sensor;

    if-eqz v1, :cond_18

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->j:Z

    const-string v0, "Stopped listening for flick gestures."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 3
    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public final b()V
    .registers 4

    .line 1
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->o8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 4
    monitor-exit p0

    return-void

    :cond_15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->j:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->b:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2d

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->j:Z

    const-string v0, "Listening for flick gestures."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 7
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->b:Landroid/hardware/Sensor;

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    return-void

    :cond_38
    :goto_38
    const-string v0, "Flick detection failed to initialize. Failed to obtain gyroscope."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :catchall_3e
    move-exception v0

    .line 9
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzdrq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->i:Lcom/google/android/gms/internal/ads/zzdrq;

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->o8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 4
    :cond_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdrr;->e:J

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->q8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-gez v5, :cond_44

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzdrr;->f:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->e:J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdrr;->g:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdrr;->h:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdrr;->c:F

    .line 8
    :cond_44
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget p1, p1, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float p1, p1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdrr;->c:F

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbar;->p8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v6

    .line 12
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v3, v6

    cmpl-float p1, p1, v3

    if-lez p1, :cond_80

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->c:F

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdrr;->h:Z

    goto :goto_a5

    .line 14
    :cond_80
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdrr;->c:F

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v3, v5

    cmpg-float p1, p1, v3

    if-gez p1, :cond_a5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->c:F

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdrr;->g:Z

    .line 19
    :cond_a5
    :goto_a5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->isInfinite()Z

    move-result p1

    if-eqz p1, :cond_b6

    const/4 p1, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdrr;->d:Ljava/lang/Float;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->c:F

    :cond_b6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->g:Z

    if-eqz p1, :cond_f0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->h:Z

    if-eqz p1, :cond_f0

    const-string p1, "Flick detected."

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->e:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->f:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdrr;->g:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdrr;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->i:Lcom/google/android/gms/internal/ads/zzdrq;

    if-eqz v0, :cond_f0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->r8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_f0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdsd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsf;

    .line 25
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdsd;-><init>(Lcom/google/android/gms/internal/ads/zzdsf;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdse;->q:Lcom/google/android/gms/internal/ads/zzdse;

    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsf;->h(Lcom/google/android/gms/ads/internal/client/zzda;Lcom/google/android/gms/internal/ads/zzdse;)V

    :cond_f0
    return-void
.end method
