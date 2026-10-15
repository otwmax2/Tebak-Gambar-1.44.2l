###### Class com.google.android.gms.ads.VideoController (com.google.android.gms.ads.VideoController)
.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/ads/internal/client/zzdq;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private c:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/VideoController;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->c:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->b:Lcom/google/android/gms/ads/internal/client/zzdq;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_21

    if-eqz v1, :cond_1f

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_13

    .line 2
    :cond_d
    :try_start_d
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzfk;

    .line 3
    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/client/zzfk;-><init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    move-object p1, v2

    .line 4
    :goto_13
    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->W1(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17
    .catchall {:try_start_d .. :try_end_16} :catchall_21

    goto :goto_1d

    :catch_17
    move-exception p1

    :try_start_18
    const-string v1, "Unable to call setVideoLifecycleCallbacks on video controller."

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_1d
    monitor-exit v0

    return-void

    .line 7
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final b()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->b:Lcom/google/android/gms/ads/internal/client/zzdq;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final c(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->b:Lcom/google/android/gms/ads/internal/client/zzdq;

    iget-object p1, p0, Lcom/google/android/gms/ads/VideoController;->c:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/VideoController;->a(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    .line 2
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

###### Class com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks (com.google.android.gms.ads.VideoController$VideoLifecycleCallbacks)
.class public abstract Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method
