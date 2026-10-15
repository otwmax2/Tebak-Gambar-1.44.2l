###### Class com.google.android.gms.internal.ads.zzxb (com.google.android.gms.internal.ads.zzxb)
.class final Lcom/google/android/gms/internal/ads/zzxb;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzxc;

.field private final p:J

.field private q:Lcom/google/android/gms/internal/ads/zzwy;

.field private r:Ljava/io/IOException;

.field private s:I

.field private t:Ljava/lang/Thread;

.field private u:Z

.field private volatile v:Z

.field final synthetic w:Lcom/google/android/gms/internal/ads/zzxg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxg;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/internal/ads/zzwy;IJ)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->w:Lcom/google/android/gms/internal/ads/zzxg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzxb;->o:Lcom/google/android/gms/internal/ads/zzxc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxb;->q:Lcom/google/android/gms/internal/ads/zzwy;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzxb;->p:J

    return-void
.end method

.method private final d()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->r:Ljava/io/IOException;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->w:Lcom/google/android/gms/internal/ads/zzxg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxg;->d(Lcom/google/android/gms/internal/ads/zzxg;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxg;->c(Lcom/google/android/gms/internal/ads/zzxg;)Lcom/google/android/gms/internal/ads/zzxb;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 10

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->r:Ljava/io/IOException;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->u:Z

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_28

    .line 3
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28

    .line 4
    :cond_18
    monitor-enter p0

    :try_start_19
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->u:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->o:Lcom/google/android/gms/internal/ads/zzxc;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxc;->e()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->t:Ljava/lang/Thread;

    if-eqz v1, :cond_27

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 7
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_45

    :cond_28
    :goto_28
    if-eqz p1, :cond_44

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->w:Lcom/google/android/gms/internal/ads/zzxg;

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzxg;->e(Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/internal/ads/zzxb;)V

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->q:Lcom/google/android/gms/internal/ads/zzwy;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->o:Lcom/google/android/gms/internal/ads/zzxc;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzxb;->p:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    .line 12
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzwy;->l(Lcom/google/android/gms/internal/ads/zzxc;JJZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->q:Lcom/google/android/gms/internal/ads/zzwy;

    :cond_44
    return-void

    :catchall_45
    move-exception p1

    .line 13
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public final b(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->r:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->s:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public final c(J)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->w:Lcom/google/android/gms/internal/ads/zzxg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxg;->c(Lcom/google/android/gms/internal/ads/zzxg;)Lcom/google/android/gms/internal/ads/zzxb;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->w:Lcom/google/android/gms/internal/ads/zzxg;

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzxg;->e(Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/internal/ads/zzxb;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 4
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxb;->d()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->v:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxb;->d()V

    return-void

    :cond_d
    const/4 v1, 0x3

    if-eq v0, v1, :cond_a2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->w:Lcom/google/android/gms/internal/ads/zzxg;

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzxg;->e(Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/internal/ads/zzxb;)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->p:J

    sub-long v7, v5, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->q:Lcom/google/android/gms/internal/ads/zzwy;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->u:Z

    if-eqz v0, :cond_2e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxb;->o:Lcom/google/android/gms/internal/ads/zzxc;

    const/4 v9, 0x0

    .line 8
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzwy;->l(Lcom/google/android/gms/internal/ads/zzxc;JJZ)V

    return-void

    .line 9
    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_89

    const/4 v11, 0x2

    if-eq v0, v11, :cond_37

    goto :goto_88

    .line 10
    :cond_37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Ljava/io/IOException;

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzxb;->r:Ljava/io/IOException;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->s:I

    add-int/lit8 v10, p1, 0x1

    iput v10, p0, Lcom/google/android/gms/internal/ads/zzxb;->s:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxb;->o:Lcom/google/android/gms/internal/ads/zzxc;

    .line 11
    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzwy;->g(Lcom/google/android/gms/internal/ads/zzxc;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxa;->a(Lcom/google/android/gms/internal/ads/zzxa;)I

    move-result v0

    if-ne v0, v1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->w:Lcom/google/android/gms/internal/ads/zzxg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->r:Ljava/io/IOException;

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzxg;->f(Lcom/google/android/gms/internal/ads/zzxg;Ljava/io/IOException;)V

    return-void

    :cond_58
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxa;->a(Lcom/google/android/gms/internal/ads/zzxa;)I

    move-result v0

    if-eq v0, v11, :cond_88

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxa;->a(Lcom/google/android/gms/internal/ads/zzxa;)I

    move-result v0

    if-ne v0, v2, :cond_66

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->s:I

    :cond_66
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxa;->b(Lcom/google/android/gms/internal/ads/zzxa;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_78

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxa;->b(Lcom/google/android/gms/internal/ads/zzxa;)J

    move-result-wide v0

    goto :goto_85

    .line 13
    :cond_78
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->s:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    .line 14
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    .line 15
    :goto_85
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzxb;->c(J)V

    :cond_88
    :goto_88
    return-void

    .line 16
    :cond_89
    :try_start_89
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxb;->o:Lcom/google/android/gms/internal/ads/zzxc;

    .line 17
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzwy;->k(Lcom/google/android/gms/internal/ads/zzxc;JJ)V
    :try_end_8e
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_8e} :catch_8f

    return-void

    :catch_8f
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 18
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->w:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxf;

    .line 19
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->f(Lcom/google/android/gms/internal/ads/zzxg;Ljava/io/IOException;)V

    return-void

    .line 20
    :cond_a2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final run()V
    .registers 6

    const/4 v0, 0x2

    .line 1
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_2} :catch_68
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_2} :catch_53

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->u:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->t:Ljava/lang/Thread;

    .line 2
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_50

    if-eqz v1, :cond_3d

    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->o:Lcom/google/android/gms/internal/ads/zzxc;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2f} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2f} :catch_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_2f} :catch_68
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_2f} :catch_53

    :try_start_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->o:Lcom/google/android/gms/internal/ads/zzxc;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxc;->f()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_38

    .line 7
    :try_start_34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3d

    :catchall_38
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8
    throw v1

    .line 9
    :cond_3d
    :goto_3d
    monitor-enter p0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_34 .. :try_end_3e} :catch_68
    .catch Ljava/lang/Error; {:try_start_34 .. :try_end_3e} :catch_53

    const/4 v1, 0x0

    :try_start_3f
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->t:Ljava/lang/Thread;

    .line 10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 11
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4d

    :try_start_45
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->v:Z

    if-nez v1, :cond_a6

    .line 12
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4c} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_4c} :catch_68
    .catch Ljava/lang/Error; {:try_start_45 .. :try_end_4c} :catch_53

    return-void

    :catchall_4d
    move-exception v1

    .line 13
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v1
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_50} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_50} :catch_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f .. :try_end_50} :catch_68
    .catch Ljava/lang/Error; {:try_start_4f .. :try_end_50} :catch_53

    :catchall_50
    move-exception v1

    .line 14
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_53} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_52 .. :try_end_53} :catch_68
    .catch Ljava/lang/Error; {:try_start_52 .. :try_end_53} :catch_53

    :catch_53
    move-exception v0

    .line 15
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->v:Z

    if-nez v1, :cond_67

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    .line 16
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 18
    :cond_67
    throw v0

    :catch_68
    move-exception v1

    .line 19
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->v:Z

    if-nez v2, :cond_a6

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    .line 20
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxf;

    .line 21
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_81
    move-exception v1

    .line 22
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->v:Z

    if-nez v2, :cond_a6

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    .line 23
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxf;

    .line 24
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_9a
    move-exception v1

    .line 25
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->v:Z

    if-nez v2, :cond_a6

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_a6
    return-void
.end method
