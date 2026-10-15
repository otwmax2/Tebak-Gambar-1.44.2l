###### Class com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager (com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager)
.class public final Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;
.super Ljava/lang/Object;
.source "OnDeviceProcessingManager.kt"


# static fields
.field private static final ALLOWED_IMPLICIT_EVENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    invoke-direct {v0}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    const-string v0, "fb_mobile_purchase"

    const-string v1, "StartTrial"

    const-string v2, "Subscribe"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Li9/g0;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->ALLOWED_IMPLICIT_EVENTS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->sendInstallEventAsync$lambda-0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->sendCustomEventAsync$lambda-1(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V

    return-void
.end method

.method private final isEventEligibleForOnDeviceProcessing(Lcom/facebook/appevents/AppEvent;)Z
    .registers 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEvent;->isImplicit()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->ALLOWED_IMPLICIT_EVENTS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/appevents/AppEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 2
    :goto_1e
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEvent;->isImplicit()Z

    move-result p1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    xor-int/2addr p1, v2

    if-nez p1, :cond_27

    if-eqz v0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1

    :catchall_29
    move-exception p1

    .line 3
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static final isOnDeviceProcessingEnabled()Z
    .registers 4

    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 1
    :cond_a
    :try_start_a
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_21

    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {}, Lcom/facebook/internal/Utility;->isDataProcessingRestricted()Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_2d

    .line 3
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    invoke-static {}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->isServiceAvailable()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2e

    if-eqz v0, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    return v2

    :catchall_2e
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final sendCustomEventAsync(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V
    .registers 5

    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "applicationId"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "event"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    invoke-direct {v1, p1}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->isEventEligibleForOnDeviceProcessing(Lcom/facebook/appevents/AppEvent;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/appevents/ondeviceprocessing/b;

    invoke-direct {v2, p0, p1}, Lcom/facebook/appevents/ondeviceprocessing/b;-><init>(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception p0

    .line 3
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static final sendCustomEventAsync$lambda-1(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "$applicationId"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$event"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    invoke-static {p1}, Li9/j;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->sendCustomEvents(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final sendInstallEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1
    :cond_9
    :try_start_9
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_21

    if-eqz p0, :cond_21

    if-eqz p1, :cond_21

    .line 2
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/appevents/ondeviceprocessing/a;

    invoke-direct {v3, v1, p1, p0}, Lcom/facebook/appevents/ondeviceprocessing/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception p0

    .line 3
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static final sendInstallEventAsync$lambda-0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "$context"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pingForOnDevice"

    .line 2
    invoke-static {p2, p1}, Lt9/m;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 3
    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_36

    .line 4
    sget-object v1, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    invoke-static {p2}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->sendInstallEvent(Ljava/lang/String;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_37

    :cond_36
    return-void

    :catchall_37
    move-exception p0

    .line 9
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.appevents.ondeviceprocessing.a (com.facebook.appevents.ondeviceprocessing.a)
.class public final synthetic Lcom/facebook/appevents/ondeviceprocessing/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/ondeviceprocessing/a;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/ondeviceprocessing/a;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/ondeviceprocessing/a;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/appevents/ondeviceprocessing/a;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/ondeviceprocessing/a;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/ondeviceprocessing/a;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.appevents.ondeviceprocessing.b (com.facebook.appevents.ondeviceprocessing.b)
.class public final synthetic Lcom/facebook/appevents/ondeviceprocessing/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Lcom/facebook/appevents/AppEvent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/ondeviceprocessing/b;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/ondeviceprocessing/b;->p:Lcom/facebook/appevents/AppEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/appevents/ondeviceprocessing/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/ondeviceprocessing/b;->p:Lcom/facebook/appevents/AppEvent;

    invoke-static {v0, v1}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->b(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V

    return-void
.end method
