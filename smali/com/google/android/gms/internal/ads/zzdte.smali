###### Class com.google.android.gms.internal.ads.zzdte (com.google.android.gms.internal.ads.zzdte)
.class public final Lcom/google/android/gms/internal/ads/zzdte;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/hardware/SensorManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/hardware/Sensor;

.field private d:J

.field private e:I

.field private f:Lcom/google/android/gms/internal/ads/zzdtd;

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdte;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->g:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdte;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const-string v0, "Stopped listening for shake gestures."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->g:Z

    .line 3
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final b()V
    .registers 7

    .line 1
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->j8:Lcom/google/android/gms/internal/ads/zzbaj;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->a:Landroid/content/Context;

    const-string v2, "sensor"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->b:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2f

    const-string v0, "Shake detection failed to initialize. Failed to obtain accelerometer."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2f
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->c:Landroid/hardware/Sensor;

    :cond_35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->g:Z

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_68

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdte;->c:Landroid/hardware/Sensor;

    if-eqz v2, :cond_68

    const/4 v3, 0x2

    .line 9
    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->l8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdte;->d:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdte;->g:Z

    const-string v0, "Listening for shake gestures."

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 14
    :cond_68
    monitor-exit p0

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzdtd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdte;->f:Lcom/google/android/gms/internal/ads/zzdtd;

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->j8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    .line 5
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 6
    aget p1, p1, v4

    const v4, 0x411ce80a

    div-float/2addr v1, v4

    div-float/2addr v3, v4

    div-float/2addr p1, v4

    mul-float v1, v1, v1

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    float-to-double v3, v1

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->k8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_46

    return-void

    .line 10
    :cond_46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzdte;->d:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->l8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v7, p1

    add-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-lez p1, :cond_67

    return-void

    :cond_67
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzdte;->d:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->m8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v7, p1

    add-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-gez p1, :cond_81

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->e:I

    :cond_81
    const-string p1, "Shake detected."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdte;->d:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdte;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdte;->e:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdte;->f:Lcom/google/android/gms/internal/ads/zzdtd;

    if-eqz v0, :cond_af

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->n8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_af

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdsc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsf;

    .line 18
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdsc;-><init>(Lcom/google/android/gms/internal/ads/zzdsf;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdse;->q:Lcom/google/android/gms/internal/ads/zzdse;

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsf;->h(Lcom/google/android/gms/ads/internal/client/zzda;Lcom/google/android/gms/internal/ads/zzdse;)V

    :cond_af
    return-void
.end method
