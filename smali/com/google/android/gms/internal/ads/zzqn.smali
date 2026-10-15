###### Class com.google.android.gms.internal.ads.zzqn (com.google.android.gms.internal.ads.zzqn)
.class final Lcom/google/android/gms/internal/ads/zzqn;
.super Landroid/media/MediaCodec$Callback;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private final d:Lcom/google/android/gms/internal/ads/zzqr;

.field private final e:Lcom/google/android/gms/internal/ads/zzqr;

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Ljava/util/ArrayDeque;

.field private h:Landroid/media/MediaFormat;

.field private i:Landroid/media/MediaFormat;

.field private j:Landroid/media/MediaCodec$CodecException;

.field private k:J

.field private l:Z

.field private m:Ljava/lang/IllegalStateException;


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->b:Landroid/os/HandlerThread;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqr;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->d:Lcom/google/android/gms/internal/ads/zzqr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqr;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->e:Lcom/google/android/gms/internal/ads/zzqr;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->f:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->g:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static synthetic d(Lcom/google/android/gms/internal/ads/zzqn;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->l:Z

    if-eqz v1, :cond_9

    .line 2
    monitor-exit v0

    return-void

    :cond_9
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->k:J

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->k:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_18

    .line 3
    monitor-exit v0

    return-void

    :cond_18
    cmp-long v5, v1, v3

    if-gez v5, :cond_2c

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    .line 5
    monitor-enter v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    :try_start_24
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->m:Ljava/lang/IllegalStateException;

    .line 6
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_29

    .line 7
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_31

    return-void

    :catchall_29
    move-exception p0

    .line 8
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p0

    .line 9
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqn;->i()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw p0
.end method

.method private final h(Landroid/media/MediaFormat;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->e:Lcom/google/android/gms/internal/ads/zzqr;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqr;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->g:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->g:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->i:Landroid/media/MediaFormat;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->d:Lcom/google/android/gms/internal/ads/zzqr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->e:Lcom/google/android/gms/internal/ads/zzqr;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqr;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->f:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->g:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->j:Landroid/media/MediaCodec$CodecException;

    return-void
.end method

.method private final j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->m:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->m:Ljava/lang/IllegalStateException;

    throw v0
.end method

.method private final k()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->j:Landroid/media/MediaCodec$CodecException;

    throw v0
.end method

.method private final l()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->l:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqn;->l()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    .line 2
    monitor-exit v0

    return v2

    .line 3
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqn;->j()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqn;->k()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->d:Lcom/google/android/gms/internal/ads/zzqr;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqr;->d()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_21

    .line 6
    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->d:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqr;->a()I

    move-result v2

    :goto_21
    monitor-exit v0

    return v2

    :catchall_23
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public final b(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqn;->l()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    .line 2
    monitor-exit v0

    return v2

    .line 3
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqn;->j()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqn;->k()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->e:Lcom/google/android/gms/internal/ads/zzqr;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqr;->d()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 6
    monitor-exit v0

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->e:Lcom/google/android/gms/internal/ads/zzqr;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqr;->a()I

    move-result v1

    const/4 v2, -0x2

    if-ltz v1, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqn;->h:Landroid/media/MediaFormat;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqn;->f:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    .line 10
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_4c

    :cond_3f
    if-ne v1, v2, :cond_4c

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->g:Ljava/util/ArrayDeque;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->h:Landroid/media/MediaFormat;

    const/4 v1, -0x2

    .line 13
    :cond_4c
    :goto_4c
    monitor-exit v0

    return v1

    :catchall_4e
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public final c()Landroid/media/MediaFormat;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->h:Landroid/media/MediaFormat;

    if-eqz v1, :cond_9

    .line 2
    monitor-exit v0

    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_f
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final e()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->k:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->k:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->c:Landroid/os/Handler;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzqm;-><init>(Lcom/google/android/gms/internal/ads/zzqn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final f(Landroid/media/MediaCodec;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->c:Landroid/os/Handler;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->b:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->b:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->c:Landroid/os/Handler;

    return-void
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->l:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->b:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqn;->i()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqn;->j:Landroid/media/MediaCodec$CodecException;

    .line 2
    monitor-exit p1

    return-void

    :catchall_7
    move-exception p2

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p2
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->d:Lcom/google/android/gms/internal/ads/zzqr;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzqr;->b(I)V

    .line 3
    monitor-exit p1

    return-void

    :catchall_a
    move-exception p2

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p2
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->i:Landroid/media/MediaFormat;

    if-eqz v0, :cond_d

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqn;->h(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->i:Landroid/media/MediaFormat;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->e:Lcom/google/android/gms/internal/ads/zzqr;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzqr;->b(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqn;->f:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p1

    return-void

    :catchall_19
    move-exception p2

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p2
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzqn;->h(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqn;->i:Landroid/media/MediaFormat;

    .line 3
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p2

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p2
.end method

###### Class com.google.android.gms.internal.ads.zzqm (com.google.android.gms.internal.ads.zzqm)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzqn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->o:Lcom/google/android/gms/internal/ads/zzqn;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->o:Lcom/google/android/gms/internal/ads/zzqn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqn;->d(Lcom/google/android/gms/internal/ads/zzqn;)V

    return-void
.end method
