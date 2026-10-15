###### Class pa.g (pa.g)
.class public final Lpa/g;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/g$j;,
        Lpa/g$l;,
        Lpa/g$h;,
        Lpa/g$i;,
        Lpa/g$k;
    }
.end annotation


# static fields
.field private static final N:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field F:J

.field G:J

.field H:Lpa/m;

.field final I:Lpa/m;

.field final J:Ljava/net/Socket;

.field final K:Lpa/j;

.field final L:Lpa/g$l;

.field final M:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final o:Z

.field final p:Lpa/g$j;

.field final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpa/i;",
            ">;"
        }
    .end annotation
.end field

.field final r:Ljava/lang/String;

.field s:I

.field t:I

.field private u:Z

.field private final v:Ljava/util/concurrent/ScheduledExecutorService;

.field private final w:Ljava/util/concurrent/ExecutorService;

.field final x:Lpa/l;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    const-class v0, Lpa/g;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp Http2Connection"

    .line 3
    invoke-static {v8, v1}, Lka/c;->G(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lpa/g;->N:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lpa/g$h;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lpa/g;->q:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lpa/g;->y:J

    .line 4
    iput-wide v2, v0, Lpa/g;->z:J

    .line 5
    iput-wide v2, v0, Lpa/g;->A:J

    .line 6
    iput-wide v2, v0, Lpa/g;->B:J

    .line 7
    iput-wide v2, v0, Lpa/g;->C:J

    .line 8
    iput-wide v2, v0, Lpa/g;->D:J

    .line 9
    iput-wide v2, v0, Lpa/g;->E:J

    .line 10
    iput-wide v2, v0, Lpa/g;->F:J

    .line 11
    new-instance v2, Lpa/m;

    invoke-direct {v2}, Lpa/m;-><init>()V

    iput-object v2, v0, Lpa/g;->H:Lpa/m;

    .line 12
    new-instance v2, Lpa/m;

    invoke-direct {v2}, Lpa/m;-><init>()V

    iput-object v2, v0, Lpa/g;->I:Lpa/m;

    .line 13
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lpa/g;->M:Ljava/util/Set;

    .line 14
    iget-object v3, v1, Lpa/g$h;->f:Lpa/l;

    iput-object v3, v0, Lpa/g;->x:Lpa/l;

    .line 15
    iget-boolean v3, v1, Lpa/g$h;->g:Z

    iput-boolean v3, v0, Lpa/g;->o:Z

    .line 16
    iget-object v4, v1, Lpa/g$h;->e:Lpa/g$j;

    iput-object v4, v0, Lpa/g;->p:Lpa/g$j;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_47

    const/4 v6, 0x1

    goto :goto_48

    :cond_47
    const/4 v6, 0x2

    .line 17
    :goto_48
    iput v6, v0, Lpa/g;->t:I

    if-eqz v3, :cond_4f

    add-int/2addr v6, v4

    .line 18
    iput v6, v0, Lpa/g;->t:I

    :cond_4f
    const/4 v4, 0x7

    if-eqz v3, :cond_59

    .line 19
    iget-object v6, v0, Lpa/g;->H:Lpa/m;

    const/high16 v7, 0x1000000

    invoke-virtual {v6, v4, v7}, Lpa/m;->i(II)Lpa/m;

    .line 20
    :cond_59
    iget-object v6, v1, Lpa/g$h;->b:Ljava/lang/String;

    iput-object v6, v0, Lpa/g;->r:Ljava/lang/String;

    .line 21
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v8, v14

    const-string v9, "OkHttp %s Writer"

    .line 22
    invoke-static {v9, v8}, Lka/c;->r(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lka/c;->G(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Lpa/g;->v:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    iget v8, v1, Lpa/g$h;->h:I

    if-eqz v8, :cond_88

    .line 24
    new-instance v8, Lpa/g$i;

    invoke-direct {v8, v0}, Lpa/g$i;-><init>(Lpa/g;)V

    iget v9, v1, Lpa/g$h;->h:I

    int-to-long v10, v9

    int-to-long v12, v9

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v9, v10

    move-wide v11, v12

    move-object v13, v15

    invoke-interface/range {v7 .. v13}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    :cond_88
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-wide/16 v19, 0x3c

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v14

    const-string v6, "OkHttp %s Push Observer"

    .line 26
    invoke-static {v6, v8}, Lka/c;->r(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lka/c;->G(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v23

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Lpa/g;->w:Ljava/util/concurrent/ExecutorService;

    const v5, 0xffff

    .line 27
    invoke-virtual {v2, v4, v5}, Lpa/m;->i(II)Lpa/m;

    const/4 v4, 0x5

    const/16 v5, 0x4000

    .line 28
    invoke-virtual {v2, v4, v5}, Lpa/m;->i(II)Lpa/m;

    .line 29
    invoke-virtual {v2}, Lpa/m;->d()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lpa/g;->G:J

    .line 30
    iget-object v2, v1, Lpa/g$h;->a:Ljava/net/Socket;

    iput-object v2, v0, Lpa/g;->J:Ljava/net/Socket;

    .line 31
    new-instance v2, Lpa/j;

    iget-object v4, v1, Lpa/g$h;->d:Lokio/d;

    invoke-direct {v2, v4, v3}, Lpa/j;-><init>(Lokio/d;Z)V

    iput-object v2, v0, Lpa/g;->K:Lpa/j;

    .line 32
    new-instance v2, Lpa/g$l;

    new-instance v4, Lpa/h;

    iget-object v1, v1, Lpa/g$h;->c:Lokio/e;

    invoke-direct {v4, v1, v3}, Lpa/h;-><init>(Lokio/e;Z)V

    invoke-direct {v2, v0, v4}, Lpa/g$l;-><init>(Lpa/g;Lpa/h;)V

    iput-object v2, v0, Lpa/g;->L:Lpa/g$l;

    return-void
.end method

.method static synthetic b(Lpa/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lpa/g;->n()V

    return-void
.end method

.method static synthetic c(Lpa/g;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lpa/g;->z:J

    return-wide v0
.end method

.method static synthetic d(Lpa/g;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lpa/g;->z:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lpa/g;->z:J

    return-wide v0
.end method

.method static synthetic e(Lpa/g;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lpa/g;->y:J

    return-wide v0
.end method

.method static synthetic f(Lpa/g;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lpa/g;->y:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lpa/g;->y:J

    return-wide v0
.end method

.method static synthetic g(Lpa/g;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lpa/g;->u:Z

    return p0
.end method

.method static synthetic h(Lpa/g;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lpa/g;->u:Z

    return p1
.end method

.method static synthetic i()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    sget-object v0, Lpa/g;->N:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic j(Lpa/g;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lpa/g;->v:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic k(Lpa/g;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lpa/g;->B:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lpa/g;->B:J

    return-wide v0
.end method

.method static synthetic l(Lpa/g;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lpa/g;->D:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lpa/g;->D:J

    return-wide v0
.end method

.method private n()V
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lpa/b;->q:Lpa/b;

    invoke-virtual {p0, v0, v0}, Lpa/g;->m(Lpa/b;Lpa/b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private r(ILjava/util/List;Z)Lpa/i;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;Z)",
            "Lpa/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 1
    iget-object v7, p0, Lpa/g;->K:Lpa/j;

    monitor-enter v7

    .line 2
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_76

    .line 3
    :try_start_7
    iget v0, p0, Lpa/g;->t:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_13

    .line 4
    sget-object v0, Lpa/b;->t:Lpa/b;

    invoke-virtual {p0, v0}, Lpa/g;->C(Lpa/b;)V

    .line 5
    :cond_13
    iget-boolean v0, p0, Lpa/g;->u:Z

    if-nez v0, :cond_6d

    .line 6
    iget v8, p0, Lpa/g;->t:I

    add-int/lit8 v0, v8, 0x2

    .line 7
    iput v0, p0, Lpa/g;->t:I

    .line 8
    new-instance v9, Lpa/i;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lpa/i;-><init>(ILpa/g;ZZLja/s;)V

    if-eqz p3, :cond_3a

    .line 9
    iget-wide v0, p0, Lpa/g;->G:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_3a

    iget-wide v0, v9, Lpa/i;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p3, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 p3, 0x1

    .line 10
    :goto_3b
    invoke-virtual {v9}, Lpa/i;->m()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 11
    iget-object v0, p0, Lpa/g;->q:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_73

    if-nez p1, :cond_53

    .line 13
    :try_start_4d
    iget-object v0, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {v0, v6, v8, p1, p2}, Lpa/j;->n(ZIILjava/util/List;)V

    goto :goto_5c

    .line 14
    :cond_53
    iget-boolean v0, p0, Lpa/g;->o:Z

    if-nez v0, :cond_65

    .line 15
    iget-object v0, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {v0, p1, v8, p2}, Lpa/j;->k(IILjava/util/List;)V

    .line 16
    :goto_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_76

    if-eqz p3, :cond_64

    .line 17
    iget-object p1, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {p1}, Lpa/j;->flush()V

    :cond_64
    return-object v9

    .line 18
    :cond_65
    :try_start_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_76

    .line 19
    :cond_6d
    :try_start_6d
    new-instance p1, Lpa/a;

    invoke-direct {p1}, Lpa/a;-><init>()V

    throw p1

    :catchall_73
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_73

    :try_start_75
    throw p1

    :catchall_76
    move-exception p1

    .line 21
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_76

    throw p1
.end method

.method private declared-synchronized u(Lka/b;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/g;->u:Z

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Lpa/g;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 3
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method A()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lpa/g;->B:J

    iget-wide v2, p0, Lpa/g;->A:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 3
    iput-wide v2, p0, Lpa/g;->A:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lpa/g;->E:J

    .line 5
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_30

    .line 6
    :try_start_1b
    iget-object v0, p0, Lpa/g;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lpa/g$c;

    const-string v2, "OkHttp %s ping"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lpa/g;->r:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lpa/g$c;-><init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1b .. :try_end_2f} :catch_2f

    :catch_2f
    return-void

    :catchall_30
    move-exception v0

    .line 7
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public C(Lpa/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/g;->K:Lpa/j;

    monitor-enter v0

    .line 2
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    .line 3
    :try_start_4
    iget-boolean v1, p0, Lpa/g;->u:Z

    if-eqz v1, :cond_b

    .line 4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 5
    :try_start_c
    iput-boolean v1, p0, Lpa/g;->u:Z

    .line 6
    iget v1, p0, Lpa/g;->s:I

    .line 7
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 8
    :try_start_11
    iget-object v2, p0, Lpa/g;->K:Lpa/j;

    sget-object v3, Lka/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lpa/j;->g(ILpa/b;[B)V

    .line 9
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    return-void

    :catchall_1a
    move-exception p1

    .line 10
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1

    :catchall_1d
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public E()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lpa/g;->F(Z)V

    return-void
.end method

.method F(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 1
    iget-object p1, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {p1}, Lpa/j;->c()V

    .line 2
    iget-object p1, p0, Lpa/g;->K:Lpa/j;

    iget-object v0, p0, Lpa/g;->H:Lpa/m;

    invoke-virtual {p1, v0}, Lpa/j;->m(Lpa/m;)V

    .line 3
    iget-object p1, p0, Lpa/g;->H:Lpa/m;

    invoke-virtual {p1}, Lpa/m;->d()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_21

    .line 4
    iget-object v1, p0, Lpa/g;->K:Lpa/j;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lpa/j;->o(IJ)V

    .line 5
    :cond_21
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lpa/g;->L:Lpa/g$l;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method declared-synchronized G(J)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-wide v0, p0, Lpa/g;->F:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lpa/g;->F:J

    .line 2
    iget-object p1, p0, Lpa/g;->H:Lpa/m;

    invoke-virtual {p1}, Lpa/m;->d()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1d

    const/4 p1, 0x0

    .line 3
    iget-wide v0, p0, Lpa/g;->F:J

    invoke-virtual {p0, p1, v0, v1}, Lpa/g;->L(IJ)V

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lpa/g;->F:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 5
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public H(IZLokio/c;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_d

    .line 1
    iget-object p4, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {p4, p2, p1, p3, v0}, Lpa/j;->d(ZILokio/c;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v3, p4, v1

    if-lez v3, :cond_67

    .line 2
    monitor-enter p0

    .line 3
    :goto_12
    :try_start_12
    iget-wide v3, p0, Lpa/g;->G:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_30

    .line 4
    iget-object v3, p0, Lpa/g;->q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    .line 6
    :cond_28
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_30} :catch_58
    .catchall {:try_start_12 .. :try_end_30} :catchall_56

    .line 7
    :cond_30
    :try_start_30
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 8
    iget-object v3, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {v3}, Lpa/j;->i()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    iget-wide v4, p0, Lpa/g;->G:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lpa/g;->G:J

    .line 10
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_56

    sub-long/2addr p4, v6

    .line 11
    iget-object v4, p0, Lpa/g;->K:Lpa/j;

    if-eqz p2, :cond_51

    cmp-long v5, p4, v1

    if-nez v5, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    :goto_52
    invoke-virtual {v4, v5, p1, p3, v3}, Lpa/j;->d(ZILokio/c;I)V

    goto :goto_d

    :catchall_56
    move-exception p1

    goto :goto_65

    .line 12
    :catch_58
    :try_start_58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 14
    :goto_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_56

    throw p1

    :cond_67
    return-void
.end method

.method I(ZII)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {v0, p1, p2, p3}, Lpa/j;->j(ZII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_9

    .line 2
    :catch_6
    invoke-direct {p0}, Lpa/g;->n()V

    :goto_9
    return-void
.end method

.method J(ILpa/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {v0, p1, p2}, Lpa/j;->l(ILpa/b;)V

    return-void
.end method

.method K(ILpa/b;)V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/g;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lpa/g$a;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lpa/g;->r:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lpa/g$a;-><init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILpa/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method L(IJ)V
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/g;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lpa/g$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lpa/g;->r:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lpa/g$b;-><init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 3
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lpa/b;->p:Lpa/b;

    sget-object v1, Lpa/b;->u:Lpa/b;

    invoke-virtual {p0, v0, v1}, Lpa/g;->m(Lpa/b;Lpa/b;)V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {v0}, Lpa/j;->flush()V

    return-void
.end method

.method m(Lpa/b;Lpa/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lpa/g;->C(Lpa/b;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    move-object p1, v0

    goto :goto_7

    :catch_6
    move-exception p1

    .line 2
    :goto_7
    monitor-enter p0

    .line 3
    :try_start_8
    iget-object v1, p0, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 4
    iget-object v0, p0, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lpa/i;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpa/i;

    .line 5
    iget-object v1, p0, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_5c

    if-eqz v0, :cond_3d

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2

    .line 8
    :try_start_32
    invoke-virtual {v3, p2}, Lpa/i;->f(Lpa/b;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v3

    if-eqz p1, :cond_3a

    move-object p1, v3

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 9
    :cond_3d
    :try_start_3d
    iget-object p2, p0, Lpa/g;->K:Lpa/j;

    invoke-virtual {p2}, Lpa/j;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p2

    if-nez p1, :cond_47

    move-object p1, p2

    .line 10
    :cond_47
    :goto_47
    :try_start_47
    iget-object p2, p0, Lpa/g;->J:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception p1

    .line 11
    :goto_4e
    iget-object p2, p0, Lpa/g;->v:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 12
    iget-object p2, p0, Lpa/g;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_5b

    return-void

    .line 13
    :cond_5b
    throw p1

    :catchall_5c
    move-exception p1

    .line 14
    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    goto :goto_60

    :goto_5f
    throw p1

    :goto_60
    goto :goto_5f
.end method

.method declared-synchronized o(I)Lpa/i;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lpa/g;->q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpa/i;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized p(J)Z
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/g;->u:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    .line 2
    :cond_8
    :try_start_8
    iget-wide v2, p0, Lpa/g;->B:J

    iget-wide v4, p0, Lpa/g;->A:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_18

    iget-wide v2, p0, Lpa/g;->E:J
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1b

    cmp-long v0, p1, v2

    if-ltz v0, :cond_18

    monitor-exit p0

    return v1

    :cond_18
    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized q()I
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lpa/g;->I:Lpa/m;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lpa/m;->e(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s(Ljava/util/List;Z)Lpa/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;Z)",
            "Lpa/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lpa/g;->r(ILjava/util/List;Z)Lpa/i;

    move-result-object p1

    return-object p1
.end method

.method t(ILokio/e;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v5, Lokio/c;

    invoke-direct {v5}, Lokio/c;-><init>()V

    int-to-long v0, p3

    .line 2
    invoke-interface {p2, v0, v1}, Lokio/e;->y3(J)V

    .line 3
    invoke-interface {p2, v5, v0, v1}, Lokio/u;->read(Lokio/c;J)J

    .line 4
    invoke-virtual {v5}, Lokio/c;->s()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_33

    .line 5
    new-instance p2, Lpa/g$f;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lpa/g;->r:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lpa/g$f;-><init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILokio/c;IZ)V

    invoke-direct {p0, p2}, Lpa/g;->u(Lka/b;)V

    return-void

    .line 6
    :cond_33
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/c;->s()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method v(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v7, Lpa/g$e;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lpa/g;->r:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lpa/g$e;-><init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-direct {p0, v7}, Lpa/g;->u(Lka/b;)V
    :try_end_1e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method w(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lpa/g;->M:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    sget-object p2, Lpa/b;->q:Lpa/b;

    invoke-virtual {p0, p1, p2}, Lpa/g;->K(ILpa/b;)V

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_14
    iget-object v0, p0, Lpa/g;->M:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3c

    .line 7
    :try_start_1e
    new-instance v0, Lpa/g$d;

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lpa/g;->r:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lpa/g$d;-><init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-direct {p0, v0}, Lpa/g;->u(Lka/b;)V
    :try_end_3b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1e .. :try_end_3b} :catch_3b

    :catch_3b
    return-void

    :catchall_3c
    move-exception p1

    .line 8
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method x(ILpa/b;)V
    .registers 10

    .line 1
    new-instance v6, Lpa/g$g;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lpa/g;->r:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lpa/g$g;-><init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILpa/b;)V

    invoke-direct {p0, v6}, Lpa/g;->u(Lka/b;)V

    return-void
.end method

.method y(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method declared-synchronized z(I)Lpa/i;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lpa/g;->q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpa/i;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class pa.g.a (pa.g$a)
.class Lpa/g$a;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g;->K(ILpa/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:I

.field final synthetic q:Lpa/b;

.field final synthetic r:Lpa/g;


# direct methods
.method varargs constructor <init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILpa/b;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lpa/g$a;->r:Lpa/g;

    iput p4, p0, Lpa/g$a;->p:I

    iput-object p5, p0, Lpa/g$a;->q:Lpa/b;

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/g$a;->r:Lpa/g;

    iget v1, p0, Lpa/g$a;->p:I

    iget-object v2, p0, Lpa/g$a;->q:Lpa/b;

    invoke-virtual {v0, v1, v2}, Lpa/g;->J(ILpa/b;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_f

    .line 2
    :catch_a
    iget-object v0, p0, Lpa/g$a;->r:Lpa/g;

    invoke-static {v0}, Lpa/g;->b(Lpa/g;)V

    :goto_f
    return-void
.end method

###### Class pa.g.b (pa.g$b)
.class Lpa/g$b;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g;->L(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:I

.field final synthetic q:J

.field final synthetic r:Lpa/g;


# direct methods
.method varargs constructor <init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7

    .line 1
    iput-object p1, p0, Lpa/g$b;->r:Lpa/g;

    iput p4, p0, Lpa/g$b;->p:I

    iput-wide p5, p0, Lpa/g$b;->q:J

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/g$b;->r:Lpa/g;

    iget-object v0, v0, Lpa/g;->K:Lpa/j;

    iget v1, p0, Lpa/g$b;->p:I

    iget-wide v2, p0, Lpa/g$b;->q:J

    invoke-virtual {v0, v1, v2, v3}, Lpa/j;->o(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_11

    .line 2
    :catch_c
    iget-object v0, p0, Lpa/g$b;->r:Lpa/g;

    invoke-static {v0}, Lpa/g;->b(Lpa/g;)V

    :goto_11
    return-void
.end method

###### Class pa.g.c (pa.g$c)
.class Lpa/g$c;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lpa/g;


# direct methods
.method varargs constructor <init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lpa/g$c;->p:Lpa/g;

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lpa/g$c;->p:Lpa/g;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Lpa/g;->I(ZII)V

    return-void
.end method

###### Class pa.g.d (pa.g$d)
.class Lpa/g$d;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g;->w(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:I

.field final synthetic q:Ljava/util/List;

.field final synthetic r:Lpa/g;


# direct methods
.method varargs constructor <init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lpa/g$d;->r:Lpa/g;

    iput p4, p0, Lpa/g$d;->p:I

    iput-object p5, p0, Lpa/g$d;->q:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lpa/g$d;->r:Lpa/g;

    iget-object v0, v0, Lpa/g;->x:Lpa/l;

    iget v1, p0, Lpa/g$d;->p:I

    iget-object v2, p0, Lpa/g$d;->q:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lpa/l;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2
    :try_start_e
    iget-object v0, p0, Lpa/g$d;->r:Lpa/g;

    iget-object v0, v0, Lpa/g;->K:Lpa/j;

    iget v1, p0, Lpa/g$d;->p:I

    sget-object v2, Lpa/b;->u:Lpa/b;

    invoke-virtual {v0, v1, v2}, Lpa/j;->l(ILpa/b;)V

    .line 3
    iget-object v0, p0, Lpa/g$d;->r:Lpa/g;

    monitor-enter v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_2e

    .line 4
    :try_start_1c
    iget-object v1, p0, Lpa/g$d;->r:Lpa/g;

    iget-object v1, v1, Lpa/g;->M:Ljava/util/Set;

    iget v2, p0, Lpa/g$d;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    goto :goto_2e

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    :goto_2e
    return-void
.end method

###### Class pa.g.e (pa.g$e)
.class Lpa/g$e;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g;->v(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:I

.field final synthetic q:Ljava/util/List;

.field final synthetic r:Z

.field final synthetic s:Lpa/g;


# direct methods
.method varargs constructor <init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7

    .line 1
    iput-object p1, p0, Lpa/g$e;->s:Lpa/g;

    iput p4, p0, Lpa/g$e;->p:I

    iput-object p5, p0, Lpa/g$e;->q:Ljava/util/List;

    iput-boolean p6, p0, Lpa/g$e;->r:Z

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 5

    .line 1
    iget-object v0, p0, Lpa/g$e;->s:Lpa/g;

    iget-object v0, v0, Lpa/g;->x:Lpa/l;

    iget v1, p0, Lpa/g$e;->p:I

    iget-object v2, p0, Lpa/g$e;->q:Ljava/util/List;

    iget-boolean v3, p0, Lpa/g$e;->r:Z

    invoke-interface {v0, v1, v2, v3}, Lpa/l;->b(ILjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    :try_start_10
    iget-object v1, p0, Lpa/g$e;->s:Lpa/g;

    iget-object v1, v1, Lpa/g;->K:Lpa/j;

    iget v2, p0, Lpa/g$e;->p:I

    sget-object v3, Lpa/b;->u:Lpa/b;

    invoke-virtual {v1, v2, v3}, Lpa/j;->l(ILpa/b;)V

    :cond_1b
    if-nez v0, :cond_21

    .line 3
    iget-boolean v0, p0, Lpa/g$e;->r:Z

    if-eqz v0, :cond_36

    .line 4
    :cond_21
    iget-object v0, p0, Lpa/g$e;->s:Lpa/g;

    monitor-enter v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_24} :catch_36

    .line 5
    :try_start_24
    iget-object v1, p0, Lpa/g$e;->s:Lpa/g;

    iget-object v1, v1, Lpa/g;->M:Ljava/util/Set;

    iget v2, p0, Lpa/g$e;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    :goto_36
    return-void
.end method

###### Class pa.g.f (pa.g$f)
.class Lpa/g$f;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g;->t(ILokio/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:I

.field final synthetic q:Lokio/c;

.field final synthetic r:I

.field final synthetic s:Z

.field final synthetic t:Lpa/g;


# direct methods
.method varargs constructor <init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILokio/c;IZ)V
    .registers 8

    .line 1
    iput-object p1, p0, Lpa/g$f;->t:Lpa/g;

    iput p4, p0, Lpa/g$f;->p:I

    iput-object p5, p0, Lpa/g$f;->q:Lokio/c;

    iput p6, p0, Lpa/g$f;->r:I

    iput-boolean p7, p0, Lpa/g$f;->s:Z

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/g$f;->t:Lpa/g;

    iget-object v0, v0, Lpa/g;->x:Lpa/l;

    iget v1, p0, Lpa/g$f;->p:I

    iget-object v2, p0, Lpa/g$f;->q:Lokio/c;

    iget v3, p0, Lpa/g$f;->r:I

    iget-boolean v4, p0, Lpa/g$f;->s:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lpa/l;->d(ILokio/e;IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v1, p0, Lpa/g$f;->t:Lpa/g;

    iget-object v1, v1, Lpa/g;->K:Lpa/j;

    iget v2, p0, Lpa/g$f;->p:I

    sget-object v3, Lpa/b;->u:Lpa/b;

    invoke-virtual {v1, v2, v3}, Lpa/j;->l(ILpa/b;)V

    :cond_1d
    if-nez v0, :cond_23

    .line 3
    iget-boolean v0, p0, Lpa/g$f;->s:Z

    if-eqz v0, :cond_38

    .line 4
    :cond_23
    iget-object v0, p0, Lpa/g$f;->t:Lpa/g;

    monitor-enter v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_38

    .line 5
    :try_start_26
    iget-object v1, p0, Lpa/g$f;->t:Lpa/g;

    iget-object v1, v1, Lpa/g;->M:Ljava/util/Set;

    iget v2, p0, Lpa/g$f;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    goto :goto_38

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    :goto_38
    return-void
.end method

###### Class pa.g.C0220g (pa.g$g)
.class Lpa/g$g;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g;->x(ILpa/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:I

.field final synthetic q:Lpa/b;

.field final synthetic r:Lpa/g;


# direct methods
.method varargs constructor <init>(Lpa/g;Ljava/lang/String;[Ljava/lang/Object;ILpa/b;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lpa/g$g;->r:Lpa/g;

    iput p4, p0, Lpa/g$g;->p:I

    iput-object p5, p0, Lpa/g$g;->q:Lpa/b;

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lpa/g$g;->r:Lpa/g;

    iget-object v0, v0, Lpa/g;->x:Lpa/l;

    iget v1, p0, Lpa/g$g;->p:I

    iget-object v2, p0, Lpa/g$g;->q:Lpa/b;

    invoke-interface {v0, v1, v2}, Lpa/l;->c(ILpa/b;)V

    .line 2
    iget-object v0, p0, Lpa/g$g;->r:Lpa/g;

    monitor-enter v0

    .line 3
    :try_start_e
    iget-object v1, p0, Lpa/g$g;->r:Lpa/g;

    iget-object v1, v1, Lpa/g;->M:Ljava/util/Set;

    iget v2, p0, Lpa/g$g;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v1
.end method

###### Class pa.g.h (pa.g$h)
.class public Lpa/g$h;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lokio/e;

.field d:Lokio/d;

.field e:Lpa/g$j;

.field f:Lpa/l;

.field g:Z

.field h:I


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lpa/g$j;->a:Lpa/g$j;

    iput-object v0, p0, Lpa/g$h;->e:Lpa/g$j;

    .line 3
    sget-object v0, Lpa/l;->a:Lpa/l;

    iput-object v0, p0, Lpa/g$h;->f:Lpa/l;

    .line 4
    iput-boolean p1, p0, Lpa/g$h;->g:Z

    return-void
.end method


# virtual methods
.method public a()Lpa/g;
    .registers 2

    .line 1
    new-instance v0, Lpa/g;

    invoke-direct {v0, p0}, Lpa/g;-><init>(Lpa/g$h;)V

    return-object v0
.end method

.method public b(Lpa/g$j;)Lpa/g$h;
    .registers 2

    .line 1
    iput-object p1, p0, Lpa/g$h;->e:Lpa/g$j;

    return-object p0
.end method

.method public c(I)Lpa/g$h;
    .registers 2

    .line 1
    iput p1, p0, Lpa/g$h;->h:I

    return-object p0
.end method

.method public d(Ljava/net/Socket;Ljava/lang/String;Lokio/e;Lokio/d;)Lpa/g$h;
    .registers 5

    .line 1
    iput-object p1, p0, Lpa/g$h;->a:Ljava/net/Socket;

    .line 2
    iput-object p2, p0, Lpa/g$h;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lpa/g$h;->c:Lokio/e;

    .line 4
    iput-object p4, p0, Lpa/g$h;->d:Lokio/d;

    return-object p0
.end method

###### Class pa.g.i (pa.g$i)
.class final Lpa/g$i;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation


# instance fields
.field final synthetic p:Lpa/g;


# direct methods
.method constructor <init>(Lpa/g;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lpa/g$i;->p:Lpa/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lpa/g;->r:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping"

    invoke-direct {p0, p1, v0}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 9

    .line 1
    iget-object v0, p0, Lpa/g$i;->p:Lpa/g;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lpa/g$i;->p:Lpa/g;

    invoke-static {v1}, Lpa/g;->c(Lpa/g;)J

    move-result-wide v1

    iget-object v3, p0, Lpa/g$i;->p:Lpa/g;

    invoke-static {v3}, Lpa/g;->e(Lpa/g;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_17

    const/4 v1, 0x1

    goto :goto_1d

    .line 3
    :cond_17
    iget-object v1, p0, Lpa/g$i;->p:Lpa/g;

    invoke-static {v1}, Lpa/g;->f(Lpa/g;)J

    const/4 v1, 0x0

    .line 4
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2c

    if-eqz v1, :cond_26

    .line 5
    iget-object v0, p0, Lpa/g$i;->p:Lpa/g;

    invoke-static {v0}, Lpa/g;->b(Lpa/g;)V

    goto :goto_2b

    .line 6
    :cond_26
    iget-object v0, p0, Lpa/g$i;->p:Lpa/g;

    invoke-virtual {v0, v6, v5, v6}, Lpa/g;->I(ZII)V

    :goto_2b
    return-void

    :catchall_2c
    move-exception v1

    .line 7
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

###### Class pa.g.j (pa.g$j)
.class public abstract Lpa/g$j;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation


# static fields
.field public static final a:Lpa/g$j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lpa/g$j$a;

    invoke-direct {v0}, Lpa/g$j$a;-><init>()V

    sput-object v0, Lpa/g$j;->a:Lpa/g$j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lpa/g;)V
    .registers 2

    return-void
.end method

.method public abstract c(Lpa/i;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class pa.g.j.a (pa.g$j$a)
.class Lpa/g$j$a;
.super Lpa/g$j;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/g$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lpa/g$j;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lpa/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lpa/b;->t:Lpa/b;

    invoke-virtual {p1, v0}, Lpa/i;->f(Lpa/b;)V

    return-void
.end method

###### Class pa.g.k (pa.g$k)
.class final Lpa/g$k;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "k"
.end annotation


# instance fields
.field final p:Z

.field final q:I

.field final r:I

.field final synthetic s:Lpa/g;


# direct methods
.method constructor <init>(Lpa/g;ZII)V
    .registers 7

    .line 1
    iput-object p1, p0, Lpa/g$k;->s:Lpa/g;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lpa/g;->r:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean p2, p0, Lpa/g$k;->p:Z

    .line 4
    iput p3, p0, Lpa/g$k;->q:I

    .line 5
    iput p4, p0, Lpa/g$k;->r:I

    return-void
.end method


# virtual methods
.method public k()V
    .registers 5

    .line 1
    iget-object v0, p0, Lpa/g$k;->s:Lpa/g;

    iget-boolean v1, p0, Lpa/g$k;->p:Z

    iget v2, p0, Lpa/g$k;->q:I

    iget v3, p0, Lpa/g$k;->r:I

    invoke-virtual {v0, v1, v2, v3}, Lpa/g;->I(ZII)V

    return-void
.end method

###### Class pa.g.l (pa.g$l)
.class Lpa/g$l;
.super Lka/b;
.source "Http2Connection.java"

# interfaces
.implements Lpa/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final p:Lpa/h;

.field final synthetic q:Lpa/g;


# direct methods
.method constructor <init>(Lpa/g;Lpa/h;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lpa/g$l;->q:Lpa/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lpa/g;->r:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lpa/g$l;->p:Lpa/h;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b(ZIILjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {p3, p2}, Lpa/g;->y(I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 2
    iget-object p3, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {p3, p2, p4, p1}, Lpa/g;->v(ILjava/util/List;Z)V

    return-void

    .line 3
    :cond_e
    iget-object p3, p0, Lpa/g$l;->q:Lpa/g;

    monitor-enter p3

    .line 4
    :try_start_11
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v0, p2}, Lpa/g;->o(I)Lpa/i;

    move-result-object v0

    if-nez v0, :cond_71

    .line 5
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-static {v0}, Lpa/g;->g(Lpa/g;)Z

    move-result v0

    if-eqz v0, :cond_23

    monitor-exit p3

    return-void

    .line 6
    :cond_23
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    iget v1, v0, Lpa/g;->s:I

    if-gt p2, v1, :cond_2b

    monitor-exit p3

    return-void

    .line 7
    :cond_2b
    rem-int/lit8 v1, p2, 0x2

    iget v0, v0, Lpa/g;->t:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-ne v1, v0, :cond_35

    monitor-exit p3

    return-void

    .line 8
    :cond_35
    invoke-static {p4}, Lka/c;->H(Ljava/util/List;)Lja/s;

    move-result-object v8

    .line 9
    new-instance p4, Lpa/i;

    iget-object v5, p0, Lpa/g$l;->q:Lpa/g;

    const/4 v6, 0x0

    move-object v3, p4

    move v4, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lpa/i;-><init>(ILpa/g;ZZLja/s;)V

    .line 10
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    iput p2, p1, Lpa/g;->s:I

    .line 11
    iget-object p1, p1, Lpa/g;->q:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lpa/g;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lpa/g$l$a;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v4, v4, Lpa/g;->r:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {v0, p0, v1, v2, p4}, Lpa/g$l$a;-><init>(Lpa/g$l;Ljava/lang/String;[Ljava/lang/Object;Lpa/i;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 13
    monitor-exit p3

    return-void

    .line 14
    :cond_71
    monitor-exit p3
    :try_end_72
    .catchall {:try_start_11 .. :try_end_72} :catchall_7b

    .line 15
    invoke-virtual {v0, p4}, Lpa/i;->q(Ljava/util/List;)V

    if-eqz p1, :cond_7a

    .line 16
    invoke-virtual {v0}, Lpa/i;->p()V

    :cond_7a
    return-void

    :catchall_7b
    move-exception p1

    .line 17
    :try_start_7c
    monitor-exit p3
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method public c(IJ)V
    .registers 7

    if-nez p1, :cond_14

    .line 1
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    iget-wide v1, p1, Lpa/g;->G:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lpa/g;->G:J

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    goto :goto_25

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1

    .line 5
    :cond_14
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v0, p1}, Lpa/g;->o(I)Lpa/i;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 6
    monitor-enter p1

    .line 7
    :try_start_1d
    invoke-virtual {p1, p2, p3}, Lpa/i;->c(J)V

    .line 8
    monitor-exit p1

    goto :goto_25

    :catchall_22
    move-exception p2

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p2

    :cond_25
    :goto_25
    return-void
.end method

.method public d(ILpa/b;Lokio/f;)V
    .registers 7

    .line 1
    invoke-virtual {p3}, Lokio/f;->J()I

    .line 2
    iget-object p2, p0, Lpa/g$l;->q:Lpa/g;

    monitor-enter p2

    .line 3
    :try_start_6
    iget-object p3, p0, Lpa/g$l;->q:Lpa/g;

    iget-object p3, p3, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v0, v0, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lpa/i;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lpa/i;

    .line 4
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpa/g;->h(Lpa/g;Z)Z

    .line 5
    monitor-exit p2
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_49

    .line 6
    array-length p2, p3

    const/4 v0, 0x0

    :goto_27
    if-ge v0, p2, :cond_48

    aget-object v1, p3, v0

    .line 7
    invoke-virtual {v1}, Lpa/i;->i()I

    move-result v2

    if-le v2, p1, :cond_45

    invoke-virtual {v1}, Lpa/i;->l()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 8
    sget-object v2, Lpa/b;->t:Lpa/b;

    invoke-virtual {v1, v2}, Lpa/i;->r(Lpa/b;)V

    .line 9
    iget-object v2, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v1}, Lpa/i;->i()I

    move-result v1

    invoke-virtual {v2, v1}, Lpa/g;->z(I)Lpa/i;

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_48
    return-void

    :catchall_49
    move-exception p1

    .line 10
    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    goto :goto_4d

    :goto_4c
    throw p1

    :goto_4d
    goto :goto_4c
.end method

.method public e(ZLpa/m;)V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-static {v0}, Lpa/g;->j(Lpa/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v7, Lpa/g$l$b;

    const-string v3, "OkHttp %s ACK Settings"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v2, v2, Lpa/g;->r:Ljava/lang/String;

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lpa/g$l$b;-><init>(Lpa/g$l;Ljava/lang/String;[Ljava/lang/Object;ZLpa/m;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public f(ZILokio/e;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v0, p2}, Lpa/g;->y(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v0, p2, p3, p4, p1}, Lpa/g;->t(ILokio/e;IZ)V

    return-void

    .line 3
    :cond_e
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v0, p2}, Lpa/g;->o(I)Lpa/i;

    move-result-object v0

    if-nez v0, :cond_27

    .line 4
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    sget-object v0, Lpa/b;->q:Lpa/b;

    invoke-virtual {p1, p2, v0}, Lpa/g;->K(ILpa/b;)V

    .line 5
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lpa/g;->G(J)V

    .line 6
    invoke-interface {p3, v0, v1}, Lokio/e;->skip(J)V

    return-void

    .line 7
    :cond_27
    invoke-virtual {v0, p3, p4}, Lpa/i;->o(Lokio/e;I)V

    if-eqz p1, :cond_2f

    .line 8
    invoke-virtual {v0}, Lpa/i;->p()V

    :cond_2f
    return-void
.end method

.method public g(ZII)V
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    .line 1
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    monitor-enter p1

    if-ne p2, v0, :cond_10

    .line 2
    :try_start_8
    iget-object p2, p0, Lpa/g$l;->q:Lpa/g;

    invoke-static {p2}, Lpa/g;->d(Lpa/g;)J

    goto :goto_26

    :catchall_e
    move-exception p2

    goto :goto_28

    :cond_10
    const/4 p3, 0x2

    if-ne p2, p3, :cond_19

    .line 3
    iget-object p2, p0, Lpa/g$l;->q:Lpa/g;

    invoke-static {p2}, Lpa/g;->k(Lpa/g;)J

    goto :goto_26

    :cond_19
    const/4 p3, 0x3

    if-ne p2, p3, :cond_26

    .line 4
    iget-object p2, p0, Lpa/g$l;->q:Lpa/g;

    invoke-static {p2}, Lpa/g;->l(Lpa/g;)J

    .line 5
    iget-object p2, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :cond_26
    :goto_26
    monitor-exit p1

    goto :goto_3a

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_e

    throw p2

    .line 7
    :cond_2a
    :try_start_2a
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    invoke-static {p1}, Lpa/g;->j(Lpa/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v1, Lpa/g$k;

    iget-object v2, p0, Lpa/g$l;->q:Lpa/g;

    invoke-direct {v1, v2, v0, p2, p3}, Lpa/g$k;-><init>(Lpa/g;ZII)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2a .. :try_end_3a} :catch_3a

    :catch_3a
    :goto_3a
    return-void
.end method

.method public h(IIIZ)V
    .registers 5

    return-void
.end method

.method public i(ILpa/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v0, p1}, Lpa/g;->y(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v0, p1, p2}, Lpa/g;->x(ILpa/b;)V

    return-void

    .line 3
    :cond_e
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v0, p1}, Lpa/g;->z(I)Lpa/i;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 4
    invoke-virtual {p1, p2}, Lpa/i;->r(Lpa/b;)V

    :cond_19
    return-void
.end method

.method public j(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {p1, p2, p3}, Lpa/g;->w(ILjava/util/List;)V

    return-void
.end method

.method protected k()V
    .registers 5

    .line 1
    sget-object v0, Lpa/b;->r:Lpa/b;

    .line 2
    :try_start_2
    iget-object v1, p0, Lpa/g$l;->p:Lpa/h;

    invoke-virtual {v1, p0}, Lpa/h;->d(Lpa/h$b;)V

    .line 3
    :goto_7
    iget-object v1, p0, Lpa/g$l;->p:Lpa/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lpa/h;->c(ZLpa/h$b;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    .line 4
    :cond_11
    sget-object v1, Lpa/b;->p:Lpa/b;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1e
    .catchall {:try_start_2 .. :try_end_13} :catchall_1b

    .line 5
    :try_start_13
    sget-object v0, Lpa/b;->u:Lpa/b;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_15} :catch_1f
    .catchall {:try_start_13 .. :try_end_15} :catchall_2c

    .line 6
    :try_start_15
    iget-object v2, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v2, v1, v0}, Lpa/g;->m(Lpa/b;Lpa/b;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_26

    goto :goto_26

    :catchall_1b
    move-exception v2

    move-object v1, v0

    goto :goto_2d

    :catch_1e
    move-object v1, v0

    .line 7
    :catch_1f
    :try_start_1f
    sget-object v0, Lpa/b;->q:Lpa/b;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_2c

    .line 8
    :try_start_21
    iget-object v1, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v1, v0, v0}, Lpa/g;->m(Lpa/b;Lpa/b;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_26

    .line 9
    :catch_26
    :goto_26
    iget-object v0, p0, Lpa/g$l;->p:Lpa/h;

    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_2c
    move-exception v2

    .line 10
    :goto_2d
    :try_start_2d
    iget-object v3, p0, Lpa/g$l;->q:Lpa/g;

    invoke-virtual {v3, v1, v0}, Lpa/g;->m(Lpa/b;Lpa/b;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_32

    .line 11
    :catch_32
    iget-object v0, p0, Lpa/g$l;->p:Lpa/h;

    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    goto :goto_39

    :goto_38
    throw v2

    :goto_39
    goto :goto_38
.end method

.method l(ZLpa/m;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v0, v0, Lpa/g;->K:Lpa/j;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Lpa/g$l;->q:Lpa/g;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_96

    .line 3
    :try_start_8
    iget-object v2, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v2, v2, Lpa/g;->I:Lpa/m;

    invoke-virtual {v2}, Lpa/m;->d()I

    move-result v2

    if-eqz p1, :cond_19

    .line 4
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    iget-object p1, p1, Lpa/g;->I:Lpa/m;

    invoke-virtual {p1}, Lpa/m;->a()V

    .line 5
    :cond_19
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    iget-object p1, p1, Lpa/g;->I:Lpa/m;

    invoke-virtual {p1, p2}, Lpa/m;->h(Lpa/m;)V

    .line 6
    iget-object p1, p0, Lpa/g$l;->q:Lpa/g;

    iget-object p1, p1, Lpa/g;->I:Lpa/m;

    invoke-virtual {p1}, Lpa/m;->d()I

    move-result p1

    const/4 p2, -0x1

    const/4 v3, 0x0

    if-eq p1, p2, :cond_54

    if-eq p1, v2, :cond_54

    sub-int/2addr p1, v2

    int-to-long p1, p1

    .line 7
    iget-object v2, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v2, v2, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 8
    iget-object v2, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v2, v2, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v3, v3, Lpa/g;->q:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lpa/i;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lpa/i;

    move-object v3, v2

    goto :goto_56

    :cond_54
    const-wide/16 p1, 0x0

    .line 9
    :cond_56
    :goto_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_93

    .line 10
    :try_start_57
    iget-object v1, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v2, v1, Lpa/g;->K:Lpa/j;

    iget-object v1, v1, Lpa/g;->I:Lpa/m;

    invoke-virtual {v2, v1}, Lpa/j;->b(Lpa/m;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_61
    .catchall {:try_start_57 .. :try_end_60} :catchall_96

    goto :goto_66

    .line 11
    :catch_61
    :try_start_61
    iget-object v1, p0, Lpa/g$l;->q:Lpa/g;

    invoke-static {v1}, Lpa/g;->b(Lpa/g;)V

    .line 12
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_96

    const/4 v0, 0x0

    if-eqz v3, :cond_7b

    .line 13
    array-length v1, v3

    const/4 v2, 0x0

    :goto_6c
    if-ge v2, v1, :cond_7b

    aget-object v4, v3, v2

    .line 14
    monitor-enter v4

    .line 15
    :try_start_71
    invoke-virtual {v4, p1, p2}, Lpa/i;->c(J)V

    .line 16
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :catchall_78
    move-exception p1

    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_78

    throw p1

    .line 17
    :cond_7b
    invoke-static {}, Lpa/g;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lpa/g$l$c;

    const-string v1, "OkHttp %s settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lpa/g$l;->q:Lpa/g;

    iget-object v3, v3, Lpa/g;->r:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-direct {p2, p0, v1, v2}, Lpa/g$l$c;-><init>(Lpa/g$l;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_93
    move-exception p1

    .line 18
    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw p1

    :catchall_96
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_96

    goto :goto_9a

    :goto_99
    throw p1

    :goto_9a
    goto :goto_99
.end method

###### Class pa.g.l.a (pa.g$l$a)
.class Lpa/g$l$a;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g$l;->b(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lpa/i;

.field final synthetic q:Lpa/g$l;


# direct methods
.method varargs constructor <init>(Lpa/g$l;Ljava/lang/String;[Ljava/lang/Object;Lpa/i;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lpa/g$l$a;->q:Lpa/g$l;

    iput-object p4, p0, Lpa/g$l$a;->p:Lpa/i;

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/g$l$a;->q:Lpa/g$l;

    iget-object v0, v0, Lpa/g$l;->q:Lpa/g;

    iget-object v0, v0, Lpa/g;->p:Lpa/g$j;

    iget-object v1, p0, Lpa/g$l$a;->p:Lpa/i;

    invoke-virtual {v0, v1}, Lpa/g$j;->c(Lpa/i;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_33

    :catch_c
    move-exception v0

    .line 2
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpa/g$l$a;->q:Lpa/g$l;

    iget-object v4, v4, Lpa/g$l;->q:Lpa/g;

    iget-object v4, v4, Lpa/g;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lqa/g;->s(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :try_start_2c
    iget-object v0, p0, Lpa/g$l$a;->p:Lpa/i;

    sget-object v1, Lpa/b;->q:Lpa/b;

    invoke-virtual {v0, v1}, Lpa/i;->f(Lpa/b;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_33

    :catch_33
    :goto_33
    return-void
.end method

###### Class pa.g.l.b (pa.g$l$b)
.class Lpa/g$l$b;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g$l;->e(ZLpa/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Z

.field final synthetic q:Lpa/m;

.field final synthetic r:Lpa/g$l;


# direct methods
.method varargs constructor <init>(Lpa/g$l;Ljava/lang/String;[Ljava/lang/Object;ZLpa/m;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lpa/g$l$b;->r:Lpa/g$l;

    iput-boolean p4, p0, Lpa/g$l$b;->p:Z

    iput-object p5, p0, Lpa/g$l$b;->q:Lpa/m;

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lpa/g$l$b;->r:Lpa/g$l;

    iget-boolean v1, p0, Lpa/g$l$b;->p:Z

    iget-object v2, p0, Lpa/g$l$b;->q:Lpa/m;

    invoke-virtual {v0, v1, v2}, Lpa/g$l;->l(ZLpa/m;)V

    return-void
.end method

###### Class pa.g.l.c (pa.g$l$c)
.class Lpa/g$l$c;
.super Lka/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/g$l;->l(ZLpa/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lpa/g$l;


# direct methods
.method varargs constructor <init>(Lpa/g$l;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lpa/g$l$c;->p:Lpa/g$l;

    invoke-direct {p0, p2, p3}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 3

    .line 1
    iget-object v0, p0, Lpa/g$l$c;->p:Lpa/g$l;

    iget-object v0, v0, Lpa/g$l;->q:Lpa/g;

    iget-object v1, v0, Lpa/g;->p:Lpa/g$j;

    invoke-virtual {v1, v0}, Lpa/g$j;->b(Lpa/g;)V

    return-void
.end method
