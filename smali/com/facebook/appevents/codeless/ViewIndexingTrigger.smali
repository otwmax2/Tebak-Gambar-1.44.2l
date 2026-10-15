###### Class com.facebook.appevents.codeless.ViewIndexingTrigger (com.facebook.appevents.codeless.ViewIndexingTrigger)
.class public final Lcom/facebook/appevents/codeless/ViewIndexingTrigger;
.super Ljava/lang/Object;
.source "ViewIndexingTrigger.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;,
        Lcom/facebook/appevents/codeless/ViewIndexingTrigger$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$Companion;

.field private static final SHAKE_THRESHOLD_GRAVITY:D = 2.3


# instance fields
.field private onShakeListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->Companion:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string p2, "sensor"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception p1

    .line 1
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string v0, "event"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->onShakeListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    if-nez v0, :cond_11

    goto :goto_4f

    .line 2
    :cond_11
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    .line 3
    aget v2, p1, v2

    const/4 v3, 0x2

    .line 4
    aget p1, p1, v3
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_50

    const v3, 0x411ce80a

    div-float/2addr v1, v3

    float-to-double v4, v1

    div-float/2addr v2, v3

    float-to-double v1, v2

    div-float/2addr p1, v3

    float-to-double v6, p1

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v1

    add-double/2addr v4, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v6

    add-double/2addr v4, v6

    :try_start_3f
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x4002666666666666L    # 2.3

    cmpl-double p1, v1, v3

    if-lez p1, :cond_4f

    .line 6
    invoke-interface {v0}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;->onShake()V
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_50

    :cond_4f
    :goto_4f
    return-void

    :catchall_50
    move-exception p1

    .line 7
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShakeListener(Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->onShakeListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception p1

    .line 2
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.appevents.codeless.ViewIndexingTrigger.Companion (com.facebook.appevents.codeless.ViewIndexingTrigger$Companion)
.class public final Lcom/facebook/appevents/codeless/ViewIndexingTrigger$Companion;
.super Ljava/lang/Object;
.source "ViewIndexingTrigger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/ViewIndexingTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger$Companion;-><init>()V

    return-void
.end method

###### Class com.facebook.appevents.codeless.ViewIndexingTrigger.OnShakeListener (com.facebook.appevents.codeless.ViewIndexingTrigger$OnShakeListener)
.class public interface abstract Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;
.super Ljava/lang/Object;
.source "ViewIndexingTrigger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/ViewIndexingTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnShakeListener"
.end annotation


# virtual methods
.method public abstract onShake()V
.end method
