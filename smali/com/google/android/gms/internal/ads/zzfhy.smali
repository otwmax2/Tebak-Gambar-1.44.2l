###### Class com.google.android.gms.internal.ads.zzfhy (com.google.android.gms.internal.ads.zzfhy)
.class final Lcom/google/android/gms/internal/ads/zzfhy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field protected final o:Lcom/google/android/gms/internal/ads/zzfiw;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final s:Landroid/os/HandlerThread;

.field private final t:Lcom/google/android/gms/internal/ads/zzfhp;

.field private final u:J

.field private final v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfhp;)V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhy;->p:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfhy;->v:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfhy;->q:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfhy;->t:Lcom/google/android/gms/internal/ads/zzfhp;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhy;->s:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfhy;->u:J

    .line 4
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfiw;

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfiw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhy;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhy;->r:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/ads/zzfji;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfji;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfji;-><init>([BI)V

    return-object v0
.end method

.method private final e(IJLjava/lang/Exception;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->t:Lcom/google/android/gms/internal/ads/zzfhp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 2
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzfhp;->c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final P0(I)V
    .registers 5

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->u:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfhy;->e(IJLjava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhy;->r:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhy;->a()Lcom/google/android/gms/internal/ads/zzfji;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->u:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfhy;->e(IJLjava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhy;->r:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhy;->a()Lcom/google/android/gms/internal/ads/zzfji;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzfji;
    .registers 6

    const/4 p1, 0x0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->r:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v1, 0xc350

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfji;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception v0

    const/16 v1, 0x7d9

    .line 2
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfhy;->u:J

    .line 3
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfhy;->e(IJLjava/lang/Exception;)V

    move-object v0, p1

    :goto_18
    const/16 v1, 0xbbc

    .line 4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfhy;->u:J

    .line 5
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfhy;->e(IJLjava/lang/Exception;)V

    if-eqz v0, :cond_2f

    iget p1, v0, Lcom/google/android/gms/internal/ads/zzfji;->q:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2b

    const/4 p1, 0x3

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfhp;->g(I)V

    goto :goto_2f

    :cond_2b
    const/4 p1, 0x2

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfhp;->g(I)V

    :cond_2f
    :goto_2f
    if-nez v0, :cond_36

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhy;->a()Lcom/google/android/gms/internal/ads/zzfji;

    move-result-object p1

    return-object p1

    :cond_36
    return-object v0
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()V

    :cond_17
    return-void
.end method

.method protected final d()Lcom/google/android/gms/internal/ads/zzfjb;
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiw;->o0()Lcom/google/android/gms/internal/ads/zzfjb;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfhy;->d()Lcom/google/android/gms/internal/ads/zzfjb;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 2
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjg;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfhy;->v:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhy;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhy;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfjg;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfjb;->Ra(Lcom/google/android/gms/internal/ads/zzfjg;)Lcom/google/android/gms/internal/ads/zzfji;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->u:J

    const/16 v2, 0x1393

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfhy;->e(IJLjava/lang/Exception;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->r:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_2c

    .line 6
    :goto_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfhy;->c()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhy;->s:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    new-instance v0, Ljava/lang/Exception;

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, 0x7da

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfhy;->u:J

    .line 9
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfhy;->e(IJLjava/lang/Exception;)V
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_3a

    goto :goto_23

    :catchall_3a
    move-exception p1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfhy;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhy;->s:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 12
    throw p1

    :cond_44
    return-void
.end method
