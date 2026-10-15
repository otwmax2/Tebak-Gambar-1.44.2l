###### Class com.google.android.gms.internal.ads.zzql (com.google.android.gms.internal.ads.zzql)
.class final Lcom/google/android/gms/internal/ads/zzql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final g:Ljava/util/ArrayDeque;

.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;

.field private final e:Lcom/google/android/gms/internal/ads/zzdo;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzql;->g:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzql;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdm;->a:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdo;-><init>(Lcom/google/android/gms/internal/ads/zzdm;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->a:Landroid/media/MediaCodec;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzql;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->e:Lcom/google/android/gms/internal/ads/zzdo;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzql;Landroid/os/Message;)V
    .registers 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    const/4 v2, 0x1

    if-eq v0, v2, :cond_22

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1c

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzql;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzqi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5d

    .line 5
    :cond_1c
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzql;->e:Lcom/google/android/gms/internal/ads/zzdo;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdo;->e()Z

    goto :goto_5d

    .line 7
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqk;

    .line 8
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqk;->a:I

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzqk;->d:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzqk;->e:J

    iget v8, p1, Lcom/google/android/gms/internal/ads/zzqk;->f:I

    :try_start_2e
    sget-object v0, Lcom/google/android/gms/internal/ads/zzql;->h:Ljava/lang/Object;

    .line 9
    monitor-enter v0
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_3c

    :try_start_31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzql;->a:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    .line 10
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 11
    monitor-exit v0

    goto :goto_5c

    :catchall_39
    move-exception v2

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v2
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzql;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzqi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5c

    .line 14
    :cond_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqk;

    .line 15
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqk;->a:I

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzqk;->c:I

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzqk;->e:J

    iget v8, p1, Lcom/google/android/gms/internal/ads/zzqk;->f:I

    :try_start_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzql;->a:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    .line 16
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_55} :catch_56

    goto :goto_5c

    :catch_56
    move-exception v0

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzql;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzqi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_5c
    move-object v1, p1

    :goto_5d
    if-eqz v1, :cond_6a

    .line 19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzql;->g:Ljava/util/ArrayDeque;

    .line 20
    monitor-enter p0

    .line 21
    :try_start_62
    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22
    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    throw p1

    :cond_6a
    return-void
.end method

.method private static g()Lcom/google/android/gms/internal/ads/zzqk;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzql;->g:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqk;

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzqk;-><init>()V

    monitor-exit v0

    return-object v1

    .line 4
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqk;

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private final h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_c

    return-void

    .line 2
    :cond_c
    throw v0
.end method

.method private static i([B[B)[B
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_f

    array-length v0, p0

    array-length v1, p1

    if-ge v1, v0, :cond_a

    goto :goto_f

    :cond_a
    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 2
    :cond_f
    :goto_f
    array-length p1, p0

    .line 3
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static j([I[I)[I
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_f

    array-length v0, p0

    array-length v1, p1

    if-ge v1, v0, :cond_a

    goto :goto_f

    :cond_a
    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 2
    :cond_f
    :goto_f
    array-length p1, p0

    .line 3
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzql;->f:Z

    if-eqz v0, :cond_33

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->c:Landroid/os/Handler;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_6} :catch_25

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    :try_start_a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->e:Lcom/google/android/gms/internal/ads/zzdo;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdo;->c()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->c:Landroid/os/Handler;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_14} :catch_25

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 6
    :try_start_18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->e:Lcom/google/android/gms/internal/ads/zzdo;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdo;->a()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception v0

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_33
    return-void
.end method

.method public final c(IIIJI)V
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->h()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzql;->g()Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object p2

    const/4 v2, 0x0

    move-object v0, p2

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqk;->a(IIIJI)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->c:Landroid/os/Handler;

    .line 4
    sget p3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final d(IILcom/google/android/gms/internal/ads/zzgo;JI)V
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->h()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzql;->g()Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v1, p1

    move-wide v4, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqk;->a(IIIJI)V

    .line 4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzqk;->d:Landroid/media/MediaCodec$CryptoInfo;

    iget p4, p3, Lcom/google/android/gms/internal/ads/zzgo;->f:I

    .line 5
    iput p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzgo;->d:[I

    .line 6
    iget-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 7
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzql;->j([I[I)[I

    move-result-object p4

    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzgo;->e:[I

    .line 8
    iget-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 9
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzql;->j([I[I)[I

    move-result-object p4

    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzgo;->b:[B

    .line 10
    iget-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzql;->i([B[B)[B

    move-result-object p4

    .line 11
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzgo;->a:[B

    .line 13
    iget-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzql;->i([B[B)[B

    move-result-object p4

    .line 14
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget p4, p3, Lcom/google/android/gms/internal/ads/zzgo;->c:I

    .line 16
    iput p4, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 17
    sget p4, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 p5, 0x18

    if-lt p4, p5, :cond_5a

    .line 18
    new-instance p4, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget p5, p3, Lcom/google/android/gms/internal/ads/zzgo;->g:I

    iget p3, p3, Lcom/google/android/gms/internal/ads/zzgo;->h:I

    invoke-direct {p4, p5, p3}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 19
    invoke-virtual {p1, p4}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_5a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->c:Landroid/os/Handler;

    const/4 p3, 0x1

    .line 20
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final e()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzql;->f:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->b:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzql;->f:Z

    return-void
.end method

.method public final f()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzql;->f:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzql;->b:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzqj;-><init>(Lcom/google/android/gms/internal/ads/zzql;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzql;->f:Z

    :cond_19
    return-void
.end method
